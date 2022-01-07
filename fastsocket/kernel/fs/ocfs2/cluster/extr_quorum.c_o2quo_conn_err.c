
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct o2quo_state {scalar_t__ qs_connected; int qs_lock; int qs_hb_bm; int qs_conn_bm; } ;


 int clear_bit (int ,int ) ;
 int mlog (int ,char*,int ,scalar_t__) ;
 int mlog_bug_on_msg (int,char*,int ,scalar_t__) ;
 int o2quo_set_hold (struct o2quo_state*,int ) ;
 struct o2quo_state o2quo_state ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int ) ;

void o2quo_conn_err(u8 node)
{
 struct o2quo_state *qs = &o2quo_state;

 spin_lock(&qs->qs_lock);

 if (test_bit(node, qs->qs_conn_bm)) {
  qs->qs_connected--;
  mlog_bug_on_msg(qs->qs_connected < 0,
    "node %u, connected %d\n",
    node, qs->qs_connected);

  clear_bit(node, qs->qs_conn_bm);
 }

 mlog(0, "node %u, %d total\n", node, qs->qs_connected);

 if (test_bit(node, qs->qs_hb_bm))
  o2quo_set_hold(qs, node);

 spin_unlock(&qs->qs_lock);
}
