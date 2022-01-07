
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int link_poll_work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void dsa_link_poll_timer(unsigned long _dst)
{
 struct dsa_switch_tree *dst = (void *)_dst;

 schedule_work(&dst->link_poll_work);
}
