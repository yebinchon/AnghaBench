
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_hash_entry {struct file_hash_entry* next; int const* start_dir; } ;
typedef int cpp_dir ;



__attribute__((used)) static struct file_hash_entry *
search_cache (struct file_hash_entry *head, const cpp_dir *start_dir)
{
  while (head && head->start_dir != start_dir)
    head = head->next;

  return head;
}
