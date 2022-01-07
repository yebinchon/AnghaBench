
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int free (char*) ;
 int memcpy (char*,char*,size_t) ;
 int strlen (char*) ;
 int vasprintf (char**,char const*,int ) ;

int
vsnprintf (char *s, size_t n, const char *format, va_list ap)
{
  char *buf = 0;
  int result = vasprintf (&buf, format, ap);

  if (!buf)
    return -1;
  if (result < 0)
    {
      free (buf);
      return -1;
    }

  result = strlen (buf);
  if (n > 0)
    {
      if ((long) n > result)
 memcpy (s, buf, result+1);
      else
        {
   memcpy (s, buf, n-1);
   s[n - 1] = 0;
 }
    }
  free (buf);
  return result;
}
