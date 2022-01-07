
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __add_preferred_console (char*,int,char*,int *) ;

int add_preferred_console(char *name, int idx, char *options)
{
 return __add_preferred_console(name, idx, options, ((void*)0));
}
