
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* varinfo_t ;
typedef int tree ;
struct TYPE_4__ {unsigned int id; char const* name; int directly_dereferenced; int is_artificial_var; int is_heap_var; int is_special_var; int is_unknown_size_var; int has_union; int * collapsed_to; int * next; void* oldsolution; void* solution; int decl; } ;


 void* BITMAP_ALLOC (int *) ;
 int oldpta_obstack ;
 TYPE_1__* pool_alloc (int ) ;
 int pta_obstack ;
 int variable_info_pool ;

__attribute__((used)) static varinfo_t
new_var_info (tree t, unsigned int id, const char *name)
{
  varinfo_t ret = pool_alloc (variable_info_pool);

  ret->id = id;
  ret->name = name;
  ret->decl = t;
  ret->directly_dereferenced = 0;
  ret->is_artificial_var = 0;
  ret->is_heap_var = 0;
  ret->is_special_var = 0;
  ret->is_unknown_size_var = 0;
  ret->has_union = 0;
  ret->solution = BITMAP_ALLOC (&pta_obstack);
  ret->oldsolution = BITMAP_ALLOC (&oldpta_obstack);
  ret->next = ((void*)0);
  ret->collapsed_to = ((void*)0);
  return ret;
}
