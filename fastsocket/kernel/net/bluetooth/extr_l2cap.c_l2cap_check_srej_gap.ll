; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_check_srej_gap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_check_srej_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@L2CAP_CTRL_SAR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @l2cap_check_srej_gap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_check_srej_gap(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @SREJ_QUEUE(%struct.sock* %8)
  %10 = call %struct.sk_buff* @skb_peek(i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %7
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %47

20:                                               ; preds = %12
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call i32 @SREJ_QUEUE(%struct.sock* %21)
  %23 = call %struct.sk_buff* @skb_dequeue(i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @L2CAP_CTRL_SAR_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @l2cap_sar_reassembly_sdu(%struct.sock* %32, %struct.sk_buff* %33, i32 %34)
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = srem i32 %40, 64
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i64, i64* %4, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %4, align 8
  br label %7

47:                                               ; preds = %19, %7
  ret void
}

declare dso_local %struct.sk_buff* @skb_peek(i32) #1

declare dso_local i32 @SREJ_QUEUE(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32) #1

declare dso_local i32 @l2cap_sar_reassembly_sdu(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
