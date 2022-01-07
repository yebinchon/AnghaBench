; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_disc_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_disc_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_conn_state_ev = type { i64, i32, i32 }
%struct.llc_pdu_un = type { i32 }

@LLC_CONN_EV_TYPE_PDU = common dso_local global i64 0, align 8
@LLC_2_PDU_RSP_DM = common dso_local global i64 0, align 8
@LLC_DISC_REASON_RX_DM_RSP_PDU = common dso_local global i32 0, align 4
@LLC_2_PDU_CMD_DISC = common dso_local global i64 0, align 8
@LLC_DISC_REASON_RX_DISC_CMD_PDU = common dso_local global i32 0, align 4
@LLC_CONN_EV_TYPE_ACK_TMR = common dso_local global i64 0, align 8
@LLC_DISC_REASON_ACK_TMR_EXP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LLC_DISC_PRIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_disc_ind(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_conn_state_ev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.llc_pdu_un*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff* %9)
  store %struct.llc_conn_state_ev* %10, %struct.llc_conn_state_ev** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %5, align 8
  %12 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LLC_CONN_EV_TYPE_PDU, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff* %17)
  store %struct.llc_pdu_un* %18, %struct.llc_pdu_un** %8, align 8
  %19 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %20 = call i64 @LLC_PDU_IS_RSP(%struct.llc_pdu_un* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %24 = call i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %28 = call i64 @LLC_U_PDU_RSP(%struct.llc_pdu_un* %27)
  %29 = load i64, i64* @LLC_2_PDU_RSP_DM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @LLC_DISC_REASON_RX_DM_RSP_PDU, align 4
  store i32 %32, i32* %6, align 4
  br label %49

33:                                               ; preds = %26, %22, %16
  %34 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %35 = call i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_un* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %39 = call i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %43 = call i64 @LLC_U_PDU_CMD(%struct.llc_pdu_un* %42)
  %44 = load i64, i64* @LLC_2_PDU_CMD_DISC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @LLC_DISC_REASON_RX_DISC_CMD_PDU, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %41, %37, %33
  br label %49

49:                                               ; preds = %48, %31
  br label %62

50:                                               ; preds = %2
  %51 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %5, align 8
  %52 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LLC_CONN_EV_TYPE_ACK_TMR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @LLC_DISC_REASON_ACK_TMR_EXP, align 4
  store i32 %57, i32* %6, align 4
  br label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %56
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %5, align 8
  %68 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @LLC_DISC_PRIM, align 4
  %70 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %5, align 8
  %71 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %65, %62
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff*) #1

declare dso_local %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff*) #1

declare dso_local i64 @LLC_PDU_IS_RSP(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_U_PDU_RSP(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_U_PDU_CMD(%struct.llc_pdu_un*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
