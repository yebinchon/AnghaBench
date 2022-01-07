
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int len; scalar_t__ val; } ;


 struct data data_append_data (struct data,char const*,scalar_t__) ;
 scalar_t__ streq (char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int stringtable_insert(struct data *d, const char *str)
{
 int i;



 for (i = 0; i < d->len; i++) {
  if (streq(str, d->val + i))
   return i;
 }

 *d = data_append_data(*d, str, strlen(str)+1);
 return i;
}
