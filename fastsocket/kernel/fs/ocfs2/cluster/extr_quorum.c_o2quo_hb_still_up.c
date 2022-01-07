
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct o2quo_state {int qs_pending; int qs_lock; } ;


 int mlog (int ,char*,int ) ;
 int o2quo_clear_hold (struct o2quo_state*,int ) ;
 struct o2quo_state o2quo_state ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void o2quo_hb_still_up(u8 node)
{
 struct o2quo_state *qs = &o2quo_state;

 spin_lock(&qs->qs_lock);

 mlog(0, "node %u\n", node);

 qs->qs_pending = 1;
 o2quo_clear_hold(qs, node);

 spin_unlock(&qs->qs_lock);
}
