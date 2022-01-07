
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_wait {int b_list; } ;


 int kfree (struct nlm_wait*) ;
 int list_del (int *) ;

void nlmclnt_finish_block(struct nlm_wait *block)
{
 if (block == ((void*)0))
  return;
 list_del(&block->b_list);
 kfree(block);
}
