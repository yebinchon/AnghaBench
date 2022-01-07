; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netdev_set_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netdev_set_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device* }

@EBUSY = common dso_local global i32 0, align 4
@IFF_SLAVE = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_set_master(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %13
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @dev_hold(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  store %struct.net_device* %23, %struct.net_device** %25, align 8
  %26 = call i32 (...) @synchronize_net()
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 @dev_put(%struct.net_device* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @IFF_SLAVE, align 4
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %48

41:                                               ; preds = %32
  %42 = load i32, i32* @IFF_SLAVE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %41, %35
  %49 = load i32, i32* @RTM_NEWLINK, align 4
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = load i32, i32* @IFF_SLAVE, align 4
  %52 = call i32 @rtmsg_ifinfo(i32 %49, %struct.net_device* %50, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @rtmsg_ifinfo(i32, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
