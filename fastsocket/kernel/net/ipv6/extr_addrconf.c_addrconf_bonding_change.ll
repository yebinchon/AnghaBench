; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_bonding_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_bonding_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.inet6_dev = type { i32 }

@NETDEV_BONDING_NEWTYPE = common dso_local global i64 0, align 8
@NETDEV_BONDING_OLDTYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @addrconf_bonding_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_bonding_change(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 (...) @ASSERT_RTNL()
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %7)
  store %struct.inet6_dev* %8, %struct.inet6_dev** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @NETDEV_BONDING_NEWTYPE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %14 = call i32 @ipv6_mc_remap(%struct.inet6_dev* %13)
  br label %23

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @NETDEV_BONDING_OLDTYPE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %21 = call i32 @ipv6_mc_unmap(%struct.inet6_dev* %20)
  br label %22

22:                                               ; preds = %19, %15
  br label %23

23:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @ipv6_mc_remap(%struct.inet6_dev*) #1

declare dso_local i32 @ipv6_mc_unmap(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
