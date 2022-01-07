
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {char const* main_filename; struct bincl_file* bincl_stack; int * file_types; } ;
struct bincl_file {size_t file; char const* name; int file_types; struct bincl_file* next_stack; } ;



__attribute__((used)) static const char *
pop_bincl (struct stab_handle *info)
{
  struct bincl_file *o;

  o = info->bincl_stack;
  if (o == ((void*)0))
    return info->main_filename;
  info->bincl_stack = o->next_stack;

  o->file_types = info->file_types[o->file];

  if (info->bincl_stack == ((void*)0))
    return info->main_filename;
  return info->bincl_stack->name;
}
