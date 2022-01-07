; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_pool_get_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_pool_get_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skb_pool = type { i32 }

@nr_cpu_ids = common dso_local global i64 0, align 8
@skb_pools = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.skb_pool* (i64*)* @skb_pool_get_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.skb_pool* @skb_pool_get_online(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.skb_pool*, align 8
  store i64* %0, i64** %2, align 8
  store %struct.skb_pool* null, %struct.skb_pool** %3, align 8
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i64*, i64** %2, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @nr_cpu_ids, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load i64*, i64** %2, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @cpu_online(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* @skb_pools, align 4
  %16 = load i64*, i64** %2, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.skb_pool* @per_cpu_ptr(i32 %15, i64 %17)
  store %struct.skb_pool* %18, %struct.skb_pool** %3, align 8
  br label %24

19:                                               ; preds = %9
  %20 = load i64*, i64** %2, align 8
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  br label %23

23:                                               ; preds = %19
  br label %4

24:                                               ; preds = %14, %4
  %25 = load i64*, i64** %2, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* @cpu_id, align 8
  %27 = load %struct.skb_pool*, %struct.skb_pool** %3, align 8
  ret %struct.skb_pool* %27
}

declare dso_local i64 @cpu_online(i64) #1

declare dso_local %struct.skb_pool* @per_cpu_ptr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
