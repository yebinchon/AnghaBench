
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int alpha ;


 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
prefix_encode (char *start, unsigned code)
{
  static char alpha[26] = "abcdefghijklmnopqrstuvwxyz";
  static char buf[32];
  char *p;
  strcpy (buf, start);
  p = strchr (buf, '\0');
  do
    *p++ = alpha[code % sizeof (alpha)];
  while ((code /= sizeof (alpha)) != 0);
  *p = '\0';
  return buf;
}
