
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_pattern_buffer {int dummy; } ;


 int TARGET_BUF_SIZE ;
 char* alloca (int) ;
 int memcpy (char*,char*,int) ;
 int monitor_debug (char*) ;
 int re_search (struct re_pattern_buffer*,char*,int,int ,int,int *) ;
 int readchar (int ) ;
 int timeout ;

__attribute__((used)) static int
monitor_expect_regexp (struct re_pattern_buffer *pat, char *buf, int buflen)
{
  char *mybuf;
  char *p;
  monitor_debug ("MON Expecting regexp\n");
  if (buf)
    mybuf = buf;
  else
    {
      mybuf = alloca (TARGET_BUF_SIZE);
      buflen = TARGET_BUF_SIZE;
    }

  p = mybuf;
  while (1)
    {
      int retval;

      if (p - mybuf >= buflen)
 {




   memcpy (mybuf, mybuf + buflen / 2, buflen / 2);
   p = mybuf + buflen / 2;
 }

      *p++ = readchar (timeout);

      retval = re_search (pat, mybuf, p - mybuf, 0, p - mybuf, ((void*)0));
      if (retval >= 0)
 return 1;
    }
}
