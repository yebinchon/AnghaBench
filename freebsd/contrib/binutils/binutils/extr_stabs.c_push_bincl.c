
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_types {int dummy; } ;
struct stab_handle {int files; struct stab_types** file_types; struct bincl_file* bincl_stack; struct bincl_file* bincl_list; } ;
struct bincl_file {char const* name; int file; int * file_types; int hash; struct bincl_file* next_stack; struct bincl_file* next; } ;
typedef int bfd_vma ;


 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (struct stab_types**,int) ;

__attribute__((used)) static void
push_bincl (struct stab_handle *info, const char *name, bfd_vma hash)
{
  struct bincl_file *n;

  n = (struct bincl_file *) xmalloc (sizeof *n);
  n->next = info->bincl_list;
  n->next_stack = info->bincl_stack;
  n->name = name;
  n->hash = hash;
  n->file = info->files;
  n->file_types = ((void*)0);
  info->bincl_list = n;
  info->bincl_stack = n;

  ++info->files;
  info->file_types = ((struct stab_types **)
        xrealloc (info->file_types,
    (info->files
     * sizeof *info->file_types)));
  info->file_types[n->file] = ((void*)0);
}
