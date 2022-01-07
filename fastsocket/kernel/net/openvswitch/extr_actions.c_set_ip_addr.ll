; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_set_ip_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_set_ip_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.iphdr = type { i64, i32 }
%struct.udphdr = type { i64 }
%struct.TYPE_2__ = type { i64 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.iphdr*, i32*, i32)* @set_ip_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ip_addr(%struct.sk_buff* %0, %struct.iphdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.udphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.iphdr* %1, %struct.iphdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @skb_transport_offset(%struct.sk_buff* %14)
  %16 = sub nsw i32 %13, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPPROTO_TCP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.TYPE_2__* @tcp_hdr(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @inet_proto_csum_replace4(i64* %32, %struct.sk_buff* %33, i32 %35, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %29, %22
  br label %85

39:                                               ; preds = %4
  %40 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IPPROTO_UDP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %47, 8
  %49 = zext i1 %48 to i32
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %53)
  store %struct.udphdr* %54, %struct.udphdr** %10, align 8
  %55 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %56 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59, %52
  %66 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %67 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %66, i32 0, i32 0
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @inet_proto_csum_replace4(i64* %67, %struct.sk_buff* %68, i32 %70, i32 %71, i32 1)
  %73 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %74 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %65
  %78 = load i64, i64* @CSUM_MANGLED_0, align 8
  %79 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %80 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %65
  br label %82

82:                                               ; preds = %81, %59
  br label %83

83:                                               ; preds = %82, %45
  br label %84

84:                                               ; preds = %83, %39
  br label %85

85:                                               ; preds = %84, %38
  %86 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 1
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @csum_replace4(i32* %87, i32 %89, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  ret void
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @inet_proto_csum_replace4(i64*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @csum_replace4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
