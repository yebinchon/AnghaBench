; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_rr_cmd_p_set_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_rr_cmd_p_set_1.c"
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
@LLC_PDU_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_send_rr_cmd_p_set_1(%struct.sock* %0, %struct.sk_buff* %1) #0 {
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
  br i1 %20, label %21, label %61

21:                                               ; preds = %2
  %22 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %23 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %22, i32 0, i32 3
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
  %35 = load i32, i32* @LLC_PDU_CMD, align 4
  %36 = call i32 @llc_pdu_header_init(%struct.sk_buff* %25, i32 %26, i32 %30, i32 %34, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %39 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @llc_pdu_init_as_rr_cmd(%struct.sk_buff* %37, i32 1, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %44 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %49 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %42, i32 %47, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %21
  br label %64

57:                                               ; preds = %21
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call i32 @llc_conn_send_pdu(%struct.sock* %58, %struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %57, %2
  br label %62

62:                                               ; preds = %64, %61
  %63 = load i32, i32* %5, align 4
  ret i32 %63

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call i32 @kfree_skb(%struct.sk_buff* %65)
  br label %62
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @llc_alloc_frame(%struct.sock*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_rr_cmd(%struct.sk_buff*, i32, i32) #1

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
