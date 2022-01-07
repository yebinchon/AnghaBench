
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISSPACE (unsigned char const) ;
 int gcc_assert (int) ;

__attribute__((used)) static void
do_cleaning (char *new_clean_text_base, const char *new_clean_text_limit)
{
  char *scan_p;
  int non_whitespace_since_newline = 0;

  for (scan_p = new_clean_text_base; scan_p < new_clean_text_limit; scan_p++)
    {
      switch (*scan_p)
 {
 case '/':
   if (scan_p[1] != '*')
     goto regular;
   non_whitespace_since_newline = 1;
   scan_p[0] = ' ';
   scan_p[1] = ' ';
   scan_p += 2;
   while (scan_p[1] != '/' || scan_p[0] != '*')
     {
       if (!ISSPACE ((const unsigned char)*scan_p))
  *scan_p = ' ';
       ++scan_p;
       gcc_assert (scan_p < new_clean_text_limit);
     }
   *scan_p++ = ' ';
   *scan_p = ' ';
   break;

 case '#':
   if (non_whitespace_since_newline)
     goto regular;
   *scan_p = ' ';
   while (scan_p[1] != '\n' || scan_p[0] == '\\')
     {
       if (!ISSPACE ((const unsigned char)*scan_p))
  *scan_p = ' ';
       ++scan_p;
       gcc_assert (scan_p < new_clean_text_limit);
     }
   *scan_p++ = ' ';
   break;

 case '\'':
   non_whitespace_since_newline = 1;
   while (scan_p[1] != '\'' || scan_p[0] == '\\')
     {
       if (scan_p[0] == '\\'
    && !ISSPACE ((const unsigned char) scan_p[1]))
  scan_p[1] = ' ';
       if (!ISSPACE ((const unsigned char)*scan_p))
  *scan_p = ' ';
       ++scan_p;
       gcc_assert (scan_p < new_clean_text_limit);
     }
   *scan_p++ = ' ';
   break;

 case '"':
   non_whitespace_since_newline = 1;
   while (scan_p[1] != '"' || scan_p[0] == '\\')
     {
       if (scan_p[0] == '\\'
    && !ISSPACE ((const unsigned char) scan_p[1]))
  scan_p[1] = ' ';
       if (!ISSPACE ((const unsigned char)*scan_p))
  *scan_p = ' ';
       ++scan_p;
       gcc_assert (scan_p < new_clean_text_limit);
     }
   if (!ISSPACE ((const unsigned char)*scan_p))
     *scan_p = ' ';
   scan_p++;
   break;

 case '\\':
   if (scan_p[1] != '\n')
     goto regular;
   *scan_p = ' ';
   break;

 case '\n':
   non_whitespace_since_newline = 0;
   break;

 case ' ':
 case '\v':
 case '\t':
 case '\r':
 case '\f':
 case '\b':
   break;

 default:
regular:
   non_whitespace_since_newline = 1;
   break;
 }
    }
}
