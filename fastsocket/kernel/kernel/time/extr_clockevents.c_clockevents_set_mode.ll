; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clockevents.c_clockevents_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clockevents.c_clockevents_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32, i32, i32 (i32, %struct.clock_event_device*)* }

@CLOCK_EVT_MODE_ONESHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clockevents_set_mode(%struct.clock_event_device* %0, i32 %1) #0 {
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %6 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %12 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %11, i32 0, i32 2
  %13 = load i32 (i32, %struct.clock_event_device*)*, i32 (i32, %struct.clock_event_device*)** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %16 = call i32 %13(i32 %14, %struct.clock_event_device* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %19 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CLOCK_EVT_MODE_ONESHOT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %10
  %24 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %25 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %34 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = call i32 @WARN_ON(i32 1)
  br label %36

36:                                               ; preds = %32, %23
  br label %37

37:                                               ; preds = %36, %10
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
