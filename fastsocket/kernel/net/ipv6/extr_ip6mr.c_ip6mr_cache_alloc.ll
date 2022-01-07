; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }

@mrt_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAXMIFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc6_cache* (%struct.net*)* @ip6mr_cache_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc6_cache* @ip6mr_cache_alloc(%struct.net* %0) #0 {
  %2 = alloca %struct.mfc6_cache*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.mfc6_cache*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load i32, i32* @mrt_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mfc6_cache* @kmem_cache_zalloc(i32 %5, i32 %6)
  store %struct.mfc6_cache* %7, %struct.mfc6_cache** %4, align 8
  %8 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %9 = icmp eq %struct.mfc6_cache* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.mfc6_cache* null, %struct.mfc6_cache** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @MAXMIFS, align 4
  %13 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %14 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %18 = load %struct.net*, %struct.net** %3, align 8
  %19 = call i32 @mfc6_net_set(%struct.mfc6_cache* %17, %struct.net* %18)
  %20 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  store %struct.mfc6_cache* %20, %struct.mfc6_cache** %2, align 8
  br label %21

21:                                               ; preds = %11, %10
  %22 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  ret %struct.mfc6_cache* %22
}

declare dso_local %struct.mfc6_cache* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @mfc6_net_set(%struct.mfc6_cache*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
