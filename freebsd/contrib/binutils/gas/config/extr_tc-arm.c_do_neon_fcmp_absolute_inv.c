
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_neon_fcmp_absolute () ;
 int neon_exchange_operands () ;

__attribute__((used)) static void
do_neon_fcmp_absolute_inv (void)
{
  neon_exchange_operands ();
  do_neon_fcmp_absolute ();
}
