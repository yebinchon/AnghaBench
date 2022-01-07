
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getcharacter () ;
 int * getenv (char*) ;
 int printf (char*) ;

void _NonAppStop( void )
{
  if (getenv("_IN_NETWARE_BASH_") == ((void*)0)) {
    printf("\r\n<Press any key to close screen> ");
    getcharacter();
  }
}
