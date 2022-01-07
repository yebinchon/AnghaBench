; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_retrigger_dynirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_retrigger_dynirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i32, i32 }

@HYPERVISOR_shared_info = common dso_local global %struct.shared_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @retrigger_dynirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrigger_dynirq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.shared_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @evtchn_from_irq(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8
  store %struct.shared_info* %9, %struct.shared_info** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @VALID_EVTCHN(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %16 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sync_test_and_set_bit(i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %21 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sync_set_bit(i32 %19, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @unmask_evtchn(i32 %27)
  br label %29

29:                                               ; preds = %26, %13
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @evtchn_from_irq(i32) #1

declare dso_local i64 @VALID_EVTCHN(i32) #1

declare dso_local i32 @sync_test_and_set_bit(i32, i32) #1

declare dso_local i32 @sync_set_bit(i32, i32) #1

declare dso_local i32 @unmask_evtchn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
