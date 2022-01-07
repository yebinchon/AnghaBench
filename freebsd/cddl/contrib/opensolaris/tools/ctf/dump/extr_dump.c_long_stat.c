
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;


 int printf (char*,char const*,int ) ;

__attribute__((used)) static void
long_stat(const char *name, ulong_t value)
{
 (void) printf("  %-36s= %lu\n", name, value);
}
