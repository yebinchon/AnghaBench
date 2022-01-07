; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_cache_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { i32, i32, %struct.mfc6_cache* }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mfc6_cache** }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc6_cache* (%struct.net*, %struct.in6_addr*, %struct.in6_addr*)* @ip6mr_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc6_cache* @ip6mr_cache_find(%struct.net* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mfc6_cache*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %9 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %10 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %11 = call i32 @MFC6_HASH(%struct.in6_addr* %9, %struct.in6_addr* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.net*, %struct.net** %4, align 8
  %13 = getelementptr inbounds %struct.net, %struct.net* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mfc6_cache**, %struct.mfc6_cache*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mfc6_cache*, %struct.mfc6_cache** %15, i64 %17
  %19 = load %struct.mfc6_cache*, %struct.mfc6_cache** %18, align 8
  store %struct.mfc6_cache* %19, %struct.mfc6_cache** %8, align 8
  br label %20

20:                                               ; preds = %37, %3
  %21 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  %22 = icmp ne %struct.mfc6_cache* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  %25 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %24, i32 0, i32 1
  %26 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %27 = call i64 @ipv6_addr_equal(i32* %25, %struct.in6_addr* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  %31 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %30, i32 0, i32 0
  %32 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %33 = call i64 @ipv6_addr_equal(i32* %31, %struct.in6_addr* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %41

36:                                               ; preds = %29, %23
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  %39 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %38, i32 0, i32 2
  %40 = load %struct.mfc6_cache*, %struct.mfc6_cache** %39, align 8
  store %struct.mfc6_cache* %40, %struct.mfc6_cache** %8, align 8
  br label %20

41:                                               ; preds = %35, %20
  %42 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  ret %struct.mfc6_cache* %42
}

declare dso_local i32 @MFC6_HASH(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
