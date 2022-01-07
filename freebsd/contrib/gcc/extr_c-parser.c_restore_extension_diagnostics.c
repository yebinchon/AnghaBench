
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_iso ;
 int pedantic ;
 int warn_pointer_arith ;
 int warn_traditional ;

__attribute__((used)) static inline void
restore_extension_diagnostics (int flags)
{
  pedantic = flags & 1;
  warn_pointer_arith = (flags >> 1) & 1;
  warn_traditional = (flags >> 2) & 1;
  flag_iso = (flags >> 3) & 1;
}
