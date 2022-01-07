; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_alloc_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_alloc_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.in6_addr = type { i32 }

@RTF_CACHE = common dso_local global i32 0, align 4
@DST_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.rt6_info*, %struct.in6_addr*)* @rt6_alloc_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @rt6_alloc_clone(%struct.rt6_info* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.rt6_info*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %6 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %7 = call %struct.rt6_info* @ip6_rt_copy(%struct.rt6_info* %6)
  store %struct.rt6_info* %7, %struct.rt6_info** %5, align 8
  %8 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %9 = icmp ne %struct.rt6_info* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %12 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %15 = call i32 @ipv6_addr_copy(i32* %13, %struct.in6_addr* %14)
  %16 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %17 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 128, i32* %18, align 4
  %19 = load i32, i32* @RTF_CACHE, align 4
  %20 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %21 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @DST_HOST, align 4
  %25 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %26 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %32 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @neigh_clone(i32 %33)
  %35 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %36 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %10, %2
  %38 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  ret %struct.rt6_info* %38
}

declare dso_local %struct.rt6_info* @ip6_rt_copy(%struct.rt6_info*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local i32 @neigh_clone(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
