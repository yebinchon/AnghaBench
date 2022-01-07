
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODESET ;
 int localeisutf8 ;
 char* nl_langinfo (int ) ;
 int strcmp (char*,char*) ;

void
updatecharset(void)
{
 char *charset;

 charset = nl_langinfo(CODESET);
 localeisutf8 = !strcmp(charset, "UTF-8");
}
