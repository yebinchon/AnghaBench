
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int strcspn (char*,char*) ;
 int strncpy (char*,char*,int) ;

char *
itbl_get_field (char **S)
{
  static char n[128];
  char *s;
  int len;

  s = *S;
  if (!s || !*s)
    return 0;

  len = strcspn (s, " \t,()");
  ASSERT (128 > len + 1);
  strncpy (n, s, len);
  n[len] = 0;
  if (s[len] == '\0')
    s = 0;
  else
    s += len + 1;

  *S = s;
  return n;
}
