
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SmiAccess ;


 scalar_t__ SMI_ACCESS_READ_ONLY ;
 scalar_t__ SMI_ACCESS_READ_WRITE ;
 int printf (char*) ;

__attribute__((used)) static void
print_access(SmiAccess a)
{
 if (a == SMI_ACCESS_READ_ONLY)
  printf(" GET");
 else if (a == SMI_ACCESS_READ_WRITE)
  printf(" GET SET");
}
