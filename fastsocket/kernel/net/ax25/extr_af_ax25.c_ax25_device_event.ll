; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_af_ax25.c_ax25_device_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_af_ax25.c_ax25_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i64 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@ARPHRD_AX25 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ax25_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %8, align 8
  %12 = call i32 @dev_net(%struct.net_device* %11)
  %13 = call i32 @net_eq(i32 %12, i32* @init_net)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %16, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ARPHRD_AX25, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %17
  %26 = load i64, i64* %6, align 8
  switch i64 %26, label %37 [
    i64 128, label %27
    i64 129, label %30
  ]

27:                                               ; preds = %25
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call i32 @ax25_dev_device_up(%struct.net_device* %28)
  br label %38

30:                                               ; preds = %25
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = call i32 @ax25_kill_by_device(%struct.net_device* %31)
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = call i32 @ax25_rt_device_down(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = call i32 @ax25_dev_device_down(%struct.net_device* %35)
  br label %38

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %30, %27
  %39 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %23, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @ax25_dev_device_up(%struct.net_device*) #1

declare dso_local i32 @ax25_kill_by_device(%struct.net_device*) #1

declare dso_local i32 @ax25_rt_device_down(%struct.net_device*) #1

declare dso_local i32 @ax25_dev_device_down(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
