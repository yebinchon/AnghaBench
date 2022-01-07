
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VAR_GLOBAL ;
 int Var_Value (char*,int ,char**) ;
 int fopen (char const*,char*) ;
 int getpid () ;
 int trfile ;
 int trpid ;
 int trwd ;

void
Trace_Init(const char *pathname)
{
 char *p1;
 if (pathname != ((void*)0)) {
  trpid = getpid();
  trwd = Var_Value(".CURDIR", VAR_GLOBAL, &p1);

  trfile = fopen(pathname, "a");
 }
}
