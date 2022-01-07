
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {int link_list; } ;
struct bearer {int cong_links; } ;


 int list_move_tail (int *,int *) ;

__attribute__((used)) static void tipc_bearer_schedule_unlocked(struct bearer *b_ptr, struct link *l_ptr)
{
 list_move_tail(&l_ptr->link_list, &b_ptr->cong_links);
}
