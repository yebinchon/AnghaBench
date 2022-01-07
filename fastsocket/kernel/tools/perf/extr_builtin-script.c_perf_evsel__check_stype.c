
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_event_attr {int type; int sample_type; } ;
struct perf_evsel {struct perf_event_attr attr; } ;
typedef enum perf_output_field { ____Placeholder_perf_output_field } perf_output_field ;
struct TYPE_2__ {int fields; scalar_t__ user_set; } ;


 TYPE_1__* output ;
 int output_field2str (int) ;
 char* perf_evsel__name (struct perf_evsel*) ;
 int pr_debug (char*,char const*,char const*,int ) ;
 int pr_err (char*,char const*,char const*,int ) ;

__attribute__((used)) static int perf_evsel__check_stype(struct perf_evsel *evsel,
       u64 sample_type, const char *sample_msg,
       enum perf_output_field field)
{
 struct perf_event_attr *attr = &evsel->attr;
 int type = attr->type;
 const char *evname;

 if (attr->sample_type & sample_type)
  return 0;

 if (output[type].user_set) {
  evname = perf_evsel__name(evsel);
  pr_err("Samples for '%s' event do not have %s attribute set. "
         "Cannot print '%s' field.\n",
         evname, sample_msg, output_field2str(field));
  return -1;
 }


 output[type].fields &= ~field;
 evname = perf_evsel__name(evsel);
 pr_debug("Samples for '%s' event do not have %s attribute set. "
   "Skipping '%s' field.\n",
   evname, sample_msg, output_field2str(field));

 return 0;
}
