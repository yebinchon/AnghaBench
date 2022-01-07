; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_s_ev.c_llc_sap_ev_rx_xid_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_s_ev.c_llc_sap_ev_rx_xid_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sap_state_ev = type { i64 }
%struct.llc_pdu_un = type { i32 }

@LLC_SAP_EV_TYPE_PDU = common dso_local global i64 0, align 8
@LLC_1_PDU_CMD_XID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_sap_ev_rx_xid_r(%struct.llc_sap* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_sap*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_sap_state_ev*, align 8
  %6 = alloca %struct.llc_pdu_un*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff* %7)
  store %struct.llc_sap_state_ev* %8, %struct.llc_sap_state_ev** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff* %9)
  store %struct.llc_pdu_un* %10, %struct.llc_pdu_un** %6, align 8
  %11 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %12 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LLC_SAP_EV_TYPE_PDU, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %6, align 8
  %18 = call i64 @LLC_PDU_IS_RSP(%struct.llc_pdu_un* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %6, align 8
  %22 = call i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %6, align 8
  %26 = call i64 @LLC_U_PDU_RSP(%struct.llc_pdu_un* %25)
  %27 = load i64, i64* @LLC_1_PDU_CMD_XID, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %24, %20, %16, %2
  %30 = phi i1 [ false, %20 ], [ false, %16 ], [ false, %2 ], [ %28, %24 ]
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  ret i32 %32
}

declare dso_local %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff*) #1

declare dso_local %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff*) #1

declare dso_local i64 @LLC_PDU_IS_RSP(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_U_PDU_RSP(%struct.llc_pdu_un*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
