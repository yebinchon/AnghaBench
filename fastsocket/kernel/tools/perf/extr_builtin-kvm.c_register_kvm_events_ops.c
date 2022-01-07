
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {int report_event; int * events_ops; } ;


 int exit_events ;
 int ioport_events ;
 int mmio_events ;
 int pr_err (char*,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool register_kvm_events_ops(struct perf_kvm_stat *kvm)
{
 bool ret = 1;

 if (!strcmp(kvm->report_event, "vmexit"))
  kvm->events_ops = &exit_events;
 else if (!strcmp(kvm->report_event, "mmio"))
  kvm->events_ops = &mmio_events;
 else if (!strcmp(kvm->report_event, "ioport"))
  kvm->events_ops = &ioport_events;
 else {
  pr_err("Unknown report event:%s\n", kvm->report_event);
  ret = 0;
 }

 return ret;
}
