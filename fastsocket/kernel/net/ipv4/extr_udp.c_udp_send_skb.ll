; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp_send_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp_send_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.inet_sock = type { i32, i32 }
%struct.udphdr = type { i64, i32, i32, i32 }
%struct.rtable = type { i32 }

@UDP_CSUM_NOXMIT = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@UDP_MIB_SNDBUFERRORS = common dso_local global i32 0, align 4
@UDP_MIB_OUTDATAGRAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32)* @udp_send_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_send_skb(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca %struct.rtable*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 2
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %7, align 8
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = call %struct.inet_sock* @inet_sk(%struct.sock* %19)
  store %struct.inet_sock* %20, %struct.inet_sock** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_dst(%struct.sk_buff* %21)
  %23 = inttoptr i64 %22 to %struct.rtable*
  store %struct.rtable* %23, %struct.rtable** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = call i32 @IS_UDPLITE(%struct.sock* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @skb_transport_offset(%struct.sk_buff* %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %33)
  store %struct.udphdr* %34, %struct.udphdr** %9, align 8
  %35 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %36 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %39 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %42 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @htons(i32 %43)
  %45 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %46 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %48 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %3
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @udplite_csum(%struct.sk_buff* %52)
  store i32 %53, i32* %15, align 4
  br label %82

54:                                               ; preds = %3
  %55 = load %struct.sock*, %struct.sock** %7, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @UDP_CSUM_NOXMIT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, i64* @CHECKSUM_NONE, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %104

64:                                               ; preds = %54
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load %struct.rtable*, %struct.rtable** %10, align 8
  %73 = getelementptr inbounds %struct.rtable, %struct.rtable* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @udp4_hwcsum(%struct.sk_buff* %71, i32 %74, i32 %75)
  br label %104

77:                                               ; preds = %64
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @udp_csum(%struct.sk_buff* %78)
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %51
  %83 = load %struct.rtable*, %struct.rtable** %10, align 8
  %84 = getelementptr inbounds %struct.rtable, %struct.rtable* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.sock*, %struct.sock** %7, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i64 @csum_tcpudp_magic(i32 %85, i32 %86, i32 %87, i32 %90, i32 %91)
  %93 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %94 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %96 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %82
  %100 = load i64, i64* @CSUM_MANGLED_0, align 8
  %101 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %102 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %99, %82
  br label %104

104:                                              ; preds = %103, %70, %60
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call i32 @ip_send_skb(%struct.sk_buff* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @ENOBUFS, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %116 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load %struct.sock*, %struct.sock** %7, align 8
  %121 = call i32 @sock_net(%struct.sock* %120)
  %122 = load i32, i32* @UDP_MIB_SNDBUFERRORS, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @UDP_INC_STATS_USER(i32 %121, i32 %122, i32 %123)
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %119, %114, %109
  br label %132

126:                                              ; preds = %104
  %127 = load %struct.sock*, %struct.sock** %7, align 8
  %128 = call i32 @sock_net(%struct.sock* %127)
  %129 = load i32, i32* @UDP_MIB_OUTDATAGRAMS, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @UDP_INC_STATS_USER(i32 %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %126, %125
  %133 = load i32, i32* %11, align 4
  ret i32 %133
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @udplite_csum(%struct.sk_buff*) #1

declare dso_local i32 @udp4_hwcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @udp_csum(%struct.sk_buff*) #1

declare dso_local i64 @csum_tcpudp_magic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip_send_skb(%struct.sk_buff*) #1

declare dso_local i32 @UDP_INC_STATS_USER(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
