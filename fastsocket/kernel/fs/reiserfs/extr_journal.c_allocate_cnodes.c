
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_journal_cnode {struct reiserfs_journal_cnode* next; struct reiserfs_journal_cnode* prev; } ;


 int memset (struct reiserfs_journal_cnode*,int ,int) ;
 struct reiserfs_journal_cnode* vmalloc (int) ;

__attribute__((used)) static struct reiserfs_journal_cnode *allocate_cnodes(int num_cnodes)
{
 struct reiserfs_journal_cnode *head;
 int i;
 if (num_cnodes <= 0) {
  return ((void*)0);
 }
 head = vmalloc(num_cnodes * sizeof(struct reiserfs_journal_cnode));
 if (!head) {
  return ((void*)0);
 }
 memset(head, 0, num_cnodes * sizeof(struct reiserfs_journal_cnode));
 head[0].prev = ((void*)0);
 head[0].next = head + 1;
 for (i = 1; i < num_cnodes; i++) {
  head[i].prev = head + (i - 1);
  head[i].next = head + (i + 1);
 }
 head[num_cnodes - 1].next = ((void*)0);
 return head;
}
