
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_pmu__format {int value; int bits; } ;
struct perf_event_attr {int config2; int config1; int config; } ;
struct TYPE_2__ {int num; } ;
struct parse_events__term {scalar_t__ type_val; TYPE_1__ val; int config; } ;
struct list_head {int dummy; } ;
typedef int __u64 ;


 int EINVAL ;
 scalar_t__ PARSE_EVENTS__TERM_TYPE_NUM ;



 scalar_t__ parse_events__is_hardcoded_term (struct parse_events__term*) ;
 struct perf_pmu__format* pmu_find_format (struct list_head*,int ) ;
 int pmu_format_value (int ,int ) ;

__attribute__((used)) static int pmu_config_term(struct list_head *formats,
      struct perf_event_attr *attr,
      struct parse_events__term *term)
{
 struct perf_pmu__format *format;
 __u64 *vp;






 if (parse_events__is_hardcoded_term(term))
  return 0;

 if (term->type_val != PARSE_EVENTS__TERM_TYPE_NUM)
  return -EINVAL;

 format = pmu_find_format(formats, term->config);
 if (!format)
  return -EINVAL;

 switch (format->value) {
 case 130:
  vp = &attr->config;
  break;
 case 129:
  vp = &attr->config1;
  break;
 case 128:
  vp = &attr->config2;
  break;
 default:
  return -EINVAL;
 }






 *vp |= pmu_format_value(format->bits, term->val.num);
 return 0;
}
