; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_sap_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_sap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_addr = type { i32, i32 }
%struct.sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llc_sap_handler(%struct.llc_sap* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_sap*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_addr, align 4
  %6 = alloca %struct.sock*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %5, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @llc_pdu_decode_da(%struct.sk_buff* %7, i32 %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %5, i32 0, i32 1
  %13 = call i32 @llc_pdu_decode_dsap(%struct.sk_buff* %11, i32* %12)
  %14 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @llc_mac_multicast(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @llc_sap_mcast(%struct.llc_sap* %19, %struct.llc_addr* %5, %struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  br label %40

24:                                               ; preds = %2
  %25 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %26 = call %struct.sock* @llc_lookup_dgram(%struct.llc_sap* %25, %struct.llc_addr* %5)
  store %struct.sock* %26, %struct.sock** %6, align 8
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = icmp ne %struct.sock* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = call i32 @llc_sap_rcv(%struct.llc_sap* %30, %struct.sk_buff* %31, %struct.sock* %32)
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = call i32 @sock_put(%struct.sock* %34)
  br label %39

36:                                               ; preds = %24
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  br label %39

39:                                               ; preds = %36, %29
  br label %40

40:                                               ; preds = %39, %18
  ret void
}

declare dso_local i32 @llc_pdu_decode_da(%struct.sk_buff*, i32) #1

declare dso_local i32 @llc_pdu_decode_dsap(%struct.sk_buff*, i32*) #1

declare dso_local i64 @llc_mac_multicast(i32) #1

declare dso_local i32 @llc_sap_mcast(%struct.llc_sap*, %struct.llc_addr*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sock* @llc_lookup_dgram(%struct.llc_sap*, %struct.llc_addr*) #1

declare dso_local i32 @llc_sap_rcv(%struct.llc_sap*, %struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
