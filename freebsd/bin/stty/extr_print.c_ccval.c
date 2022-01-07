
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cchar {scalar_t__ sub; } ;
typedef int buf ;


 scalar_t__ VMIN ;
 scalar_t__ VTIME ;
 int _POSIX_VDISABLE ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
ccval(struct cchar *p, int c)
{
 static char buf[5];
 char *bp;

 if (p->sub == VMIN || p->sub == VTIME) {
  (void)snprintf(buf, sizeof(buf), "%d", c);
  return (buf);
 }
 if (c == _POSIX_VDISABLE)
  return ("<undef>");
 bp = buf;
 if (c & 0200) {
  *bp++ = 'M';
  *bp++ = '-';
  c &= 0177;
 }
 if (c == 0177) {
  *bp++ = '^';
  *bp++ = '?';
 }
 else if (c < 040) {
  *bp++ = '^';
  *bp++ = c + '@';
 }
 else
  *bp++ = c;
 *bp = '\0';
 return (buf);
}
