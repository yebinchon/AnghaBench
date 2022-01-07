
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct seq_file {int dummy; } ;
struct TYPE_4__ {int mode; } ;
struct dlm_lkb {int lkb_flags; int lkb_last_bast_time; int lkb_timestamp; int lkb_lvbseq; int lkb_wait_type; TYPE_2__ lkb_last_bast; int lkb_rqmode; int lkb_grmode; int lkb_status; int lkb_exflags; int lkb_ownpid; int lkb_remid; int lkb_nodeid; int lkb_id; TYPE_1__* lkb_ua; } ;
struct TYPE_3__ {scalar_t__ xid; } ;


 int DLM_IFL_USER ;
 scalar_t__ ktime_to_ns (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,unsigned long long,int ,int,int ,int ,int ,int ,int,int ,int ,unsigned long long,unsigned long long) ;

__attribute__((used)) static int print_format3_lock(struct seq_file *s, struct dlm_lkb *lkb,
         int rsb_lookup)
{
 u64 xid = 0;
 int rv;

 if (lkb->lkb_flags & DLM_IFL_USER) {
  if (lkb->lkb_ua)
   xid = lkb->lkb_ua->xid;
 }

 rv = seq_printf(s, "lkb %x %d %x %u %llu %x %x %d %d %d %d %d %d %u %llu %llu\n",
   lkb->lkb_id,
   lkb->lkb_nodeid,
   lkb->lkb_remid,
   lkb->lkb_ownpid,
   (unsigned long long)xid,
   lkb->lkb_exflags,
   lkb->lkb_flags,
   lkb->lkb_status,
   lkb->lkb_grmode,
   lkb->lkb_rqmode,
   lkb->lkb_last_bast.mode,
   rsb_lookup,
   lkb->lkb_wait_type,
   lkb->lkb_lvbseq,
   (unsigned long long)ktime_to_ns(lkb->lkb_timestamp),
   (unsigned long long)ktime_to_ns(lkb->lkb_last_bast_time));
 return rv;
}
