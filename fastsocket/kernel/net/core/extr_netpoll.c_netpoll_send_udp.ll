; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c_netpoll_send_udp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c_netpoll_send_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpoll = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.TYPE_2__* }
%struct.udphdr = type { i32, i32, i32, i64 }
%struct.iphdr = type { i8, i32, i8, i8, i32, i64, i32, i64, i64, i64 }
%struct.ethhdr = type { i32, i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netpoll_send_udp(%struct.netpoll* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.netpoll*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.udphdr*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.ethhdr*, align 8
  store %struct.netpoll* %0, %struct.netpoll** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 24
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 56
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ETH_HLEN, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @NET_IP_ALIGN, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  %33 = call %struct.sk_buff* @find_skb(%struct.netpoll* %28, i32 %29, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %11, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  br label %179

37:                                               ; preds = %3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %38, i8* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = call i64 @skb_push(%struct.sk_buff* %47, i32 24)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = call i32 @skb_reset_transport_header(%struct.sk_buff* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %51)
  store %struct.udphdr* %52, %struct.udphdr** %12, align 8
  %53 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %54 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @htons(i32 %55)
  %57 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %58 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %60 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @htons(i32 %61)
  %63 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %64 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @htons(i32 %65)
  %67 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %68 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %70 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %72 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %75 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @IPPROTO_UDP, align 4
  %79 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @csum_partial(%struct.udphdr* %79, i32 %80, i32 0)
  %82 = call i64 @csum_tcpudp_magic(i32 %73, i32 %76, i32 %77, i32 %78, i32 %81)
  %83 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %84 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %86 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %37
  %90 = load i64, i64* @CSUM_MANGLED_0, align 8
  %91 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %92 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %37
  %94 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %95 = call i64 @skb_push(%struct.sk_buff* %94, i32 56)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %97 = call i32 @skb_reset_network_header(%struct.sk_buff* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %99 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %98)
  store %struct.iphdr* %99, %struct.iphdr** %13, align 8
  %100 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %101 = bitcast %struct.iphdr* %100 to i8*
  %102 = call i32 @put_unaligned(i32 69, i8* %101)
  %103 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %104 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %103, i32 0, i32 9
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @htons(i32 %105)
  %107 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %108 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %107, i32 0, i32 0
  %109 = call i32 @put_unaligned(i32 %106, i8* %108)
  %110 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 8
  store i64 0, i64* %111, align 8
  %112 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %113 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %112, i32 0, i32 7
  store i64 0, i64* %113, align 8
  %114 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %115 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %114, i32 0, i32 1
  store i32 64, i32* %115, align 4
  %116 = load i32, i32* @IPPROTO_UDP, align 4
  %117 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %118 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %120 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %119, i32 0, i32 5
  store i64 0, i64* %120, align 8
  %121 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %122 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 2
  %126 = call i32 @put_unaligned(i32 %123, i8* %125)
  %127 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %128 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i32 0, i32 3
  %132 = call i32 @put_unaligned(i32 %129, i8* %131)
  %133 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %134 = bitcast %struct.iphdr* %133 to i8*
  %135 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @ip_fast_csum(i8* %134, i32 %137)
  %139 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %140 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %139, i32 0, i32 5
  store i64 %138, i64* %140, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %142 = load i32, i32* @ETH_HLEN, align 4
  %143 = call i64 @skb_push(%struct.sk_buff* %141, i32 %142)
  %144 = inttoptr i64 %143 to %struct.ethhdr*
  store %struct.ethhdr* %144, %struct.ethhdr** %14, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %146 = call i32 @skb_reset_mac_header(%struct.sk_buff* %145)
  %147 = load i32, i32* @ETH_P_IP, align 4
  %148 = call i32 @htons(i32 %147)
  %149 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %150 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 1
  store i32 %148, i32* %152, align 4
  %153 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %154 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %157 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %156, i32 0, i32 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @ETH_ALEN, align 4
  %162 = call i32 @memcpy(i32 %155, i32 %160, i32 %161)
  %163 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %164 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %167 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @ETH_ALEN, align 4
  %170 = call i32 @memcpy(i32 %165, i32 %168, i32 %169)
  %171 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %172 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %171, i32 0, i32 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 2
  store %struct.TYPE_2__* %173, %struct.TYPE_2__** %175, align 8
  %176 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %178 = call i32 @netpoll_send_skb(%struct.netpoll* %176, %struct.sk_buff* %177)
  br label %179

179:                                              ; preds = %93, %36
  ret void
}

declare dso_local %struct.sk_buff* @find_skb(%struct.netpoll*, i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @csum_tcpudp_magic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @csum_partial(%struct.udphdr*, i32, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @put_unaligned(i32, i8*) #1

declare dso_local i64 @ip_fast_csum(i8*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netpoll_send_skb(%struct.netpoll*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
