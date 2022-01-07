
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int indx; unsigned int size; void* localp; void* unsignedp; } ;
struct ieee_type_stack {struct ieee_type_stack* next; TYPE_1__ type; } ;
struct ieee_handle {struct ieee_type_stack* type_stack; } ;
typedef void* bfd_boolean ;


 void* TRUE ;
 int memset (struct ieee_type_stack*,int ,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
ieee_push_type (struct ieee_handle *info, unsigned int indx,
  unsigned int size, bfd_boolean unsignedp, bfd_boolean localp)
{
  struct ieee_type_stack *ts;

  ts = (struct ieee_type_stack *) xmalloc (sizeof *ts);
  memset (ts, 0, sizeof *ts);

  ts->type.indx = indx;
  ts->type.size = size;
  ts->type.unsignedp = unsignedp;
  ts->type.localp = localp;

  ts->next = info->type_stack;
  info->type_stack = ts;

  return TRUE;
}
