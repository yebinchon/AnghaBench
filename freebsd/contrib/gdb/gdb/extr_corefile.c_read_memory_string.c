
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int read_memory (scalar_t__,char*,int) ;

void
read_memory_string (CORE_ADDR memaddr, char *buffer, int max_len)
{
  char *cp;
  int i;
  int cnt;

  cp = buffer;
  while (1)
    {
      if (cp - buffer >= max_len)
 {
   buffer[max_len - 1] = '\0';
   break;
 }
      cnt = max_len - (cp - buffer);
      if (cnt > 8)
 cnt = 8;
      read_memory (memaddr + (int) (cp - buffer), cp, cnt);
      for (i = 0; i < cnt && *cp; i++, cp++)
 ;

      if (i < cnt && !*cp)
 break;
    }
}
