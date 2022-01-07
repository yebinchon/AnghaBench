; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_rebind_irq_to_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_rebind_irq_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_bind_vcpu = type { i32, i32 }

@xen_have_vector_callback = common dso_local global i32 0, align 4
@EVTCHNOP_bind_vcpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rebind_irq_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebind_irq_to_cpu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.evtchn_bind_vcpu, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @evtchn_from_irq(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @VALID_EVTCHN(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = call i64 (...) @xen_hvm_domain()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @xen_have_vector_callback, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  store i32 -1, i32* %3, align 4
  br label %33

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.evtchn_bind_vcpu, %struct.evtchn_bind_vcpu* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds %struct.evtchn_bind_vcpu, %struct.evtchn_bind_vcpu* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @EVTCHNOP_bind_vcpu, align 4
  %26 = call i64 @HYPERVISOR_event_channel_op(i32 %25, %struct.evtchn_bind_vcpu* %6)
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @bind_evtchn_to_cpu(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %20
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @evtchn_from_irq(i32) #1

declare dso_local i32 @VALID_EVTCHN(i32) #1

declare dso_local i64 @xen_hvm_domain(...) #1

declare dso_local i64 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_vcpu*) #1

declare dso_local i32 @bind_evtchn_to_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
