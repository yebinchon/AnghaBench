; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_find_idev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_find_idev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32 }
%struct.net_device = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet6_dev* (%struct.net_device*)* @ipv6_find_idev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet6_dev* @ipv6_find_idev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %6)
  store %struct.inet6_dev* %7, %struct.inet6_dev** %4, align 8
  %8 = icmp eq %struct.inet6_dev* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.inet6_dev* @ipv6_add_dev(%struct.net_device* %10)
  store %struct.inet6_dev* %11, %struct.inet6_dev** %4, align 8
  %12 = icmp eq %struct.inet6_dev* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store %struct.inet6_dev* null, %struct.inet6_dev** %2, align 8
  br label %27

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_UP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %24 = call i32 @ipv6_mc_up(%struct.inet6_dev* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  store %struct.inet6_dev* %26, %struct.inet6_dev** %2, align 8
  br label %27

27:                                               ; preds = %25, %13
  %28 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  ret %struct.inet6_dev* %28
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local %struct.inet6_dev* @ipv6_add_dev(%struct.net_device*) #1

declare dso_local i32 @ipv6_mc_up(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
