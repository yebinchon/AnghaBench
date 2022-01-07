
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {void* raw_data; } ;
struct perf_evsel {int dummy; } ;
struct format_field {int offset; int flags; } ;


 int FIELD_IS_DYNAMIC ;
 struct format_field* perf_evsel__field (struct perf_evsel*,char const*) ;

void *perf_evsel__rawptr(struct perf_evsel *evsel, struct perf_sample *sample,
    const char *name)
{
 struct format_field *field = perf_evsel__field(evsel, name);
 int offset;

 if (!field)
  return ((void*)0);

 offset = field->offset;

 if (field->flags & FIELD_IS_DYNAMIC) {
  offset = *(int *)(sample->raw_data + field->offset);
  offset &= 0xffff;
 }

 return sample->raw_data + offset;
}
