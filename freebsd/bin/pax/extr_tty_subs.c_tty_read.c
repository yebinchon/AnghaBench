
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fgets (char*,int,int *) ;
 char* strchr (char*,char) ;
 int * ttyinf ;

int
tty_read(char *str, int len)
{
 char *pt;

 if ((--len <= 0) || (ttyinf == ((void*)0)) || (fgets(str,len,ttyinf) == ((void*)0)))
  return(-1);
 *(str + len) = '\0';




 if ((pt = strchr(str, '\n')) != ((void*)0))
  *pt = '\0';
 return(0);
}
