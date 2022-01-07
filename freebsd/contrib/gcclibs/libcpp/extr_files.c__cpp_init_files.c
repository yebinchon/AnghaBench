
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nonexistent_file_ob; void* nonexistent_file_hash; void* dir_hash; void* file_hash; } ;
typedef TYPE_1__ cpp_reader ;


 int _obstack_begin (int *,int ,int ,void* (*) (long),void (*) (void*)) ;
 int allocate_file_hash_entries (TYPE_1__*) ;
 int file_hash_eq ;
 int file_hash_hash ;
 scalar_t__ free ;
 void* htab_create_alloc (int,int ,int ,int *,int ,scalar_t__) ;
 int htab_hash_string ;
 int nonexistent_file_hash_eq ;
 int xcalloc ;
 scalar_t__ xmalloc ;

void
_cpp_init_files (cpp_reader *pfile)
{
  pfile->file_hash = htab_create_alloc (127, file_hash_hash, file_hash_eq,
     ((void*)0), xcalloc, free);
  pfile->dir_hash = htab_create_alloc (127, file_hash_hash, file_hash_eq,
     ((void*)0), xcalloc, free);
  allocate_file_hash_entries (pfile);
  pfile->nonexistent_file_hash = htab_create_alloc (127, htab_hash_string,
          nonexistent_file_hash_eq,
          ((void*)0), xcalloc, free);
  _obstack_begin (&pfile->nonexistent_file_ob, 0, 0,
    (void *(*) (long)) xmalloc,
    (void (*) (void *)) free);
}
