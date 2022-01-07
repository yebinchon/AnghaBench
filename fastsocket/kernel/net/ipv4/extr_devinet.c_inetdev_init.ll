; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inetdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inetdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { %struct.TYPE_6__, i32*, %struct.net_device* }
%struct.TYPE_6__ = type { i32* }
%struct.net_device = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@FORWARDING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in_device* (%struct.net_device*)* @inetdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in_device* @inetdev_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.in_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.in_device* @kzalloc(i32 24, i32 %5)
  store %struct.in_device* %6, %struct.in_device** %3, align 8
  %7 = load %struct.in_device*, %struct.in_device** %3, align 8
  %8 = icmp ne %struct.in_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %66

10:                                               ; preds = %1
  %11 = load %struct.in_device*, %struct.in_device** %3, align 8
  %12 = getelementptr inbounds %struct.in_device, %struct.in_device* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.TYPE_7__* @dev_net(%struct.net_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(%struct.TYPE_6__* %12, i32 %17, i32 8)
  %19 = load %struct.in_device*, %struct.in_device** %3, align 8
  %20 = getelementptr inbounds %struct.in_device, %struct.in_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load %struct.in_device*, %struct.in_device** %3, align 8
  %24 = getelementptr inbounds %struct.in_device, %struct.in_device* %23, i32 0, i32 2
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32* @neigh_parms_alloc(%struct.net_device* %25, i32* @arp_tbl)
  %27 = load %struct.in_device*, %struct.in_device** %3, align 8
  %28 = getelementptr inbounds %struct.in_device, %struct.in_device* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = icmp eq i32* %26, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  br label %68

31:                                               ; preds = %10
  %32 = load %struct.in_device*, %struct.in_device** %3, align 8
  %33 = getelementptr inbounds %struct.in_device, %struct.in_device* %32, i32 0, i32 0
  %34 = load i32, i32* @FORWARDING, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @IPV4_DEVCONF(i32* %36, i32 %34)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @dev_disable_lro(%struct.net_device* %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i32 @dev_hold(%struct.net_device* %43)
  %45 = load %struct.in_device*, %struct.in_device** %3, align 8
  %46 = call i32 @in_dev_hold(%struct.in_device* %45)
  %47 = load %struct.in_device*, %struct.in_device** %3, align 8
  %48 = call i32 @devinet_sysctl_register(%struct.in_device* %47)
  %49 = load %struct.in_device*, %struct.in_device** %3, align 8
  %50 = call i32 @ip_mc_init_dev(%struct.in_device* %49)
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_UP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load %struct.in_device*, %struct.in_device** %3, align 8
  %59 = call i32 @ip_mc_up(%struct.in_device* %58)
  br label %60

60:                                               ; preds = %57, %42
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.in_device*, %struct.in_device** %3, align 8
  %65 = call i32 @rcu_assign_pointer(i32 %63, %struct.in_device* %64)
  br label %66

66:                                               ; preds = %68, %60, %9
  %67 = load %struct.in_device*, %struct.in_device** %3, align 8
  ret %struct.in_device* %67

68:                                               ; preds = %30
  %69 = load %struct.in_device*, %struct.in_device** %3, align 8
  %70 = call i32 @kfree(%struct.in_device* %69)
  store %struct.in_device* null, %struct.in_device** %3, align 8
  br label %66
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.in_device* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @dev_net(%struct.net_device*) #1

declare dso_local i32* @neigh_parms_alloc(%struct.net_device*, i32*) #1

declare dso_local i64 @IPV4_DEVCONF(i32*, i32) #1

declare dso_local i32 @dev_disable_lro(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @in_dev_hold(%struct.in_device*) #1

declare dso_local i32 @devinet_sysctl_register(%struct.in_device*) #1

declare dso_local i32 @ip_mc_init_dev(%struct.in_device*) #1

declare dso_local i32 @ip_mc_up(%struct.in_device*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.in_device*) #1

declare dso_local i32 @kfree(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
