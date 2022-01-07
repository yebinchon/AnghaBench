
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CYGWIN_MINGW_SUBDIR ;
 scalar_t__ ISALNUM (char) ;
 char** cvt_to_mingw ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int ) ;
 int strcat (char*,int ) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
add_mingw (void)
{
  char **av;
  char *p;
  for (av = cvt_to_mingw; *av; av++)
    {
      int sawcygwin = 0;
      while ((p = strstr (*av, "-cygwin")))
 {
   char *over = p + sizeof ("-cygwin") - 1;
   memmove (over + 1, over, strlen (over));
   memcpy (p, "-mingw32", sizeof("-mingw32") - 1);
   p = ++over;
   while (ISALNUM (*p))
     p++;
   strcpy (over, p);
   sawcygwin = 1;
 }
      if (!sawcygwin && !strstr (*av, "mingw"))
 strcat (*av, CYGWIN_MINGW_SUBDIR);
    }
}
