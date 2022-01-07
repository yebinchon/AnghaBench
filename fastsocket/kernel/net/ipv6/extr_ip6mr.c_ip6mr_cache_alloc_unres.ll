; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_cache_alloc_unres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_cache_alloc_unres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.net = type { i32 }

@mrt_cachep = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc6_cache* (%struct.net*)* @ip6mr_cache_alloc_unres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc6_cache* @ip6mr_cache_alloc_unres(%struct.net* %0) #0 {
  %2 = alloca %struct.mfc6_cache*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.mfc6_cache*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load i32, i32* @mrt_cachep, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.mfc6_cache* @kmem_cache_zalloc(i32 %5, i32 %6)
  store %struct.mfc6_cache* %7, %struct.mfc6_cache** %4, align 8
  %8 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %9 = icmp eq %struct.mfc6_cache* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.mfc6_cache* null, %struct.mfc6_cache** %2, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %13 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = call i32 @skb_queue_head_init(i32* %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 10, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %23 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %27 = load %struct.net*, %struct.net** %3, align 8
  %28 = call i32 @mfc6_net_set(%struct.mfc6_cache* %26, %struct.net* %27)
  %29 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  store %struct.mfc6_cache* %29, %struct.mfc6_cache** %2, align 8
  br label %30

30:                                               ; preds = %11, %10
  %31 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  ret %struct.mfc6_cache* %31
}

declare dso_local %struct.mfc6_cache* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @mfc6_net_set(%struct.mfc6_cache*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
