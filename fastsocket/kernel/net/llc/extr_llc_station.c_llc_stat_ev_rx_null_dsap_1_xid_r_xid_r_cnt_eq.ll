; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_stat_ev_rx_null_dsap_1_xid_r_xid_r_cnt_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_stat_ev_rx_null_dsap_1_xid_r_xid_r_cnt_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_station_state_ev = type { i64 }
%struct.llc_pdu_un = type { i32 }

@LLC_STATION_EV_TYPE_PDU = common dso_local global i64 0, align 8
@LLC_1_PDU_CMD_XID = common dso_local global i64 0, align 8
@llc_main_station = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @llc_stat_ev_rx_null_dsap_1_xid_r_xid_r_cnt_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_stat_ev_rx_null_dsap_1_xid_r_xid_r_cnt_eq(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.llc_station_state_ev*, align 8
  %4 = alloca %struct.llc_pdu_un*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call %struct.llc_station_state_ev* @llc_station_ev(%struct.sk_buff* %5)
  store %struct.llc_station_state_ev* %6, %struct.llc_station_state_ev** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff* %7)
  store %struct.llc_pdu_un* %8, %struct.llc_pdu_un** %4, align 8
  %9 = load %struct.llc_station_state_ev*, %struct.llc_station_state_ev** %3, align 8
  %10 = getelementptr inbounds %struct.llc_station_state_ev, %struct.llc_station_state_ev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LLC_STATION_EV_TYPE_PDU, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %4, align 8
  %16 = call i64 @LLC_PDU_IS_RSP(%struct.llc_pdu_un* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %4, align 8
  %20 = call i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %4, align 8
  %24 = call i64 @LLC_U_PDU_RSP(%struct.llc_pdu_un* %23)
  %25 = load i64, i64* @LLC_1_PDU_CMD_XID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %4, align 8
  %29 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llc_main_station, i32 0, i32 0), align 4
  %34 = icmp eq i32 %33, 1
  br label %35

35:                                               ; preds = %32, %27, %22, %18, %14, %1
  %36 = phi i1 [ false, %27 ], [ false, %22 ], [ false, %18 ], [ false, %14 ], [ false, %1 ], [ %34, %32 ]
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 1
  ret i32 %38
}

declare dso_local %struct.llc_station_state_ev* @llc_station_ev(%struct.sk_buff*) #1

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
