
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_filtered (char*,...) ;

__attribute__((used)) static void
print_percentage (int portion, int total)
{
  if (total == 0)
    printf_filtered ("(not applicable)\n");
  else
    printf_filtered ("%3d%%\n", portion * 100 / total);
}
