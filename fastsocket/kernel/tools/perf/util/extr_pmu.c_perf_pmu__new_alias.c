
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu__alias {int list; int name; int terms; } ;
struct list_head {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int fread (char*,int,int,int *) ;
 int free (struct perf_pmu__alias*) ;
 int list_add_tail (int *,struct list_head*) ;
 struct perf_pmu__alias* malloc (int) ;
 int parse_events_terms (int *,char*) ;
 int strdup (char*) ;

__attribute__((used)) static int perf_pmu__new_alias(struct list_head *list, char *name, FILE *file)
{
 struct perf_pmu__alias *alias;
 char buf[256];
 int ret;

 ret = fread(buf, 1, sizeof(buf), file);
 if (ret == 0)
  return -EINVAL;
 buf[ret] = 0;

 alias = malloc(sizeof(*alias));
 if (!alias)
  return -ENOMEM;

 INIT_LIST_HEAD(&alias->terms);
 ret = parse_events_terms(&alias->terms, buf);
 if (ret) {
  free(alias);
  return ret;
 }

 alias->name = strdup(name);
 list_add_tail(&alias->list, list);
 return 0;
}
