
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct file_hash_entry {int dummy; } ;
struct TYPE_4__ {scalar_t__ file_hash_entries_used; scalar_t__ file_hash_entries_allocated; struct file_hash_entry* file_hash_entries; } ;
typedef TYPE_1__ cpp_reader ;


 int allocate_file_hash_entries (TYPE_1__*) ;

__attribute__((used)) static struct file_hash_entry *
new_file_hash_entry (cpp_reader *pfile)
{
  if (pfile->file_hash_entries_used == pfile->file_hash_entries_allocated)
    allocate_file_hash_entries (pfile);

  return &pfile->file_hash_entries[pfile->file_hash_entries_used++];
}
