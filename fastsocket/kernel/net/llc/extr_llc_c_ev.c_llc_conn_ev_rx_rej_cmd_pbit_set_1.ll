; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ev.c_llc_conn_ev_rx_rej_cmd_pbit_set_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ev.c_llc_conn_ev_rx_rej_cmd_pbit_set_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }

@LLC_2_PDU_CMD_REJ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ev_rx_rej_cmd_pbit_set_1(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %6)
  store %struct.llc_pdu_sn* %7, %struct.llc_pdu_sn** %5, align 8
  %8 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %9 = call i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_sn* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %13 = call i64 @LLC_PDU_TYPE_IS_S(%struct.llc_pdu_sn* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %17 = call i64 @LLC_S_PF_IS_1(%struct.llc_pdu_sn* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %21 = call i64 @LLC_S_PDU_CMD(%struct.llc_pdu_sn* %20)
  %22 = load i64, i64* @LLC_2_PDU_CMD_REJ, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %19, %15, %11, %2
  %25 = phi i1 [ false, %15 ], [ false, %11 ], [ false, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  ret i32 %27
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_S(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_S_PF_IS_1(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_S_PDU_CMD(%struct.llc_pdu_sn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
