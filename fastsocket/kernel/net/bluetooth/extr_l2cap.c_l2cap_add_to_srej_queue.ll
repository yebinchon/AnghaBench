; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_add_to_srej_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_add_to_srej_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, i64, i64)* @l2cap_add_to_srej_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_add_to_srej_queue(%struct.sock* %0, %struct.sk_buff* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %10, i64* %13, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 %14, i64* %17, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call i32 @SREJ_QUEUE(%struct.sock* %18)
  %20 = call %struct.sk_buff* @skb_peek(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = call i32 @SREJ_QUEUE(%struct.sock* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @__skb_queue_tail(i32 %25, %struct.sk_buff* %26)
  br label %61

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %50, %28
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call i32 @SREJ_QUEUE(%struct.sock* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @__skb_queue_before(i32 %38, %struct.sk_buff* %39, %struct.sk_buff* %40)
  br label %61

42:                                               ; preds = %29
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = call i32 @SREJ_QUEUE(%struct.sock* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = call i64 @skb_queue_is_last(i32 %44, %struct.sk_buff* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %56

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = call i32 @SREJ_QUEUE(%struct.sock* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = call %struct.sk_buff* @skb_queue_next(i32 %52, %struct.sk_buff* %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %9, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %29, label %56

56:                                               ; preds = %50, %48
  %57 = load %struct.sock*, %struct.sock** %5, align 8
  %58 = call i32 @SREJ_QUEUE(%struct.sock* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i32 @__skb_queue_tail(i32 %58, %struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %56, %36, %23
  ret void
}

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32) #1

declare dso_local i32 @SREJ_QUEUE(%struct.sock*) #1

declare dso_local i32 @__skb_queue_tail(i32, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_before(i32, %struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i64 @skb_queue_is_last(i32, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_queue_next(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
