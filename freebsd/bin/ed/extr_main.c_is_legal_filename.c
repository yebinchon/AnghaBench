
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* errmsg ;
 scalar_t__ red ;
 scalar_t__ strchr (char*,char) ;
 int strcmp (char*,char*) ;

int
is_legal_filename(char *s)
{
 if (red && (*s == '!' || !strcmp(s, "..") || strchr(s, '/'))) {
  errmsg = "shell access restricted";
  return 0;
 }
 return 1;
}
