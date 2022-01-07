
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int growstackblock (int) ;
 char* stackblock () ;

__attribute__((used)) static char *
growstrstackblock(int n, int min)
{
 growstackblock(min);
 return stackblock() + n;
}
