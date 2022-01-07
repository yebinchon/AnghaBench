
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct o2quo_state {scalar_t__ qs_heartbeating; int qs_lock; int qs_hb_bm; } ;


 int clear_bit (int ,int ) ;
 int mlog (int ,char*,int ,scalar_t__) ;
 int mlog_bug_on_msg (int,char*,int ,...) ;
 int o2quo_clear_hold (struct o2quo_state*,int ) ;
 struct o2quo_state o2quo_state ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int ) ;

void o2quo_hb_down(u8 node)
{
 struct o2quo_state *qs = &o2quo_state;

 spin_lock(&qs->qs_lock);

 qs->qs_heartbeating--;
 mlog_bug_on_msg(qs->qs_heartbeating < 0,
   "node %u, %d heartbeating\n",
   node, qs->qs_heartbeating);
 mlog_bug_on_msg(!test_bit(node, qs->qs_hb_bm), "node %u\n", node);
 clear_bit(node, qs->qs_hb_bm);

 mlog(0, "node %u, %d total\n", node, qs->qs_heartbeating);

 o2quo_clear_hold(qs, node);

 spin_unlock(&qs->qs_lock);
}
