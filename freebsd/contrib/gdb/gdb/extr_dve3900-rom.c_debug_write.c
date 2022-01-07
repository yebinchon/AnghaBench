
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int monitor_write (unsigned char*,int) ;
 int puts_debug (char*,char*,char*) ;
 scalar_t__ remote_debug ;
 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static void
debug_write (unsigned char *buf, int buflen)
{
  char s[10];

  monitor_write (buf, buflen);

  if (remote_debug > 0)
    {
      while (buflen-- > 0)
 {
   sprintf (s, "[%02x]", *buf & 0xff);
   puts_debug ("Sent -->", s, "<--");
   buf++;
 }
    }
}
