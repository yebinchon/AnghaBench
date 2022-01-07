; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_sabme_cmd_p_set_x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_sabme_cmd_p_set_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.llc_sap* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.llc_sap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@LLC_PDU_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_send_sabme_cmd_p_set_x(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.llc_sap*, align 8
  %9 = alloca i32*, align 8
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
  %16 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %19 = call %struct.sk_buff* @llc_alloc_frame(%struct.sock* %14, %struct.TYPE_6__* %17, i32 %18, i32 0)
  store %struct.sk_buff* %19, %struct.sk_buff** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %77

22:                                               ; preds = %2
  %23 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %24 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %23, i32 0, i32 2
  %25 = load %struct.llc_sap*, %struct.llc_sap** %24, align 8
  store %struct.llc_sap* %25, %struct.llc_sap** %8, align 8
  %26 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %27 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  %30 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %31 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IFF_LOOPBACK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %22
  %39 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %40 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %9, align 8
  br label %44

44:                                               ; preds = %38, %22
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %47 = load %struct.llc_sap*, %struct.llc_sap** %8, align 8
  %48 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %52 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @LLC_PDU_CMD, align 4
  %56 = call i32 @llc_pdu_header_init(%struct.sk_buff* %45, i32 %46, i32 %50, i32 %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i32 @llc_pdu_init_as_sabme_cmd(%struct.sk_buff* %57, i32 1)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %61 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %59, i32* %64, i32* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %44
  br label %80

71:                                               ; preds = %44
  %72 = load %struct.sock*, %struct.sock** %3, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = call i32 @llc_conn_send_pdu(%struct.sock* %72, %struct.sk_buff* %73)
  %75 = load %struct.sock*, %struct.sock** %3, align 8
  %76 = call i32 @llc_conn_set_p_flag(%struct.sock* %75, i32 1)
  br label %77

77:                                               ; preds = %71, %2
  br label %78

78:                                               ; preds = %80, %77
  %79 = load i32, i32* %5, align 4
  ret i32 %79

80:                                               ; preds = %70
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  br label %78
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @llc_alloc_frame(%struct.sock*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_sabme_cmd(%struct.sk_buff*, i32) #1

declare dso_local i32 @llc_mac_hdr_init(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @llc_conn_send_pdu(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @llc_conn_set_p_flag(%struct.sock*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
