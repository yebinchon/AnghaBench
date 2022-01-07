
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_filtered (char*,char*) ;

__attribute__((used)) static void
gdb_kod_display (char *arg)
{
  printf_filtered ("%s", arg);
}
