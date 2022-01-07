; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_add_dflt_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_add_dflt_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.fib6_config = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_ADDRCONF = common dso_local global i32 0, align 4
@RTF_DEFAULT = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@IP6_RT_PRIO_USER = common dso_local global i32 0, align 4
@RT6_TABLE_DFLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rt6_info* @rt6_add_dflt_router(%struct.in6_addr* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib6_config, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %7, i32 0, i32 0
  %9 = load i32, i32* @RTF_GATEWAY, align 4
  %10 = load i32, i32* @RTF_ADDRCONF, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RTF_DEFAULT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RTF_UP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RTF_EXPIRES, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @RTF_PREF(i32 %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %8, align 8
  %21 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %7, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %7, i32 0, i32 2
  %23 = bitcast %struct.TYPE_2__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @dev_net(%struct.net_device* %25)
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %7, i32 0, i32 3
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %7, i32 0, i32 4
  %32 = load i32, i32* @IP6_RT_PRIO_USER, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %7, i32 0, i32 5
  %34 = load i32, i32* @RT6_TABLE_DFLT, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %7, i32 0, i32 1
  %36 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %37 = call i32 @ipv6_addr_copy(i32* %35, %struct.in6_addr* %36)
  %38 = call i32 @ip6_route_add(%struct.fib6_config* %7)
  %39 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = call %struct.rt6_info* @rt6_get_dflt_router(%struct.in6_addr* %39, %struct.net_device* %40)
  ret %struct.rt6_info* %41
}

declare dso_local i32 @RTF_PREF(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ip6_route_add(%struct.fib6_config*) #1

declare dso_local %struct.rt6_info* @rt6_get_dflt_router(%struct.in6_addr*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
