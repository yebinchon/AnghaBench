
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int str ;


 int localtime (int *) ;
 int strcpy (char*,char*) ;
 size_t strftime (char*,int,char*,int ) ;
 int time (int *) ;

char *
rfc822date(void)
{
 static char str[50];
 size_t error;
 time_t now;

 now = time(((void*)0));
 error = strftime(str, sizeof(str), "%a, %d %b %Y %T %z",
         localtime(&now));
 if (error == 0)
  strcpy(str, "(date fail)");
 return (str);
}
