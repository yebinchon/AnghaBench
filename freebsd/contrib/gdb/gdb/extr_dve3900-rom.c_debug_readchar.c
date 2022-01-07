
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int monitor_readchar () ;
 int puts_debug (char*,char*,char*) ;
 scalar_t__ remote_debug ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int
debug_readchar (int hex)
{
  char buf[10];
  int c = monitor_readchar ();

  if (remote_debug > 0)
    {
      if (hex)
 sprintf (buf, "[%02x]", c & 0xff);
      else if (c == '\0')
 strcpy (buf, "\\0");
      else
 {
   buf[0] = c;
   buf[1] = '\0';
 }
      puts_debug ("Read -->", buf, "<--");
    }
  return c;
}
