
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_name_type_hash_entry {struct ieee_name_type* types; } ;
struct TYPE_4__ {int localp; int unsignedp; int size; int indx; } ;
struct ieee_name_type {TYPE_2__ type; } ;
struct ieee_handle {TYPE_1__* type_stack; int typedefs; } ;
typedef int bfd_boolean ;
struct TYPE_3__ {TYPE_2__ type; } ;


 int FALSE ;
 int TRUE ;
 int assert (int ) ;
 struct ieee_name_type_hash_entry* ieee_name_type_hash_lookup (int *,char const*,int ,int ) ;
 int ieee_push_type (struct ieee_handle*,int ,int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
ieee_typedef_type (void *p, const char *name)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_name_type_hash_entry *h;
  struct ieee_name_type *nt;

  h = ieee_name_type_hash_lookup (&info->typedefs, name, FALSE, FALSE);




  assert (h != ((void*)0));




  nt = h->types;
  if (! ieee_push_type (info, nt->type.indx, nt->type.size,
   nt->type.unsignedp, nt->type.localp))
    return FALSE;


  info->type_stack->type = nt->type;

  return TRUE;
}
