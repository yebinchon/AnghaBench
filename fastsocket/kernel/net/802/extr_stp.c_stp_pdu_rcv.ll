; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_stp.c_stp_pdu_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_stp.c_stp_pdu_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.ethhdr = type { i64* }
%struct.llc_pdu_un = type { i64, i64, i64 }
%struct.stp_proto = type { i32 (%struct.stp_proto*, %struct.sk_buff.0*, %struct.net_device.1*)*, i32 }
%struct.sk_buff.0 = type opaque
%struct.net_device.1 = type opaque

@LLC_SAP_BSPAN = common dso_local global i64 0, align 8
@LLC_PDU_TYPE_U = common dso_local global i64 0, align 8
@GARP_ADDR_MIN = common dso_local global i64 0, align 8
@GARP_ADDR_MAX = common dso_local global i64 0, align 8
@garp_protos = common dso_local global i32* null, align 8
@stp_proto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @stp_pdu_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stp_pdu_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ethhdr*, align 8
  %11 = alloca %struct.llc_pdu_un*, align 8
  %12 = alloca %struct.stp_proto*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %13)
  store %struct.ethhdr* %14, %struct.ethhdr** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff* %15)
  store %struct.llc_pdu_un* %16, %struct.llc_pdu_un** %11, align 8
  %17 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %11, align 8
  %18 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LLC_SAP_BSPAN, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %4
  %23 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %11, align 8
  %24 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LLC_SAP_BSPAN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %11, align 8
  %30 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LLC_PDU_TYPE_U, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22, %4
  br label %93

35:                                               ; preds = %28
  %36 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %37 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 5
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GARP_ADDR_MIN, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %35
  %44 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %45 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 5
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @GARP_ADDR_MAX, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %43
  %52 = load i32*, i32** @garp_protos, align 8
  %53 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %54 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 5
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @GARP_ADDR_MIN, align 8
  %59 = sub nsw i64 %57, %58
  %60 = getelementptr inbounds i32, i32* %52, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.stp_proto* @rcu_dereference(i32 %61)
  store %struct.stp_proto* %62, %struct.stp_proto** %12, align 8
  %63 = load %struct.stp_proto*, %struct.stp_proto** %12, align 8
  %64 = icmp ne %struct.stp_proto* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %51
  %66 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %67 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.stp_proto*, %struct.stp_proto** %12, align 8
  %70 = getelementptr inbounds %struct.stp_proto, %struct.stp_proto* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @compare_ether_addr(i64* %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %93

75:                                               ; preds = %65, %51
  br label %79

76:                                               ; preds = %43, %35
  %77 = load i32, i32* @stp_proto, align 4
  %78 = call %struct.stp_proto* @rcu_dereference(i32 %77)
  store %struct.stp_proto* %78, %struct.stp_proto** %12, align 8
  br label %79

79:                                               ; preds = %76, %75
  %80 = load %struct.stp_proto*, %struct.stp_proto** %12, align 8
  %81 = icmp ne %struct.stp_proto* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %93

83:                                               ; preds = %79
  %84 = load %struct.stp_proto*, %struct.stp_proto** %12, align 8
  %85 = getelementptr inbounds %struct.stp_proto, %struct.stp_proto* %84, i32 0, i32 0
  %86 = load i32 (%struct.stp_proto*, %struct.sk_buff.0*, %struct.net_device.1*)*, i32 (%struct.stp_proto*, %struct.sk_buff.0*, %struct.net_device.1*)** %85, align 8
  %87 = load %struct.stp_proto*, %struct.stp_proto** %12, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = bitcast %struct.sk_buff* %88 to %struct.sk_buff.0*
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = bitcast %struct.net_device* %90 to %struct.net_device.1*
  %92 = call i32 %86(%struct.stp_proto* %87, %struct.sk_buff.0* %89, %struct.net_device.1* %91)
  store i32 0, i32* %5, align 4
  br label %96

93:                                               ; preds = %82, %74, %34
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i32 @kfree_skb(%struct.sk_buff* %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %83
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff*) #1

declare dso_local %struct.stp_proto* @rcu_dereference(i32) #1

declare dso_local i64 @compare_ether_addr(i64*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
