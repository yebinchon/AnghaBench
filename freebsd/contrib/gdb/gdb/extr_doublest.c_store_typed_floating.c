
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int DOUBLEST ;


 scalar_t__ TYPE_CODE (struct type const*) ;
 scalar_t__ TYPE_CODE_FLT ;
 int * TYPE_FLOATFORMAT (struct type const*) ;
 int TYPE_LENGTH (struct type const*) ;
 int floatformat_from_doublest (int *,int *,void*) ;
 int gdb_assert (int) ;
 int memset (void*,int ,int ) ;
 int store_floating_by_length (void*,int ,int ) ;

void
store_typed_floating (void *addr, const struct type *type, DOUBLEST val)
{
  gdb_assert (TYPE_CODE (type) == TYPE_CODE_FLT);
  memset (addr, 0, TYPE_LENGTH (type));

  if (TYPE_FLOATFORMAT (type) == ((void*)0))


    store_floating_by_length (addr, TYPE_LENGTH (type), val);
  else
    floatformat_from_doublest (TYPE_FLOATFORMAT (type), &val, addr);
}
