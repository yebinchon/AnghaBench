; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_rst_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_rst_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_conn_state_ev = type { i32, i32, i32 }
%struct.llc_pdu_un = type { i32 }
%struct.llc_sock = type { i32, i32 }

@LLC_2_PDU_RSP_FRMR = common dso_local global i32 0, align 4
@LLC_RESET_REASON_LOCAL = common dso_local global i32 0, align 4
@LLC_2_PDU_CMD_SABME = common dso_local global i32 0, align 4
@LLC_RESET_REASON_REMOTE = common dso_local global i32 0, align 4
@LLC_RESET_PRIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_rst_ind(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.llc_conn_state_ev*, align 8
  %8 = alloca %struct.llc_pdu_un*, align 8
  %9 = alloca %struct.llc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff* %10)
  store %struct.llc_conn_state_ev* %11, %struct.llc_conn_state_ev** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff* %12)
  store %struct.llc_pdu_un* %13, %struct.llc_pdu_un** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.llc_sock* @llc_sk(%struct.sock* %14)
  store %struct.llc_sock* %15, %struct.llc_sock** %9, align 8
  %16 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %7, align 8
  %17 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %62 [
    i32 130, label %19
    i32 132, label %51
    i32 129, label %51
    i32 128, label %51
    i32 131, label %51
  ]

19:                                               ; preds = %2
  %20 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %21 = call i32 @LLC_PDU_IS_RSP(%struct.llc_pdu_un* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %25 = call i32 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %29 = call i32 @LLC_U_PDU_RSP(%struct.llc_pdu_un* %28)
  %30 = load i32, i32* @LLC_2_PDU_RSP_FRMR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @LLC_RESET_REASON_LOCAL, align 4
  store i32 %33, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %50

34:                                               ; preds = %27, %23, %19
  %35 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %36 = call i32 @LLC_PDU_IS_CMD(%struct.llc_pdu_un* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %40 = call i32 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %8, align 8
  %44 = call i32 @LLC_U_PDU_CMD(%struct.llc_pdu_un* %43)
  %45 = load i32, i32* @LLC_2_PDU_CMD_SABME, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @LLC_RESET_REASON_REMOTE, align 4
  store i32 %48, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %42, %38, %34
  br label %50

50:                                               ; preds = %49, %32
  br label %62

51:                                               ; preds = %2, %2, %2, %2
  %52 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %53 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %56 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @LLC_RESET_REASON_LOCAL, align 4
  store i32 %60, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %51
  br label %62

62:                                               ; preds = %2, %61, %50
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %7, align 8
  %68 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @LLC_RESET_PRIM, align 4
  %70 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %7, align 8
  %71 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %62
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff*) #1

declare dso_local %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff*) #1

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @LLC_PDU_IS_RSP(%struct.llc_pdu_un*) #1

declare dso_local i32 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un*) #1

declare dso_local i32 @LLC_U_PDU_RSP(%struct.llc_pdu_un*) #1

declare dso_local i32 @LLC_PDU_IS_CMD(%struct.llc_pdu_un*) #1

declare dso_local i32 @LLC_U_PDU_CMD(%struct.llc_pdu_un*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
