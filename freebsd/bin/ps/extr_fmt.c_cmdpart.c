
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
cmdpart(char *arg0)
{
 char *cp;

 return ((cp = strrchr(arg0, '/')) != ((void*)0) ? cp + 1 : arg0);
}
