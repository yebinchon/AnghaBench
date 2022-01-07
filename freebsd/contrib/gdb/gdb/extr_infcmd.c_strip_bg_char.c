
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int
strip_bg_char (char **args)
{
  char *p = ((void*)0);

  p = strchr (*args, '&');

  if (p)
    {
      if (p == (*args + strlen (*args) - 1))
 {
   if (strlen (*args) > 1)
     {
       do
  p--;
       while (*p == ' ' || *p == '\t');
       *(p + 1) = '\0';
     }
   else
     *args = 0;
   return 1;
 }
    }
  return 0;
}
