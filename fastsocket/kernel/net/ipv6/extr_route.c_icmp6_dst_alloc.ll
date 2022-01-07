; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_icmp6_dst_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_icmp6_dst_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32*, %struct.dst_entry*, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.neighbour = type { i32 }
%struct.in6_addr = type { i32 }
%struct.rt6_info = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.net_device*, %struct.neighbour*, %struct.inet6_dev* }
%struct.TYPE_6__ = type { %struct.dst_entry }
%struct.TYPE_5__ = type { i32, i32 }
%struct.inet6_dev = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RTAX_HOPLIMIT = common dso_local global i32 0, align 4
@RTAX_MTU = common dso_local global i32 0, align 4
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@ip6_output = common dso_local global i32 0, align 4
@icmp6_dst_lock = common dso_local global i32 0, align 4
@icmp6_dst_gc_list = common dso_local global %struct.dst_entry* null, align 8
@DST_HOST = common dso_local global i32 0, align 4
@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @icmp6_dst_alloc(%struct.net_device* %0, %struct.neighbour* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.neighbour*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.rt6_info*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  %10 = alloca %struct.net*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.neighbour* %1, %struct.neighbour** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %11)
  store %struct.inet6_dev* %12, %struct.inet6_dev** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.net* @dev_net(%struct.net_device* %13)
  store %struct.net* %14, %struct.net** %10, align 8
  %15 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %16 = icmp eq %struct.inet6_dev* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %124

21:                                               ; preds = %3
  %22 = load %struct.net*, %struct.net** %10, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call %struct.rt6_info* @ip6_dst_alloc(i32* %24)
  store %struct.rt6_info* %25, %struct.rt6_info** %8, align 8
  %26 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %27 = icmp eq %struct.rt6_info* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %33 = call i32 @in6_dev_put(%struct.inet6_dev* %32)
  br label %120

34:                                               ; preds = %21
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @dev_hold(%struct.net_device* %35)
  %37 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %38 = icmp ne %struct.neighbour* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %41 = call i32 @neigh_hold(%struct.neighbour* %40)
  br label %51

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %45 = call %struct.neighbour* @ndisc_get_neigh(%struct.net_device* %43, %struct.in6_addr* %44)
  store %struct.neighbour* %45, %struct.neighbour** %6, align 8
  %46 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %47 = call i64 @IS_ERR(%struct.neighbour* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store %struct.neighbour* null, %struct.neighbour** %6, align 8
  br label %50

50:                                               ; preds = %49, %42
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %54 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %53, i32 0, i32 2
  store %struct.net_device* %52, %struct.net_device** %54, align 8
  %55 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %56 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %57 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %56, i32 0, i32 4
  store %struct.inet6_dev* %55, %struct.inet6_dev** %57, align 8
  %58 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %59 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %60 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %59, i32 0, i32 3
  store %struct.neighbour* %58, %struct.neighbour** %60, align 8
  %61 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %62 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %63, i32 0, i32 4
  %65 = call i32 @atomic_set(i32* %64, i32 1)
  %66 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %67 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @RTAX_HOPLIMIT, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 255, i32* %74, align 4
  %75 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %76 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %75, i32 0, i32 2
  %77 = load %struct.net_device*, %struct.net_device** %76, align 8
  %78 = call i32 @ipv6_get_mtu(%struct.net_device* %77)
  %79 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %80 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @RTAX_MTU, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %78, i32* %87, align 4
  %88 = load %struct.net*, %struct.net** %10, align 8
  %89 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %90 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @dst_mtu(%struct.dst_entry* %91)
  %93 = call i32 @ipv6_advmss(%struct.net* %88, i32 %92)
  %94 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %95 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @RTAX_ADVMSS, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %93, i32* %102, align 4
  %103 = load i32, i32* @ip6_output, align 4
  %104 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %105 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %106, i32 0, i32 3
  store i32 %103, i32* %107, align 4
  %108 = call i32 @spin_lock_bh(i32* @icmp6_dst_lock)
  %109 = load %struct.dst_entry*, %struct.dst_entry** @icmp6_dst_gc_list, align 8
  %110 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %111 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %112, i32 0, i32 1
  store %struct.dst_entry* %109, %struct.dst_entry** %113, align 8
  %114 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %115 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store %struct.dst_entry* %116, %struct.dst_entry** @icmp6_dst_gc_list, align 8
  %117 = call i32 @spin_unlock_bh(i32* @icmp6_dst_lock)
  %118 = load %struct.net*, %struct.net** %10, align 8
  %119 = call i32 @fib6_force_start_gc(%struct.net* %118)
  br label %120

120:                                              ; preds = %51, %31
  %121 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %122 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store %struct.dst_entry* %123, %struct.dst_entry** %4, align 8
  br label %124

124:                                              ; preds = %120, %20
  %125 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %125
}

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.rt6_info* @ip6_dst_alloc(i32*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @neigh_hold(%struct.neighbour*) #1

declare dso_local %struct.neighbour* @ndisc_get_neigh(%struct.net_device*, %struct.in6_addr*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ipv6_get_mtu(%struct.net_device*) #1

declare dso_local i32 @ipv6_advmss(%struct.net*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fib6_force_start_gc(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
