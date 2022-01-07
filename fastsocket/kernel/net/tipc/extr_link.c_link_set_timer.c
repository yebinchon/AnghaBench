
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link {int timer; } ;


 int k_start_timer (int *,int ) ;

__attribute__((used)) static void link_set_timer(struct link *l_ptr, u32 time)
{
 k_start_timer(&l_ptr->timer, time);
}
