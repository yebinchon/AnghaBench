; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c_find_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c_find_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netpoll = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@skb_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.netpoll*, i32, i32)* @find_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @find_skb(%struct.netpoll* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netpoll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.netpoll* %0, %struct.netpoll** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32 (...) @zap_completion_queue()
  %11 = call i32 (...) @refill_skbs()
  br label %12

12:                                               ; preds = %27, %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @alloc_skb(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call %struct.sk_buff* @skb_dequeue(i32* @skb_pool)
  store %struct.sk_buff* %19, %struct.sk_buff** %9, align 8
  br label %20

20:                                               ; preds = %18, %12
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.netpoll*, %struct.netpoll** %5, align 8
  %29 = call i32 @netpoll_poll(%struct.netpoll* %28)
  br label %12

30:                                               ; preds = %23
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %39

31:                                               ; preds = %20
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = call i32 @atomic_set(i32* %33, i32 1)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @skb_reserve(%struct.sk_buff* %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %4, align 8
  br label %39

39:                                               ; preds = %31, %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %40
}

declare dso_local i32 @zap_completion_queue(...) #1

declare dso_local i32 @refill_skbs(...) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @netpoll_poll(%struct.netpoll*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
