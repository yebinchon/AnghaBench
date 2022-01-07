; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_softirq.c__local_bh_enable_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_softirq.c__local_bh_enable_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOFTIRQ_DISABLE_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @_local_bh_enable_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_local_bh_enable_ip(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i64 (...) @in_irq()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = call i64 (...) @irqs_disabled()
  %7 = icmp ne i64 %6, 0
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = call i64 (...) @softirq_count()
  %13 = load i64, i64* @SOFTIRQ_DISABLE_OFFSET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @trace_softirqs_on(i64 %16)
  br label %18

18:                                               ; preds = %15, %8
  %19 = load i64, i64* @SOFTIRQ_DISABLE_OFFSET, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call i32 @sub_preempt_count(i64 %20)
  %22 = call i32 (...) @in_interrupt()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = call i64 (...) @local_softirq_pending()
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i1 [ false, %18 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (...) @do_softirq()
  br label %34

34:                                               ; preds = %32, %27
  %35 = call i32 (...) @dec_preempt_count()
  %36 = call i32 (...) @preempt_check_resched()
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @in_irq(...) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i64 @softirq_count(...) #1

declare dso_local i32 @trace_softirqs_on(i64) #1

declare dso_local i32 @sub_preempt_count(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @local_softirq_pending(...) #1

declare dso_local i32 @do_softirq(...) #1

declare dso_local i32 @dec_preempt_count(...) #1

declare dso_local i32 @preempt_check_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
