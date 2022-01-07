; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_pdu.c_llc_pdu_init_as_frmr_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_pdu.c_llc_pdu_init_as_frmr_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32, i32 }
%struct.llc_frmr_info = type { i32 }

@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_2_PDU_RSP_FRMR = common dso_local global i32 0, align 4
@LLC_U_PF_BIT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llc_pdu_init_as_frmr_rsp(%struct.sk_buff* %0, %struct.llc_pdu_sn* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.llc_pdu_sn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.llc_frmr_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.llc_pdu_sn* %1, %struct.llc_pdu_sn** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %17)
  store %struct.llc_pdu_sn* %18, %struct.llc_pdu_sn** %16, align 8
  %19 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %20 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %16, align 8
  %21 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @LLC_2_PDU_RSP_FRMR, align 4
  %23 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %16, align 8
  %24 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 1
  %29 = shl i32 %28, 4
  %30 = load i32, i32* @LLC_U_PF_BIT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %16, align 8
  %33 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %16, align 8
  %37 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %36, i32 0, i32 1
  %38 = bitcast i32* %37 to %struct.llc_frmr_info*
  store %struct.llc_frmr_info* %38, %struct.llc_frmr_info** %13, align 8
  %39 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %8, align 8
  %40 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %39, i32 0, i32 0
  store i32* %40, i32** %15, align 8
  %41 = load %struct.llc_frmr_info*, %struct.llc_frmr_info** %13, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @FRMR_INFO_SET_REJ_CNTRL(%struct.llc_frmr_info* %41, i32* %42)
  %44 = load %struct.llc_frmr_info*, %struct.llc_frmr_info** %13, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @FRMR_INFO_SET_Vs(%struct.llc_frmr_info* %44, i32 %45)
  %47 = load %struct.llc_frmr_info*, %struct.llc_frmr_info** %13, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @FRMR_INFO_SET_Vr(%struct.llc_frmr_info* %47, i32 %48)
  %50 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %8, align 8
  %51 = call i32 @llc_pdu_get_pf_bit(%struct.llc_pdu_sn* %50)
  store i32 %51, i32* %14, align 4
  %52 = load %struct.llc_frmr_info*, %struct.llc_frmr_info** %13, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @FRMR_INFO_SET_C_R_BIT(%struct.llc_frmr_info* %52, i32 %53)
  %55 = load %struct.llc_frmr_info*, %struct.llc_frmr_info** %13, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @FRMR_INFO_SET_INVALID_PDU_CTRL_IND(%struct.llc_frmr_info* %55, i32 %56)
  %58 = load %struct.llc_frmr_info*, %struct.llc_frmr_info** %13, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @FRMR_INFO_SET_INVALID_PDU_INFO_IND(%struct.llc_frmr_info* %58, i32 %59)
  %61 = load %struct.llc_frmr_info*, %struct.llc_frmr_info** %13, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @FRMR_INFO_SET_PDU_INFO_2LONG_IND(%struct.llc_frmr_info* %61, i32 %62)
  %64 = load %struct.llc_frmr_info*, %struct.llc_frmr_info** %13, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @FRMR_INFO_SET_PDU_INVALID_Nr_IND(%struct.llc_frmr_info* %64, i32 %65)
  %67 = load %struct.llc_frmr_info*, %struct.llc_frmr_info** %13, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @FRMR_INFO_SET_PDU_INVALID_Ns_IND(%struct.llc_frmr_info* %67, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = call i32 @skb_put(%struct.sk_buff* %70, i32 4)
  ret void
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i32 @FRMR_INFO_SET_REJ_CNTRL(%struct.llc_frmr_info*, i32*) #1

declare dso_local i32 @FRMR_INFO_SET_Vs(%struct.llc_frmr_info*, i32) #1

declare dso_local i32 @FRMR_INFO_SET_Vr(%struct.llc_frmr_info*, i32) #1

declare dso_local i32 @llc_pdu_get_pf_bit(%struct.llc_pdu_sn*) #1

declare dso_local i32 @FRMR_INFO_SET_C_R_BIT(%struct.llc_frmr_info*, i32) #1

declare dso_local i32 @FRMR_INFO_SET_INVALID_PDU_CTRL_IND(%struct.llc_frmr_info*, i32) #1

declare dso_local i32 @FRMR_INFO_SET_INVALID_PDU_INFO_IND(%struct.llc_frmr_info*, i32) #1

declare dso_local i32 @FRMR_INFO_SET_PDU_INFO_2LONG_IND(%struct.llc_frmr_info*, i32) #1

declare dso_local i32 @FRMR_INFO_SET_PDU_INVALID_Nr_IND(%struct.llc_frmr_info*, i32) #1

declare dso_local i32 @FRMR_INFO_SET_PDU_INVALID_Ns_IND(%struct.llc_frmr_info*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
