; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_add_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_add_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@br_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_add_bridge(%struct.net* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.net_device* @new_bridge_dev(%struct.net* %8, i8* %9)
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = call i32 (...) @rtnl_lock()
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strchr(i32 %20, i8 signext 37)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_alloc_name(%struct.net_device* %24, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %53

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %34, i32* @br_type)
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @register_netdevice(%struct.net_device* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %53

41:                                               ; preds = %33
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call i32 @br_sysfs_addbr(%struct.net_device* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call i32 @unregister_netdevice(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %53, %49
  %51 = call i32 (...) @rtnl_unlock()
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %40, %31
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = call i32 @free_netdev(%struct.net_device* %54)
  br label %50

56:                                               ; preds = %50, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.net_device* @new_bridge_dev(%struct.net*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @dev_alloc_name(%struct.net_device*, i32) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @br_sysfs_addbr(%struct.net_device*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
