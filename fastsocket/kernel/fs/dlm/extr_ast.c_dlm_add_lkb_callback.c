
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_id; TYPE_2__* lkb_callbacks; TYPE_1__* lkb_resource; } ;
struct TYPE_4__ {int flags; int mode; int sb_status; int sb_flags; scalar_t__ seq; } ;
struct TYPE_3__ {struct dlm_ls* res_ls; } ;


 int DLM_CALLBACKS_SIZE ;
 int DLM_CB_BAST ;
 int DLM_LOCK_PR ;
 int dlm_dump_lkb_callbacks (struct dlm_lkb*) ;
 int log_debug (struct dlm_ls*,char*,int ,unsigned long long,int,unsigned long long,int) ;
 int log_error (struct dlm_ls*,char*,int ,unsigned long long,int,int,int,int) ;

int dlm_add_lkb_callback(struct dlm_lkb *lkb, uint32_t flags, int mode,
    int status, uint32_t sbflags, uint64_t seq)
{
 struct dlm_ls *ls = lkb->lkb_resource->res_ls;
 uint64_t prev_seq;
 int prev_mode;
 int i;

 for (i = 0; i < DLM_CALLBACKS_SIZE; i++) {
  if (lkb->lkb_callbacks[i].seq)
   continue;
  if ((i > 0) && (flags & DLM_CB_BAST) &&
      (lkb->lkb_callbacks[i-1].flags & DLM_CB_BAST)) {

   prev_seq = lkb->lkb_callbacks[i-1].seq;
   prev_mode = lkb->lkb_callbacks[i-1].mode;

   if ((prev_mode == mode) ||
       (prev_mode > mode && prev_mode > DLM_LOCK_PR)) {

    log_debug(ls, "skip %x add bast %llu mode %d "
       "for bast %llu mode %d",
       lkb->lkb_id,
       (unsigned long long)seq,
       mode,
       (unsigned long long)prev_seq,
       prev_mode);
    return 0;
   }
  }

  lkb->lkb_callbacks[i].seq = seq;
  lkb->lkb_callbacks[i].flags = flags;
  lkb->lkb_callbacks[i].mode = mode;
  lkb->lkb_callbacks[i].sb_status = status;
  lkb->lkb_callbacks[i].sb_flags = (sbflags & 0x000000FF);
  break;
 }

 if (i == DLM_CALLBACKS_SIZE) {
  log_error(ls, "no callbacks %x %llu flags %x mode %d sb %d %x",
     lkb->lkb_id, (unsigned long long)seq,
     flags, mode, status, sbflags);
  dlm_dump_lkb_callbacks(lkb);
  return -1;
 }

 return 0;
}
