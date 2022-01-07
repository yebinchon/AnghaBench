; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_resend_irq_on_evtchn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_resend_irq_on_evtchn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i32, i32 }

@HYPERVISOR_shared_info = common dso_local global %struct.shared_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resend_irq_on_evtchn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.shared_info*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @evtchn_from_irq(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8
  store %struct.shared_info* %9, %struct.shared_info** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @VALID_EVTCHN(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.shared_info*, %struct.shared_info** %6, align 8
  %17 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sync_test_and_set_bit(i32 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.shared_info*, %struct.shared_info** %6, align 8
  %22 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sync_set_bit(i32 %20, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @unmask_evtchn(i32 %28)
  br label %30

30:                                               ; preds = %27, %14
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @evtchn_from_irq(i32) #1

declare dso_local i32 @VALID_EVTCHN(i32) #1

declare dso_local i32 @sync_test_and_set_bit(i32, i32) #1

declare dso_local i32 @sync_set_bit(i32, i32) #1

declare dso_local i32 @unmask_evtchn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
