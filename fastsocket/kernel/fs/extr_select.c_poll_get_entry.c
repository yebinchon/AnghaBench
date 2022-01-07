
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_wqueues {scalar_t__ inline_index; struct poll_table_page* table; int error; struct poll_table_entry* inline_entries; } ;
struct poll_table_page {int entry; struct poll_table_page* next; int entries; } ;
struct poll_table_entry {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ N_INLINE_POLL_ENTRIES ;
 scalar_t__ POLL_TABLE_FULL (struct poll_table_page*) ;
 scalar_t__ __get_free_page (int ) ;

__attribute__((used)) static struct poll_table_entry *poll_get_entry(struct poll_wqueues *p)
{
 struct poll_table_page *table = p->table;

 if (p->inline_index < N_INLINE_POLL_ENTRIES)
  return p->inline_entries + p->inline_index++;

 if (!table || POLL_TABLE_FULL(table)) {
  struct poll_table_page *new_table;

  new_table = (struct poll_table_page *) __get_free_page(GFP_KERNEL);
  if (!new_table) {
   p->error = -ENOMEM;
   return ((void*)0);
  }
  new_table->entry = new_table->entries;
  new_table->next = table;
  p->table = new_table;
  table = new_table;
 }

 return table->entry++;
}
