
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int decimal128 ;
struct TYPE_5__ {scalar_t__ sig; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int decimal128ToString (int *,char*) ;
 int real_from_string3 (TYPE_1__*,char*,int) ;

__attribute__((used)) static void
decimal_to_binary (REAL_VALUE_TYPE *to, const REAL_VALUE_TYPE *from,
     enum machine_mode mode)
{
  char string[256];
  decimal128 *d128;
  d128 = (decimal128 *) from->sig;

  decimal128ToString (d128, string);
  real_from_string3 (to, string, mode);
}
