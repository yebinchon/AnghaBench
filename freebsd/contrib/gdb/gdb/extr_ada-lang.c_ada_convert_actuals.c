
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef int CORE_ADDR ;


 int TYPE_FIELD_TYPE (int ,int) ;
 int TYPE_NFIELDS (int ) ;
 int VALUE_TYPE (struct value*) ;
 struct value* convert_actual (struct value*,int ,int *) ;

void
ada_convert_actuals (struct value *func, int nargs, struct value *args[],
       CORE_ADDR *sp)
{
  int i;

  if (TYPE_NFIELDS (VALUE_TYPE (func)) == 0
      || nargs != TYPE_NFIELDS (VALUE_TYPE (func)))
    return;

  for (i = 0; i < nargs; i += 1)
    args[i] =
      convert_actual (args[i], TYPE_FIELD_TYPE (VALUE_TYPE (func), i), sp);
}
