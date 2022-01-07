
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* attrs ;
struct TYPE_6__ {int loc; int offset; int decl; struct TYPE_6__* next; } ;


 int attrs_list_insert (TYPE_1__**,int ,int ,int ) ;
 int attrs_list_member (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
attrs_list_union (attrs *dstp, attrs src)
{
  for (; src; src = src->next)
    {
      if (!attrs_list_member (*dstp, src->decl, src->offset))
 attrs_list_insert (dstp, src->decl, src->offset, src->loc);
    }
}
