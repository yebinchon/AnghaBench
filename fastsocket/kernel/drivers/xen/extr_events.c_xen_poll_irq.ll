; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_xen_poll_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_xen_poll_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_poll = type { i32, i32, i64 }

@SCHEDOP_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_poll_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sched_poll, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @evtchn_from_irq(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @VALID_EVTCHN(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sched_poll, %struct.sched_poll* %4, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.sched_poll, %struct.sched_poll* %4, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.sched_poll, %struct.sched_poll* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @set_xen_guest_handle(i32 %14, i32* %3)
  %16 = load i32, i32* @SCHEDOP_poll, align 4
  %17 = call i64 @HYPERVISOR_sched_op(i32 %16, %struct.sched_poll* %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 (...) @BUG()
  br label %21

21:                                               ; preds = %19, %10
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @evtchn_from_irq(i32) #1

declare dso_local i64 @VALID_EVTCHN(i32) #1

declare dso_local i32 @set_xen_guest_handle(i32, i32*) #1

declare dso_local i64 @HYPERVISOR_sched_op(i32, %struct.sched_poll*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
