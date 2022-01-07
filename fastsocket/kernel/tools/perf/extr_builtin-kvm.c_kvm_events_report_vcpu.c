
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {int trace_vcpu; } ;


 int EINVAL ;
 int init_kvm_event_record (struct perf_kvm_stat*) ;
 int print_result (struct perf_kvm_stat*) ;
 int read_events (struct perf_kvm_stat*) ;
 int register_kvm_events_ops (struct perf_kvm_stat*) ;
 int select_key (struct perf_kvm_stat*) ;
 int setup_pager () ;
 int sort_result (struct perf_kvm_stat*) ;
 int verify_vcpu (int) ;

__attribute__((used)) static int kvm_events_report_vcpu(struct perf_kvm_stat *kvm)
{
 int ret = -EINVAL;
 int vcpu = kvm->trace_vcpu;

 if (!verify_vcpu(vcpu))
  goto exit;

 if (!select_key(kvm))
  goto exit;

 if (!register_kvm_events_ops(kvm))
  goto exit;

 init_kvm_event_record(kvm);
 setup_pager();

 ret = read_events(kvm);
 if (ret)
  goto exit;

 sort_result(kvm);
 print_result(kvm);

exit:
 return ret;
}
