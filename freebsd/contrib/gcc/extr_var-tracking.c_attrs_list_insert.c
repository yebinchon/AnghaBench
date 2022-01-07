
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
typedef TYPE_1__* attrs ;
struct TYPE_4__ {struct TYPE_4__* next; int offset; int decl; int loc; } ;
typedef int HOST_WIDE_INT ;


 int attrs_pool ;
 TYPE_1__* pool_alloc (int ) ;

__attribute__((used)) static void
attrs_list_insert (attrs *listp, tree decl, HOST_WIDE_INT offset, rtx loc)
{
  attrs list;

  list = pool_alloc (attrs_pool);
  list->loc = loc;
  list->decl = decl;
  list->offset = offset;
  list->next = *listp;
  *listp = list;
}
