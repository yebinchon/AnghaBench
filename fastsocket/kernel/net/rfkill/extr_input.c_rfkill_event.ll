; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_input.c_rfkill_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_input.c_rfkill_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { i32 }

@EV_KEY = common dso_local global i32 0, align 4
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@RFKILL_TYPE_UWB = common dso_local global i32 0, align 4
@RFKILL_TYPE_WIMAX = common dso_local global i32 0, align 4
@RFKILL_TYPE_ALL = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@SW_RFKILL_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_handle*, i32, i32, i32)* @rfkill_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfkill_event(%struct.input_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.input_handle* %0, %struct.input_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @EV_KEY, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %32 [
    i32 128, label %17
    i32 132, label %20
    i32 130, label %23
    i32 129, label %26
    i32 131, label %29
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %19 = call i32 @rfkill_schedule_toggle(i32 %18)
  br label %32

20:                                               ; preds = %15
  %21 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %22 = call i32 @rfkill_schedule_toggle(i32 %21)
  br label %32

23:                                               ; preds = %15
  %24 = load i32, i32* @RFKILL_TYPE_UWB, align 4
  %25 = call i32 @rfkill_schedule_toggle(i32 %24)
  br label %32

26:                                               ; preds = %15
  %27 = load i32, i32* @RFKILL_TYPE_WIMAX, align 4
  %28 = call i32 @rfkill_schedule_toggle(i32 %27)
  br label %32

29:                                               ; preds = %15
  %30 = load i32, i32* @RFKILL_TYPE_ALL, align 4
  %31 = call i32 @rfkill_schedule_toggle(i32 %30)
  br label %32

32:                                               ; preds = %15, %29, %26, %23, %20, %17
  br label %45

33:                                               ; preds = %12, %4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @EV_SW, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SW_RFKILL_ALL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @rfkill_schedule_evsw_rfkillall(i32 %42)
  br label %44

44:                                               ; preds = %41, %37, %33
  br label %45

45:                                               ; preds = %44, %32
  ret void
}

declare dso_local i32 @rfkill_schedule_toggle(i32) #1

declare dso_local i32 @rfkill_schedule_evsw_rfkillall(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
