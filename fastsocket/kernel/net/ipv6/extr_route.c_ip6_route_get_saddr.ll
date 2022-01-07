; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_route_get_saddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_route_get_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rt6_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { i32* }
%struct.dst_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_route_get_saddr(%struct.net* %0, %struct.rt6_info* %1, %struct.in6_addr* %2, i32 %3, %struct.in6_addr* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.rt6_info*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.inet6_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.rt6_info* %1, %struct.rt6_info** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.in6_addr* %4, %struct.in6_addr** %10, align 8
  %13 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %14 = bitcast %struct.rt6_info* %13 to %struct.dst_entry*
  %15 = call %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry* %14)
  store %struct.inet6_dev* %15, %struct.inet6_dev** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %17 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %23 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %24 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @ipv6_addr_copy(%struct.in6_addr* %22, i32* %25)
  br label %42

27:                                               ; preds = %5
  %28 = load %struct.net*, %struct.net** %6, align 8
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %30 = icmp ne %struct.inet6_dev* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %33 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32* [ %34, %31 ], [ null, %35 ]
  %38 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %41 = call i32 @ipv6_dev_get_saddr(%struct.net* %28, i32* %37, %struct.in6_addr* %38, i32 %39, %struct.in6_addr* %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %36, %21
  %43 = load i32, i32* %12, align 4
  ret i32 %43
}

declare dso_local %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, i32*) #1

declare dso_local i32 @ipv6_dev_get_saddr(%struct.net*, i32*, %struct.in6_addr*, i32, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
