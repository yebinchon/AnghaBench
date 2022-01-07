
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int long_name_len; int short_name_len; } ;


 int strlen (char*) ;
 scalar_t__ verbose ;

int dso__name_len(const struct dso *dso)
{
 if (!dso)
  return strlen("[unknown]");
 if (verbose)
  return dso->long_name_len;

 return dso->short_name_len;
}
