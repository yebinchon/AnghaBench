; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_update_ipv6_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_update_ipv6_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.udphdr = type { i64 }
%struct.TYPE_2__ = type { i64 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i64, i32*, i32*)* @update_ipv6_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ipv6_checksum(%struct.sk_buff* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.udphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @skb_transport_offset(%struct.sk_buff* %14)
  %16 = sub nsw i32 %13, %15
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @IPPROTO_TCP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 %22, 4
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call %struct.TYPE_2__* @tcp_hdr(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @inet_proto_csum_replace16(i64* %30, %struct.sk_buff* %31, i32* %32, i32* %33, i32 1)
  br label %35

35:                                               ; preds = %27, %20
  br label %79

36:                                               ; preds = %4
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @IPPROTO_UDP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %42, 8
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %48)
  store %struct.udphdr* %49, %struct.udphdr** %10, align 8
  %50 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %51 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54, %47
  %61 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %62 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %61, i32 0, i32 0
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @inet_proto_csum_replace16(i64* %62, %struct.sk_buff* %63, i32* %64, i32* %65, i32 1)
  %67 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %68 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %60
  %72 = load i64, i64* @CSUM_MANGLED_0, align 8
  %73 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %74 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %60
  br label %76

76:                                               ; preds = %75, %54
  br label %77

77:                                               ; preds = %76, %40
  br label %78

78:                                               ; preds = %77, %36
  br label %79

79:                                               ; preds = %78, %35
  ret void
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @inet_proto_csum_replace16(i64*, %struct.sk_buff*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
