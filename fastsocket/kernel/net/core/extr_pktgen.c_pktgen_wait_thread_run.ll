; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_pktgen_wait_thread_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_pktgen_wait_thread_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_thread = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktgen_thread*)* @pktgen_wait_thread_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pktgen_wait_thread_run(%struct.pktgen_thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pktgen_thread*, align 8
  store %struct.pktgen_thread* %0, %struct.pktgen_thread** %3, align 8
  %4 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %5 = call i32 @if_lock(%struct.pktgen_thread* %4)
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %8 = call i64 @thread_is_running(%struct.pktgen_thread* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %12 = call i32 @if_unlock(%struct.pktgen_thread* %11)
  %13 = call i32 @msleep_interruptible(i32 100)
  %14 = load i32, i32* @current, align 4
  %15 = call i64 @signal_pending(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %24

18:                                               ; preds = %10
  %19 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %20 = call i32 @if_lock(%struct.pktgen_thread* %19)
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %23 = call i32 @if_unlock(%struct.pktgen_thread* %22)
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @if_lock(%struct.pktgen_thread*) #1

declare dso_local i64 @thread_is_running(%struct.pktgen_thread*) #1

declare dso_local i32 @if_unlock(%struct.pktgen_thread*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
