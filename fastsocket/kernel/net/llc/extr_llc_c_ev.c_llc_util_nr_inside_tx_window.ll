; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ev.c_llc_util_nr_inside_tx_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ev.c_llc_util_nr_inside_tx_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }
%struct.llc_sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@LLC_2_SEQ_NBR_MODULO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @llc_util_nr_inside_tx_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_util_nr_inside_tx_window(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.llc_pdu_sn*, align 8
  %9 = alloca %struct.llc_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.llc_sock* @llc_sk(%struct.sock* %11)
  store %struct.llc_sock* %12, %struct.llc_sock** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %14 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_LOOPBACK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %53

22:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  %23 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %24 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %23, i32 0, i32 0
  %25 = call i64 @skb_queue_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %53

28:                                               ; preds = %22
  %29 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %30 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %29, i32 0, i32 0
  %31 = call %struct.sk_buff* @skb_peek(i32* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %32)
  store %struct.llc_pdu_sn* %33, %struct.llc_pdu_sn** %8, align 8
  %34 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %8, align 8
  %35 = call i32 @LLC_I_GET_NS(%struct.llc_pdu_sn* %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %37 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %36, i32 0, i32 0
  %38 = call %struct.sk_buff* @skb_peek_tail(i32* %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %39)
  store %struct.llc_pdu_sn* %40, %struct.llc_pdu_sn** %8, align 8
  %41 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %8, align 8
  %42 = call i32 @LLC_I_GET_NS(%struct.llc_pdu_sn* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* @LLC_2_SEQ_NBR_MODULO, align 4
  %48 = srem i32 %46, %47
  %49 = call i32 @llc_circular_between(i32 %43, i32 %44, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %28, %27, %21
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i32 @LLC_I_GET_NS(%struct.llc_pdu_sn*) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local i32 @llc_circular_between(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
