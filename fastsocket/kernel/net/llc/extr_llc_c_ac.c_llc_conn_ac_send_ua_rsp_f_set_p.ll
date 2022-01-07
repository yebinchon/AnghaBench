; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_ua_rsp_f_set_p.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_ua_rsp_f_set_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.llc_sock = type { %struct.TYPE_5__, %struct.TYPE_6__*, %struct.llc_sap* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.llc_sap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_send_ua_rsp_f_set_p(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.llc_sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.llc_sap*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @ENOBUFS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.llc_sock* @llc_sk(%struct.sock* %12)
  store %struct.llc_sock* %13, %struct.llc_sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %16 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %19 = call %struct.sk_buff* @llc_alloc_frame(%struct.sock* %14, %struct.TYPE_6__* %17, i32 %18, i32 0)
  store %struct.sk_buff* %19, %struct.sk_buff** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @llc_pdu_decode_pf_bit(%struct.sk_buff* %20, i32* %5)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %67

24:                                               ; preds = %2
  %25 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %26 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %25, i32 0, i32 2
  %27 = load %struct.llc_sap*, %struct.llc_sap** %26, align 8
  store %struct.llc_sap* %27, %struct.llc_sap** %9, align 8
  %28 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %29 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %35 = load %struct.llc_sap*, %struct.llc_sap** %9, align 8
  %36 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %40 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @LLC_PDU_RSP, align 4
  %44 = call i32 @llc_pdu_header_init(%struct.sk_buff* %33, i32 %34, i32 %38, i32 %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @llc_pdu_init_as_ua_rsp(%struct.sk_buff* %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %50 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %55 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %48, i32 %53, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %24
  br label %70

63:                                               ; preds = %24
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i32 @llc_conn_send_pdu(%struct.sock* %64, %struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %63, %2
  br label %68

68:                                               ; preds = %70, %67
  %69 = load i32, i32* %6, align 4
  ret i32 %69

70:                                               ; preds = %62
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  br label %68
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @llc_alloc_frame(%struct.sock*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @llc_pdu_decode_pf_bit(%struct.sk_buff*, i32*) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_ua_rsp(%struct.sk_buff*, i32) #1

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
