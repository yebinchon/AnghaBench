; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_rr_rsp_f_set_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_rr_rsp_f_set_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32, %struct.llc_sap* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.llc_sap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_S = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_send_rr_rsp_f_set_1(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.llc_sap*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @ENOBUFS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.llc_sock* @llc_sk(%struct.sock* %12)
  store %struct.llc_sock* %13, %struct.llc_sock** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %16 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* @LLC_PDU_TYPE_S, align 4
  %19 = call %struct.sk_buff* @llc_alloc_frame(%struct.sock* %14, %struct.TYPE_6__* %17, i32 %18, i32 0)
  store %struct.sk_buff* %19, %struct.sk_buff** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %63

22:                                               ; preds = %2
  %23 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %24 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %23, i32 0, i32 3
  %25 = load %struct.llc_sap*, %struct.llc_sap** %24, align 8
  store %struct.llc_sap* %25, %struct.llc_sap** %8, align 8
  store i32 1, i32* %9, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i32, i32* @LLC_PDU_TYPE_S, align 4
  %28 = load %struct.llc_sap*, %struct.llc_sap** %8, align 8
  %29 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %33 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LLC_PDU_RSP, align 4
  %37 = call i32 @llc_pdu_header_init(%struct.sk_buff* %26, i32 %27, i32 %31, i32 %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %41 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @llc_pdu_init_as_rr_rsp(%struct.sk_buff* %38, i32 %39, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %46 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %51 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %44, i32 %49, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %22
  br label %66

59:                                               ; preds = %22
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call i32 @llc_conn_send_pdu(%struct.sock* %60, %struct.sk_buff* %61)
  br label %63

63:                                               ; preds = %59, %2
  br label %64

64:                                               ; preds = %66, %63
  %65 = load i32, i32* %5, align 4
  ret i32 %65

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  br label %64
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
