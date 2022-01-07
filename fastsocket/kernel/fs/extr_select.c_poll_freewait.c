
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_wqueues {int inline_index; struct poll_table_entry* inline_entries; struct poll_table_page* table; } ;
struct poll_table_page {struct poll_table_page* next; struct poll_table_entry* entries; struct poll_table_entry* entry; } ;
struct poll_table_entry {int dummy; } ;


 int free_page (unsigned long) ;
 int free_poll_entry (struct poll_table_entry*) ;

void poll_freewait(struct poll_wqueues *pwq)
{
 struct poll_table_page * p = pwq->table;
 int i;
 for (i = 0; i < pwq->inline_index; i++)
  free_poll_entry(pwq->inline_entries + i);
 while (p) {
  struct poll_table_entry * entry;
  struct poll_table_page *old;

  entry = p->entry;
  do {
   entry--;
   free_poll_entry(entry);
  } while (entry > p->entries);
  old = p;
  p = p->next;
  free_page((unsigned long) old);
 }
}
