
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_push {int * stored; struct type_push* next; } ;


 int * current_type ;
 struct type_push* tp_top ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
push_current_type (void)
{
  struct type_push *tpnew;
  tpnew = (struct type_push *) xmalloc (sizeof (struct type_push));
  tpnew->next = tp_top;
  tpnew->stored = current_type;
  current_type = ((void*)0);
  tp_top = tpnew;
}
