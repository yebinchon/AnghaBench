
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* growstrstackblock (int,int) ;
 char* stackblock () ;

char *
makestrspace(int min, char *p)
{
 int len;

 len = p - stackblock();
 return (growstrstackblock(len, min));
}
