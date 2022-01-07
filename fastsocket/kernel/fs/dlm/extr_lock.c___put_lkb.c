
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct dlm_ls {TYPE_1__* ls_lkbtbl; } ;
struct dlm_lkb {int lkb_id; scalar_t__ lkb_lvbptr; int lkb_idtbl_list; int lkb_ref; } ;
struct TYPE_2__ {int lock; } ;


 int detach_lkb (struct dlm_lkb*) ;
 int dlm_free_lkb (struct dlm_lkb*) ;
 int dlm_free_lvb (scalar_t__) ;
 scalar_t__ is_master_copy (struct dlm_lkb*) ;
 int kill_lkb ;
 scalar_t__ kref_put (int *,int ) ;
 int list_del (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int __put_lkb(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
 uint16_t bucket = (lkb->lkb_id >> 16);

 write_lock(&ls->ls_lkbtbl[bucket].lock);
 if (kref_put(&lkb->lkb_ref, kill_lkb)) {
  list_del(&lkb->lkb_idtbl_list);
  write_unlock(&ls->ls_lkbtbl[bucket].lock);

  detach_lkb(lkb);


  if (lkb->lkb_lvbptr && is_master_copy(lkb))
   dlm_free_lvb(lkb->lkb_lvbptr);
  dlm_free_lkb(lkb);
  return 1;
 } else {
  write_unlock(&ls->ls_lkbtbl[bucket].lock);
  return 0;
 }
}
