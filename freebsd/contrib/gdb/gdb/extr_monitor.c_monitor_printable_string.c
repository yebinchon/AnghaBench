
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (int) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
monitor_printable_string (char *newstr, char *oldstr, int len)
{
  int ch;
  int i;

  if (len <= 0)
    len = strlen (oldstr);

  for (i = 0; i < len; i++)
    {
      ch = oldstr[i];
      switch (ch)
 {
 default:
   if (isprint (ch))
     *newstr++ = ch;

   else
     {
       sprintf (newstr, "\\x%02x", ch & 0xff);
       newstr += 4;
     }
   break;

 case '\\':
   *newstr++ = '\\';
   *newstr++ = '\\';
   break;
 case '\b':
   *newstr++ = '\\';
   *newstr++ = 'b';
   break;
 case '\f':
   *newstr++ = '\\';
   *newstr++ = 't';
   break;
 case '\n':
   *newstr++ = '\\';
   *newstr++ = 'n';
   break;
 case '\r':
   *newstr++ = '\\';
   *newstr++ = 'r';
   break;
 case '\t':
   *newstr++ = '\\';
   *newstr++ = 't';
   break;
 case '\v':
   *newstr++ = '\\';
   *newstr++ = 'v';
   break;
 }
    }

  *newstr++ = '\0';
}
