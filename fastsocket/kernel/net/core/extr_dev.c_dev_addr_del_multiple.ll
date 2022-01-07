; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_addr_del_multiple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_addr_del_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NETDEV_CHANGEADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_addr_del_multiple(%struct.net_device* %0, %struct.net_device* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i8 %2, i8* %7, align 1
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.net_device*, %struct.net_device** %6, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i8, i8* %7, align 1
  %28 = call i32 @__hw_addr_del_multiple(i32* %21, i32* %23, i64 %26, i8 zeroext %27)
  %29 = load i32, i32* @NETDEV_CHANGEADDR, align 4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i32 @call_netdevice_notifiers(i32 %29, %struct.net_device* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @__hw_addr_del_multiple(i32*, i32*, i64, i8 zeroext) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
