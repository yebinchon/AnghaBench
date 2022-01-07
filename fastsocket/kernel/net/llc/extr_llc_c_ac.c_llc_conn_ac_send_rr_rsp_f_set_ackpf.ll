; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_rr_rsp_f_set_ackpf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_rr_rsp_f_set_ackpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32, %struct.llc_sap* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.llc_sap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_S = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @llc_conn_ac_send_rr_rsp_f_set_ackpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_conn_ac_send_rr_rsp_f_set_ackpf(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.llc_sap*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load i32, i32* @ENOBUFS, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.llc_sock* @llc_sk(%struct.sock* %11)
  store %struct.llc_sock* %12, %struct.llc_sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %15 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* @LLC_PDU_TYPE_S, align 4
  %18 = call %struct.sk_buff* @llc_alloc_frame(%struct.sock* %13, %struct.TYPE_6__* %16, i32 %17, i32 0)
  store %struct.sk_buff* %18, %struct.sk_buff** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %64

21:                                               ; preds = %2
  %22 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %23 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %22, i32 0, i32 4
  %24 = load %struct.llc_sap*, %struct.llc_sap** %23, align 8
  store %struct.llc_sap* %24, %struct.llc_sap** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = load i32, i32* @LLC_PDU_TYPE_S, align 4
  %27 = load %struct.llc_sap*, %struct.llc_sap** %8, align 8
  %28 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %32 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LLC_PDU_RSP, align 4
  %36 = call i32 @llc_pdu_header_init(%struct.sk_buff* %25, i32 %26, i32 %30, i32 %34, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %39 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %42 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @llc_pdu_init_as_rr_rsp(%struct.sk_buff* %37, i32 %40, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %47 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %52 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %45, i32 %50, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %21
  br label %67

60:                                               ; preds = %21
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call i32 @llc_conn_send_pdu(%struct.sock* %61, %struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %60, %2
  br label %65

65:                                               ; preds = %67, %64
  %66 = load i32, i32* %5, align 4
  ret i32 %66

67:                                               ; preds = %59
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @kfree_skb(%struct.sk_buff* %68)
  br label %65
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @llc_alloc_frame(%struct.sock*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_rr_rsp(%struct.sk_buff*, i32, i32) #1

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
