; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c___netdev_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c___netdev_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }

@enable_skb_pool = common dso_local global i32 0, align 4
@ENABLE_COMMON_SKB_POOL = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@POOL_SKB = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Allocate pool skb 0x%p\0A\00", align 1
@SLAB_SKB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Allocate regular skb 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @enable_skb_pool, align 4
  %9 = load i32, i32* @ENABLE_COMMON_SKB_POOL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = call %struct.sk_buff* (...) @in_softirq()
  %14 = call i64 @likely(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* @NET_SKB_PAD, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @POOL_SKB, align 4
  %23 = load i32, i32* @NUMA_NO_NODE, align 4
  %24 = call %struct.sk_buff* @__alloc_skb(i64 %20, i32 %21, i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i32 @DPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %25)
  br label %38

27:                                               ; preds = %12, %3
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* @NET_SKB_PAD, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SLAB_SKB, align 4
  %34 = load i32, i32* @NUMA_NO_NODE, align 4
  %35 = call %struct.sk_buff* @__alloc_skb(i64 %31, i32 %32, i32 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %36)
  br label %38

38:                                               ; preds = %27, %16
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i64 @likely(%struct.sk_buff* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i64, i64* @NET_SKB_PAD, align 8
  %45 = call i32 @skb_reserve(%struct.sk_buff* %43, i64 %44)
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  store %struct.net_device* %46, %struct.net_device** %48, align 8
  br label %49

49:                                               ; preds = %42, %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %50
}

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @in_softirq(...) #1

declare dso_local %struct.sk_buff* @__alloc_skb(i64, i32, i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, %struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
