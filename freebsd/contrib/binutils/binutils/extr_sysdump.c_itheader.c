
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,int) ;

__attribute__((used)) static void
itheader (char *name, int code)
{
  printf ("\n%s 0x%02x\n", name, code);
}
