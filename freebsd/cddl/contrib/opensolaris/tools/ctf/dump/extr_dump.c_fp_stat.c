
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,float) ;

__attribute__((used)) static void
fp_stat(const char *name, float value)
{
 (void) printf("  %-36s= %.2f\n", name, value);
}
