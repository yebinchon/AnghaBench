
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objc_method {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int gdb_assert (int) ;
 unsigned long read_objc_methlist_nmethods (scalar_t__) ;
 int read_objc_method (scalar_t__,struct objc_method*) ;

__attribute__((used)) static void
read_objc_methlist_method (CORE_ADDR addr, unsigned long num,
      struct objc_method *method)
{
  gdb_assert (num < read_objc_methlist_nmethods (addr));
  read_objc_method (addr + 8 + (12 * num), method);
}
