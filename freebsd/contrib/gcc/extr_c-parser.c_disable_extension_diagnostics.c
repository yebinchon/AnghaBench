
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_iso ;
 int pedantic ;
 int warn_pointer_arith ;
 int warn_traditional ;

__attribute__((used)) static inline int
disable_extension_diagnostics (void)
{
  int ret = (pedantic
      | (warn_pointer_arith << 1)
      | (warn_traditional << 2)
      | (flag_iso << 3));
  pedantic = 0;
  warn_pointer_arith = 0;
  warn_traditional = 0;
  flag_iso = 0;
  return ret;
}
