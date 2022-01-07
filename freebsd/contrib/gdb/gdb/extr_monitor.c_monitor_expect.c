
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alloca (int) ;
 int fprintf_unfiltered (int ,char*,char*) ;
 int gdb_stdlog ;
 int immediate_quit ;
 int memcmp (char*,char*,int) ;
 scalar_t__ monitor_debug_p ;
 int monitor_printable_string (char*,char*,int ) ;
 int readchar (int ) ;
 int strlen (char*) ;
 int timeout ;

int
monitor_expect (char *string, char *buf, int buflen)
{
  char *p = string;
  int obuflen = buflen;
  int c;

  if (monitor_debug_p)
    {
      char *safe_string = (char *) alloca ((strlen (string) * 4) + 1);
      monitor_printable_string (safe_string, string, 0);
      fprintf_unfiltered (gdb_stdlog, "MON Expecting '%s'\n", safe_string);
    }

  immediate_quit++;
  while (1)
    {
      if (buf)
 {
   if (buflen < 2)
     {
       *buf = '\000';
       immediate_quit--;
       return -1;
     }

   c = readchar (timeout);
   if (c == '\000')
     continue;
   *buf++ = c;
   buflen--;
 }
      else
 c = readchar (timeout);



      if (*p == '\003' || c == *p)
 {
   p++;
   if (*p == '\0')
     {
       immediate_quit--;

       if (buf)
  {
    *buf++ = '\000';
    return obuflen - buflen;
  }
       else
  return 0;
     }
 }
      else
 {
   int i;

   for (i = (p - string) - 1; i >= 0; i--)
     if (string[i] == c)
       {



  if (! memcmp (string, p - i, i))
    {
      p = string + i + 1;
      break;
    }
       }
   if (i < 0)
     p = string;
 }
    }
}
