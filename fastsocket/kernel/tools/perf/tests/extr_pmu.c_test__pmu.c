
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int config; int config1; int config2; } ;
struct list_head {int dummy; } ;
typedef int attr ;


 int EINVAL ;
 int LIST_HEAD (int ) ;
 int formats ;
 int memset (struct perf_event_attr*,int ,int) ;
 int perf_pmu__config_terms (int *,struct perf_event_attr*,struct list_head*) ;
 int perf_pmu__format_parse (char*,int *) ;
 char* test_format_dir_get () ;
 int test_format_dir_put (char*) ;
 struct list_head* test_terms_list () ;

int test__pmu(void)
{
 char *format = test_format_dir_get();
 LIST_HEAD(formats);
 struct list_head *terms = test_terms_list();
 int ret;

 if (!format)
  return -EINVAL;

 do {
  struct perf_event_attr attr;

  memset(&attr, 0, sizeof(attr));

  ret = perf_pmu__format_parse(format, &formats);
  if (ret)
   break;

  ret = perf_pmu__config_terms(&formats, &attr, terms);
  if (ret)
   break;

  ret = -EINVAL;

  if (attr.config != 0xc00000000002a823)
   break;
  if (attr.config1 != 0x8000400000000145)
   break;
  if (attr.config2 != 0x0400000020041d07)
   break;

  ret = 0;
 } while (0);

 test_format_dir_put(format);
 return ret;
}
