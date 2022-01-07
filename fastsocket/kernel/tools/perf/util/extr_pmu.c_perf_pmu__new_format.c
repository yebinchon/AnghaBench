
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu__format {int value; int list; int bits; int name; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (int ,unsigned long*,int) ;
 int strdup (char*) ;
 struct perf_pmu__format* zalloc (int) ;

int perf_pmu__new_format(struct list_head *list, char *name,
    int config, unsigned long *bits)
{
 struct perf_pmu__format *format;

 format = zalloc(sizeof(*format));
 if (!format)
  return -ENOMEM;

 format->name = strdup(name);
 format->value = config;
 memcpy(format->bits, bits, sizeof(format->bits));

 list_add_tail(&format->list, list);
 return 0;
}
