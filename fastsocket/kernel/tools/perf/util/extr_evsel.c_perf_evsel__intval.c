
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct perf_sample {void* raw_data; } ;
struct perf_evsel {int needs_swap; } ;
struct format_field {int offset; int size; } ;


 int bswap_16 (int ) ;
 int bswap_32 (int ) ;
 int bswap_64 (int ) ;
 struct format_field* perf_evsel__field (struct perf_evsel*,char const*) ;

u64 perf_evsel__intval(struct perf_evsel *evsel, struct perf_sample *sample,
         const char *name)
{
 struct format_field *field = perf_evsel__field(evsel, name);
 void *ptr;
 u64 value;

 if (!field)
  return 0;

 ptr = sample->raw_data + field->offset;

 switch (field->size) {
 case 1:
  return *(u8 *)ptr;
 case 2:
  value = *(u16 *)ptr;
  break;
 case 4:
  value = *(u32 *)ptr;
  break;
 case 8:
  value = *(u64 *)ptr;
  break;
 default:
  return 0;
 }

 if (!evsel->needs_swap)
  return value;

 switch (field->size) {
 case 2:
  return bswap_16(value);
 case 4:
  return bswap_32(value);
 case 8:
  return bswap_64(value);
 default:
  return 0;
 }

 return 0;
}
