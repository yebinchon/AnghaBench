
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ get_identifier (char*) ;
 scalar_t__ small_ident1 ;
 scalar_t__ small_ident2 ;

__attribute__((used)) static void
init_idents (void)
{
  if (small_ident1 == 0)
    {
      small_ident1 = get_identifier ("small");
      small_ident2 = get_identifier ("__small__");
    }
}
