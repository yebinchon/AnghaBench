
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdloop (int ) ;
 int popfile () ;
 int setinputfile (char const*,int) ;

void
readcmdfile(const char *name)
{
 setinputfile(name, 1);
 cmdloop(0);
 popfile();
}
