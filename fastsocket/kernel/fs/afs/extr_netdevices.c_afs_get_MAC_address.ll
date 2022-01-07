; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_netdevices.c_afs_get_MAC_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_netdevices.c_afs_get_MAC_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_get_MAC_address(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @ETH_ALEN, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = call i32 (...) @rtnl_lock()
  %15 = load i32, i32* @ARPHRD_ETHER, align 4
  %16 = call %struct.net_device* @__dev_getfirstbyhwtype(i32* @init_net, i32 %15)
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @memcpy(i32* %20, i32 %23, i64 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %19, %2
  %27 = call i32 (...) @rtnl_unlock()
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.net_device* @__dev_getfirstbyhwtype(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
