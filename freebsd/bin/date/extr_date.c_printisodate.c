
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tzbuf ;
struct tm {int dummy; } ;
struct iso8601_fmt {char* format_string; } ;
typedef int fmtbuf ;
typedef int buf ;


 struct iso8601_fmt const* iso8601_fmts ;
 struct iso8601_fmt const* iso8601_selected ;
 int memmove (char*,char*,int) ;
 int printdate (char*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void
printisodate(struct tm *lt)
{
 const struct iso8601_fmt *it;
 char fmtbuf[32], buf[32], tzbuf[8];

 fmtbuf[0] = 0;
 for (it = iso8601_fmts; it <= iso8601_selected; it++)
  strlcat(fmtbuf, it->format_string, sizeof(fmtbuf));

 (void)strftime(buf, sizeof(buf), fmtbuf, lt);

 if (iso8601_selected > iso8601_fmts) {
  (void)strftime(tzbuf, sizeof(tzbuf), "%z", lt);
  memmove(&tzbuf[4], &tzbuf[3], 3);
  tzbuf[3] = ':';
  strlcat(buf, tzbuf, sizeof(buf));
 }

 printdate(buf);
}
