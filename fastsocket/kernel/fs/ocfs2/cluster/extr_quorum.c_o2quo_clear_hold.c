
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct o2quo_state {scalar_t__ qs_holds; int qs_work; scalar_t__ qs_pending; int qs_hold_bm; int qs_lock; } ;


 int assert_spin_locked (int *) ;
 int mlog (int ,char*,int ,scalar_t__) ;
 int mlog_bug_on_msg (int,char*,int ,scalar_t__) ;
 int schedule_work (int *) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;

__attribute__((used)) static void o2quo_clear_hold(struct o2quo_state *qs, u8 node)
{
 assert_spin_locked(&qs->qs_lock);

 if (test_and_clear_bit(node, qs->qs_hold_bm)) {
  mlog(0, "node %u, %d total\n", node, qs->qs_holds - 1);
  if (--qs->qs_holds == 0) {
   if (qs->qs_pending) {
    qs->qs_pending = 0;
    schedule_work(&qs->qs_work);
   }
  }
  mlog_bug_on_msg(qs->qs_holds < 0, "node %u, holds %d\n",
    node, qs->qs_holds);
 }
}
