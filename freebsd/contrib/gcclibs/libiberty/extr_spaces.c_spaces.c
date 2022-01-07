
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ malloc (int) ;

const char *
spaces (int count)
{
  register char *t;
  static char *buf;
  static int maxsize;

  if (count > maxsize)
    {
      if (buf)
 {
   free (buf);
 }
      buf = (char *) malloc (count + 1);
      if (buf == (char *) 0)
 return 0;
      for (t = buf + count ; t != buf ; )
 {
   *--t = ' ';
 }
      maxsize = count;
      buf[count] = '\0';
    }
  return (const char *) (buf + maxsize - count);
}
