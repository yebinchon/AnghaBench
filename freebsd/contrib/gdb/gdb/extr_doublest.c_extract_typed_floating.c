
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
 int extract_floating_by_length (void const*,int ) ;
 int floatformat_to_doublest (int *,void const*,int *) ;
 int gdb_assert (int) ;

DOUBLEST
extract_typed_floating (const void *addr, const struct type *type)
{
  DOUBLEST retval;

  gdb_assert (TYPE_CODE (type) == TYPE_CODE_FLT);

  if (TYPE_FLOATFORMAT (type) == ((void*)0))


    return extract_floating_by_length (addr, TYPE_LENGTH (type));

  floatformat_to_doublest (TYPE_FLOATFORMAT (type), addr, &retval);
  return retval;
}
