
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* growstrstackblock (int,int ) ;
 int stackblocksize () ;

char *
growstackstr(void)
{
 int len;

 len = stackblocksize();
 return (growstrstackblock(len, 0));
}
