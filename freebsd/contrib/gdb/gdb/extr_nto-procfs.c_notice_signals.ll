; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_notice_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_notice_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NSIG = common dso_local global i32 0, align 4
@run = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @notice_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notice_signals() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %28, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @NSIG, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @target_signal_from_host(i32 %7)
  %9 = call i64 @signal_stop_state(i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @target_signal_from_host(i32 %12)
  %14 = call i64 @signal_print_state(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @target_signal_from_host(i32 %17)
  %19 = call i32 @signal_pass_state(i32 %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @sigdelset(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @run, i32 0, i32 0), i32 %22)
  br label %27

24:                                               ; preds = %16, %11, %6
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @sigaddset(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @run, i32 0, i32 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %2

31:                                               ; preds = %2
  ret void
}

declare dso_local i64 @signal_stop_state(i32) #1

declare dso_local i32 @target_signal_from_host(i32) #1

declare dso_local i64 @signal_print_state(i32) #1

declare dso_local i32 @signal_pass_state(i32) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
