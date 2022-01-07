
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {int sort_key; int trace_vcpu; int report_event; } ;
struct option {int dummy; } ;


 struct option const OPT_END () ;
 struct option const OPT_INTEGER (int ,char*,int *,char*) ;
 struct option const OPT_STRING (char,char*,int *,char*,char*) ;
 int kvm_events_report_vcpu (struct perf_kvm_stat*) ;
 int parse_options (int,char const**,struct option const*,char const* const*,int ) ;
 int symbol__init () ;
 int usage_with_options (char const* const*,struct option const*) ;

__attribute__((used)) static int
kvm_events_report(struct perf_kvm_stat *kvm, int argc, const char **argv)
{
 const struct option kvm_events_report_options[] = {
  OPT_STRING(0, "event", &kvm->report_event, "report event",
       "event for reporting: vmexit, mmio, ioport"),
  OPT_INTEGER(0, "vcpu", &kvm->trace_vcpu,
       "vcpu id to report"),
  OPT_STRING('k', "key", &kvm->sort_key, "sort-key",
       "key for sorting: sample(sort by samples number)"
       " time (sort by avg time)"),
  OPT_END()
 };

 const char * const kvm_events_report_usage[] = {
  "perf kvm stat report [<options>]",
  ((void*)0)
 };

 symbol__init();

 if (argc) {
  argc = parse_options(argc, argv,
         kvm_events_report_options,
         kvm_events_report_usage, 0);
  if (argc)
   usage_with_options(kvm_events_report_usage,
        kvm_events_report_options);
 }

 return kvm_events_report_vcpu(kvm);
}
