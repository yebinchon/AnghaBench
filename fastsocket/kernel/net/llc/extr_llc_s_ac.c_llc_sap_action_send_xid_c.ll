; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_s_ac.c_llc_sap_action_send_xid_c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_s_ac.c_llc_sap_action_send_xid_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sap_state_ev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_CMD = common dso_local global i32 0, align 4
@LLC_XID_NULL_CLASS_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_sap_action_send_xid_c(%struct.llc_sap* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_sap*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_sap_state_ev*, align 8
  %6 = alloca i32, align 4
  store %struct.llc_sap* %0, %struct.llc_sap** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff* %7)
  store %struct.llc_sap_state_ev* %8, %struct.llc_sap_state_ev** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %11 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %12 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %16 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LLC_PDU_CMD, align 4
  %20 = call i32 @llc_pdu_header_init(%struct.sk_buff* %9, i32 %10, i32 %14, i32 %18, i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @LLC_XID_NULL_CLASS_2, align 4
  %23 = call i32 @llc_pdu_init_as_xid_cmd(%struct.sk_buff* %21, i32 %22, i32 0)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %26 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %30 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %24, i32 %28, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @dev_queue_xmit(%struct.sk_buff* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %2
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff*) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_xid_cmd(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @llc_mac_hdr_init(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
