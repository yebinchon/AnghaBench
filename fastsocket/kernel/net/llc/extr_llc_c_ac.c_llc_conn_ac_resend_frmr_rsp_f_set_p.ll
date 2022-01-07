; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_resend_frmr_rsp_f_set_p.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_resend_frmr_rsp_f_set_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32, %struct.llc_sap* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.llc_sap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.llc_pdu_sn = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4
@INCORRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_resend_frmr_rsp_f_set_p(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.llc_sock*, align 8
  %9 = alloca %struct.llc_sap*, align 8
  %10 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @ENOBUFS, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.llc_sock* @llc_sk(%struct.sock* %13)
  store %struct.llc_sock* %14, %struct.llc_sock** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @llc_pdu_decode_pf_bit(%struct.sk_buff* %15, i32* %5)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %19 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %22 = call %struct.sk_buff* @llc_alloc_frame(%struct.sock* %17, %struct.TYPE_6__* %20, i32 %21, i32 4)
  store %struct.sk_buff* %22, %struct.sk_buff** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %2
  %26 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %27 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %26, i32 0, i32 4
  %28 = load %struct.llc_sap*, %struct.llc_sap** %27, align 8
  store %struct.llc_sap* %28, %struct.llc_sap** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %29)
  store %struct.llc_pdu_sn* %30, %struct.llc_pdu_sn** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %33 = load %struct.llc_sap*, %struct.llc_sap** %9, align 8
  %34 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %38 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LLC_PDU_RSP, align 4
  %42 = call i32 @llc_pdu_header_init(%struct.sk_buff* %31, i32 %32, i32 %36, i32 %40, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %10, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %47 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %50 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @INCORRECT, align 4
  %53 = call i32 @llc_pdu_init_as_frmr_rsp(%struct.sk_buff* %43, %struct.llc_pdu_sn* %44, i32 %45, i32 %48, i32 %51, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %56 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %61 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %54, i32 %59, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %25
  br label %76

69:                                               ; preds = %25
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call i32 @llc_conn_send_pdu(%struct.sock* %70, %struct.sk_buff* %71)
  br label %73

73:                                               ; preds = %69, %2
  br label %74

74:                                               ; preds = %76, %73
  %75 = load i32, i32* %6, align 4
  ret i32 %75

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  br label %74
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @llc_pdu_decode_pf_bit(%struct.sk_buff*, i32*) #1

declare dso_local %struct.sk_buff* @llc_alloc_frame(%struct.sock*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_frmr_rsp(%struct.sk_buff*, %struct.llc_pdu_sn*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_mac_hdr_init(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @llc_conn_send_pdu(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
