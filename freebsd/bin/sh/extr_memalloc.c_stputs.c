
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* stputbin (char const*,int ,char*) ;
 int strlen (char const*) ;

char *
stputs(const char *data, char *p)
{
 return (stputbin(data, strlen(data), p));
}
