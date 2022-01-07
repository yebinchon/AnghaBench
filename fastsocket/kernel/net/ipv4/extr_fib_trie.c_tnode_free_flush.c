
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {struct tnode* tnode_free; } ;


 int PAGE_SIZE ;
 int sync_pages ;
 int synchronize_rcu () ;
 int tnode_free (struct tnode*) ;
 struct tnode* tnode_free_head ;
 int tnode_free_size ;

__attribute__((used)) static void tnode_free_flush(void)
{
 struct tnode *tn;

 while ((tn = tnode_free_head)) {
  tnode_free_head = tn->tnode_free;
  tn->tnode_free = ((void*)0);
  tnode_free(tn);
 }

 if (tnode_free_size >= PAGE_SIZE * sync_pages) {
  tnode_free_size = 0;
  synchronize_rcu();
 }
}
