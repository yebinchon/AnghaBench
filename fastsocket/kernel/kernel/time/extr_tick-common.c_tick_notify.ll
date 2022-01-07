; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-common.c_tick_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-common.c_tick_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @tick_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tick_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* %6, align 8
  switch i64 %8, label %34 [
    i64 137, label %9
    i64 132, label %12
    i64 133, label %12
    i64 134, label %12
    i64 136, label %16
    i64 135, label %16
    i64 130, label %19
    i64 131, label %22
    i64 128, label %29
    i64 129, label %32
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @tick_check_new_device(i8* %10)
  store i32 %11, i32* %4, align 4
  br label %37

12:                                               ; preds = %3, %3, %3
  %13 = load i64, i64* %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @tick_broadcast_on_off(i64 %13, i8* %14)
  br label %35

16:                                               ; preds = %3, %3
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @tick_broadcast_oneshot_control(i64 %17)
  br label %35

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @tick_handover_do_timer(i8* %20)
  br label %35

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @tick_shutdown_broadcast_oneshot(i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @tick_shutdown_broadcast(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @tick_shutdown(i8* %27)
  br label %35

29:                                               ; preds = %3
  %30 = call i32 (...) @tick_suspend()
  %31 = call i32 (...) @tick_suspend_broadcast()
  br label %35

32:                                               ; preds = %3
  %33 = call i32 (...) @tick_resume()
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %32, %29, %22, %19, %16, %12
  %36 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %9
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @tick_check_new_device(i8*) #1

declare dso_local i32 @tick_broadcast_on_off(i64, i8*) #1

declare dso_local i32 @tick_broadcast_oneshot_control(i64) #1

declare dso_local i32 @tick_handover_do_timer(i8*) #1

declare dso_local i32 @tick_shutdown_broadcast_oneshot(i8*) #1

declare dso_local i32 @tick_shutdown_broadcast(i8*) #1

declare dso_local i32 @tick_shutdown(i8*) #1

declare dso_local i32 @tick_suspend(...) #1

declare dso_local i32 @tick_suspend_broadcast(...) #1

declare dso_local i32 @tick_resume(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
