
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,char*,char*,char*) ;

void
print_legend(void)
{
 (void) printf("%5s %8s %-28s %s\n", "Count", "nsec", "Lock", "Caller");
}
