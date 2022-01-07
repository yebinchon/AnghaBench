; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ev.c_llc_conn_ev_rx_i_rsp_fbit_set_x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ev.c_llc_conn_ev_rx_i_rsp_fbit_set_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ev_rx_i_rsp_fbit_set_x(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %6)
  store %struct.llc_pdu_sn* %7, %struct.llc_pdu_sn** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64 @llc_conn_space(%struct.sock* %8, %struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %14 = call i64 @LLC_PDU_IS_RSP(%struct.llc_pdu_sn* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %18 = call i64 @LLC_PDU_TYPE_IS_I(%struct.llc_pdu_sn* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %22 = call i64 @LLC_I_GET_NS(%struct.llc_pdu_sn* %21)
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call %struct.TYPE_2__* @llc_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %22, %26
  br label %28

28:                                               ; preds = %20, %16, %12, %2
  %29 = phi i1 [ false, %16 ], [ false, %12 ], [ false, %2 ], [ %27, %20 ]
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 1
  ret i32 %31
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i64 @llc_conn_space(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @LLC_PDU_IS_RSP(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_I(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_I_GET_NS(%struct.llc_pdu_sn*) #1

declare dso_local %struct.TYPE_2__* @llc_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
