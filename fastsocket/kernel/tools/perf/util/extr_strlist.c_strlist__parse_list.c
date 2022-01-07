
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;


 char* strchr (char const*,char) ;
 int strlist__parse_list_entry (struct strlist*,char const*) ;

int strlist__parse_list(struct strlist *self, const char *s)
{
 char *sep;
 int err;

 while ((sep = strchr(s, ',')) != ((void*)0)) {
  *sep = '\0';
  err = strlist__parse_list_entry(self, s);
  *sep = ',';
  if (err != 0)
   return err;
  s = sep + 1;
 }

 return *s ? strlist__parse_list_entry(self, s) : 0;
}
