
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSHORTOPTS ;
 int error (char*,int) ;
 int* optletter ;
 int setoptionbyindex (int,int) ;

__attribute__((used)) static void
setoption(int flag, int val)
{
 int i;

 for (i = 0; i < NSHORTOPTS; i++)
  if (optletter[i] == flag) {
   setoptionbyindex(i, val);
   return;
  }
 error("Illegal option -%c", flag);
}
