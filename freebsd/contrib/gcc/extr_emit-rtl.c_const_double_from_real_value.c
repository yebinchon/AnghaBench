
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_8__ {int rv; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef int REAL_VALUE_TYPE ;


 int CONST_DOUBLE ;
 int PUT_MODE (TYPE_2__*,int) ;
 TYPE_2__* lookup_const_double (TYPE_2__*) ;
 TYPE_2__* rtx_alloc (int ) ;

rtx
const_double_from_real_value (REAL_VALUE_TYPE value, enum machine_mode mode)
{
  rtx real = rtx_alloc (CONST_DOUBLE);
  PUT_MODE (real, mode);

  real->u.rv = value;

  return lookup_const_double (real);
}
