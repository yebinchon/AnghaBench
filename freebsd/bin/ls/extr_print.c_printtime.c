
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int longstring ;


 int D_MD_ORDER ;
 scalar_t__ SIXMONTHS ;
 scalar_t__ f_sectime ;
 char* f_timeformat ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int localtime (scalar_t__*) ;
 int ls_strftime (char*,int,char const*,int ) ;
 char* nl_langinfo (int ) ;
 int stdout ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
printtime(time_t ftime)
{
 char longstring[80];
 static time_t now = 0;
 const char *format;
 static int d_first = -1;

 if (d_first < 0)
  d_first = (*nl_langinfo(D_MD_ORDER) == 'd');
 if (now == 0)
  now = time(((void*)0));


 if (f_timeformat)
  format = f_timeformat;
 else if (f_sectime)

  format = d_first ? "%e %b %T %Y" : "%b %e %T %Y";
 else if (ftime + ((365 / 2) * 86400) > now && ftime < now + ((365 / 2) * 86400))

  format = d_first ? "%e %b %R" : "%b %e %R";
 else

  format = d_first ? "%e %b  %Y" : "%b %e  %Y";
 ls_strftime(longstring, sizeof(longstring), format, localtime(&ftime));
 fputs(longstring, stdout);
 fputc(' ', stdout);
}
