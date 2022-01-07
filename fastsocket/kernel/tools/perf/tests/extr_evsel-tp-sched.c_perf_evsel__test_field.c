
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int name; } ;
struct format_field {int flags; int size; } ;


 int FIELD_IS_SIGNED ;
 struct format_field* perf_evsel__field (struct perf_evsel*,char const*) ;
 int pr_debug (char*,int ,char const*,...) ;

__attribute__((used)) static int perf_evsel__test_field(struct perf_evsel *evsel, const char *name,
      int size, bool should_be_signed)
{
 struct format_field *field = perf_evsel__field(evsel, name);
 int is_signed;
 int ret = 0;

 if (field == ((void*)0)) {
  pr_debug("%s: \"%s\" field not found!\n", evsel->name, name);
  return -1;
 }

 is_signed = !!(field->flags | FIELD_IS_SIGNED);
 if (should_be_signed && !is_signed) {
  pr_debug("%s: \"%s\" signedness(%d) is wrong, should be %d\n",
    evsel->name, name, is_signed, should_be_signed);
  ret = -1;
 }

 if (field->size != size) {
  pr_debug("%s: \"%s\" size (%d) should be %d!\n",
    evsel->name, name, field->size, size);
  ret = -1;
 }

 return ret;
}
