; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_kfree_pool_skb_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_kfree_pool_skb_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.skb_pool = type { i32, i32 }

@skb_pools = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Free clone pool skb[%d] 0x%p on CPU %d into free list\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Free clone pool skb[%d] 0x%p on CPU %d into recycle list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @kfree_pool_skb_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kfree_pool_skb_clone(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.skb_pool*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i32, i32* @skb_pools, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.skb_pool* @per_cpu_ptr(i32 %10, i64 %13)
  store %struct.skb_pool* %14, %struct.skb_pool** %3, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 (...) @smp_processor_id()
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %1
  %24 = call i32 (...) @in_softirq()
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.skb_pool*, %struct.skb_pool** %3, align 8
  %29 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %28, i32 0, i32 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %31 = call i32 @__skb_queue_head(i32* %29, %struct.sk_buff* %30)
  br label %39

32:                                               ; preds = %23
  %33 = call i32 (...) @preempt_disable()
  %34 = load %struct.skb_pool*, %struct.skb_pool** %3, align 8
  %35 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %34, i32 0, i32 1
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %37 = call i32 @__skb_queue_head(i32* %35, %struct.sk_buff* %36)
  %38 = call i32 (...) @preempt_enable()
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %44 = call i64 (...) @smp_processor_id()
  %45 = call i32 @DPRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %42, %struct.sk_buff* %43, i64 %44)
  br label %57

46:                                               ; preds = %1
  %47 = load %struct.skb_pool*, %struct.skb_pool** %3, align 8
  %48 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %47, i32 0, i32 0
  %49 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %50 = call i32 @skb_queue_head(i32* %48, %struct.sk_buff* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %55 = call i64 (...) @smp_processor_id()
  %56 = call i32 @DPRINTK(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %53, %struct.sk_buff* %54, i64 %55)
  br label %57

57:                                               ; preds = %46, %39
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.skb_pool* @per_cpu_ptr(i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @in_softirq(...) #1

declare dso_local i32 @__skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @DPRINTK(i8*, i64, %struct.sk_buff*, i64) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
