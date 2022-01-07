
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;


 int CLIP_CHECK_INTERVAL ;
 int HZ ;
 int __neigh_for_each_release (TYPE_1__*,int ) ;
 TYPE_1__ clip_tbl ;
 int idle_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int neigh_check_cb ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void idle_timer_check(unsigned long dummy)
{
 write_lock(&clip_tbl.lock);
 __neigh_for_each_release(&clip_tbl, neigh_check_cb);
 mod_timer(&idle_timer, jiffies + CLIP_CHECK_INTERVAL * HZ);
 write_unlock(&clip_tbl.lock);
}
