
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct quirk_table {scalar_t__ name; } ;


 int ARRAY_SIZE (struct quirk_table*) ;
 int EINVAL ;
 struct quirk_table* applicable_quirks ;
 int apply_quirk (struct snd_ac97*,int) ;
 scalar_t__ simple_strtoul (char const*,int *,int) ;
 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static int apply_quirk_str(struct snd_ac97 *ac97, const char *typestr)
{
 int i;
 struct quirk_table *q;

 for (i = 0; i < ARRAY_SIZE(applicable_quirks); i++) {
  q = &applicable_quirks[i];
  if (q->name && ! strcmp(typestr, q->name))
   return apply_quirk(ac97, i);
 }

 if (*typestr >= '0' && *typestr <= '9')
  return apply_quirk(ac97, (int)simple_strtoul(typestr, ((void*)0), 10));
 return -EINVAL;
}
