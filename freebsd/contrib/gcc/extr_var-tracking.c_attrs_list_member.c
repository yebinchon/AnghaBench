
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* attrs ;
struct TYPE_4__ {scalar_t__ decl; scalar_t__ offset; struct TYPE_4__* next; } ;
typedef scalar_t__ HOST_WIDE_INT ;



__attribute__((used)) static attrs
attrs_list_member (attrs list, tree decl, HOST_WIDE_INT offset)
{
  for (; list; list = list->next)
    if (list->decl == decl && list->offset == offset)
      return list;
  return ((void*)0);
}
