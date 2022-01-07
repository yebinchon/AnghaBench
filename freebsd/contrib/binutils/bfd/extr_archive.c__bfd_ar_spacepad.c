
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int memcpy (char*,char*,size_t) ;
 int memset (char*,char,size_t) ;
 int snprintf (char*,int,char const*,long) ;
 size_t strlen (char*) ;

void
_bfd_ar_spacepad (char *p, size_t n, const char *fmt, long val)
{
  static char buf[20];
  size_t len;
  snprintf (buf, sizeof (buf), fmt, val);
  len = strlen (buf);
  if (len < n)
    {
      memcpy (p, buf, len);
      memset (p + len, ' ', n - len);
    }
  else
    memcpy (p, buf, n);
}
