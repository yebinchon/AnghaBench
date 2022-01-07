
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n ;
typedef int dt_version_t ;


 int DT_VERSION_MAJMAX ;
 int DT_VERSION_MICMAX ;
 int DT_VERSION_MINMAX ;
 int DT_VERSION_NUMBER (int,int,int) ;
 scalar_t__ isdigit (char) ;

int
dt_version_str2num(const char *s, dt_version_t *vp)
{
 int i = 0, n[3] = { 0, 0, 0 };
 char c;

 while ((c = *s++) != '\0') {
  if (isdigit(c))
   n[i] = n[i] * 10 + c - '0';
  else if (c != '.' || i++ >= sizeof (n) / sizeof (n[0]) - 1)
   return (-1);
 }

 if (n[0] > DT_VERSION_MAJMAX ||
     n[1] > DT_VERSION_MINMAX ||
     n[2] > DT_VERSION_MICMAX)
  return (-1);

 if (vp != ((void*)0))
  *vp = DT_VERSION_NUMBER(n[0], n[1], n[2]);

 return (0);
}
