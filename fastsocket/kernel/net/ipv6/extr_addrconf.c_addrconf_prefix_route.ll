; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_prefix_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_prefix_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.net_device = type { i64, i32, i32 }
%struct.fib6_config = type { i64, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RTF_UP = common dso_local global i32 0, align 4
@RTPROT_KERNEL = common dso_local global i32 0, align 4
@IP6_RT_PRIO_ADDRCONF = common dso_local global i32 0, align 4
@RT6_TABLE_PREFIX = common dso_local global i32 0, align 4
@ARPHRD_SIT = common dso_local global i64 0, align 8
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@RTF_NONEXTHOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in6_addr*, i32, %struct.net_device*, i64, i32)* @addrconf_prefix_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_prefix_route(%struct.in6_addr* %0, i32 %1, %struct.net_device* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib6_config, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 2
  %17 = load i32, i32* @RTF_UP, align 4
  %18 = load i32, i32* %10, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 3
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 4
  %22 = load i32, i32* @RTPROT_KERNEL, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = call i32 @dev_net(%struct.net_device* %25)
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 6
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 7
  %32 = load i32, i32* @IP6_RT_PRIO_ADDRCONF, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 8
  %34 = load i32, i32* @RT6_TABLE_PREFIX, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 3
  %36 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %37 = call i32 @ipv6_addr_copy(i32* %35, %struct.in6_addr* %36)
  %38 = call i32 @ip6_route_add(%struct.fib6_config* %11)
  ret void
}

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ip6_route_add(%struct.fib6_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
