; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_clip.c_clip_device_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_clip.c_clip_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i64, i32* }
%struct.TYPE_2__ = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@clip_tbl = common dso_local global i32 0, align 4
@ARPHRD_ATM = common dso_local global i64 0, align 8
@clip_netdev_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"clip_device_event NETDEV_UP\0A\00", align 1
@act_up = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"clip_device_event NETDEV_DOWN\0A\00", align 1
@act_down = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"clip_device_event NETDEV_CHANGE*\0A\00", align 1
@act_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @clip_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
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
  br label %66

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call i32 @neigh_ifdown(i32* @clip_tbl, %struct.net_device* %22)
  %24 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %24, i32* %4, align 4
  br label %66

25:                                               ; preds = %17
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ARPHRD_ATM, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, @clip_netdev_ops
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %25
  %37 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %31
  %39 = load i64, i64* %6, align 8
  switch i64 %39, label %64 [
    i64 128, label %40
    i64 129, label %48
    i64 131, label %56
    i64 130, label %56
  ]

40:                                               ; preds = %38
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @act_up, align 4
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = call %struct.TYPE_2__* @PRIV(%struct.net_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @to_atmarpd(i32 %42, i32 %46, i32 0)
  br label %64

48:                                               ; preds = %38
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @act_down, align 4
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = call %struct.TYPE_2__* @PRIV(%struct.net_device* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @to_atmarpd(i32 %50, i32 %54, i32 0)
  br label %64

56:                                               ; preds = %38, %38
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @act_change, align 4
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = call %struct.TYPE_2__* @PRIV(%struct.net_device* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @to_atmarpd(i32 %58, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %38, %56, %48, %40
  %65 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %36, %21, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @neigh_ifdown(i32*, %struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @to_atmarpd(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @PRIV(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
