
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_tool {int ordered_samples; int comm; int sample; } ;
struct perf_kvm_stat {char* exit_reasons_isa; struct perf_tool tool; int session; int exit_reasons_size; int exit_reasons; int file_name; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int O_RDONLY ;
 int get_cpu_isa (int ) ;
 int perf_event__process_comm ;
 int perf_session__has_traces (int ,char*) ;
 int perf_session__new (int ,int ,int ,int,struct perf_tool*) ;
 int perf_session__process_events (int ,struct perf_tool*) ;
 int pr_err (char*) ;
 int process_sample_event ;
 int vmx_exit_reasons ;

__attribute__((used)) static int read_events(struct perf_kvm_stat *kvm)
{
 int ret;

 struct perf_tool eops = {
  .sample = process_sample_event,
  .comm = perf_event__process_comm,
  .ordered_samples = 1,
 };

 kvm->tool = eops;
 kvm->session = perf_session__new(kvm->file_name, O_RDONLY, 0, 0,
      &kvm->tool);
 if (!kvm->session) {
  pr_err("Initializing perf session failed\n");
  return -EINVAL;
 }

 if (!perf_session__has_traces(kvm->session, "kvm record"))
  return -EINVAL;





 ret = get_cpu_isa(kvm->session);

 if (ret < 0)
  return ret;

 if (ret == 1) {
  kvm->exit_reasons = vmx_exit_reasons;
  kvm->exit_reasons_size = ARRAY_SIZE(vmx_exit_reasons);
  kvm->exit_reasons_isa = "VMX";
 }

 return perf_session__process_events(kvm->session, &kvm->tool);
}
