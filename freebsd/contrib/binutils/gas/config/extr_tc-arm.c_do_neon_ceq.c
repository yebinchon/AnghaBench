
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int N_IF_32 ;
 int neon_compare (int ,int ,int ) ;

__attribute__((used)) static void
do_neon_ceq (void)
{
  neon_compare (N_IF_32, N_IF_32, FALSE);
}
