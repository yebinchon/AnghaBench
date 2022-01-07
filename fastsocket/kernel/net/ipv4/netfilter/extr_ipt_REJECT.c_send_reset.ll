; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_REJECT.c_send_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_REJECT.c_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i64 }
%struct.tcphdr = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IP_OFFSET = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@LL_MAX_HEADER = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@RTN_UNSPEC = common dso_local global i32 0, align 4
@RTAX_HOPLIMIT = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_reset(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.tcphdr, align 8
  %10 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IP_OFFSET, align 4
  %16 = call i32 @htons(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %209

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i64 @ip_hdrlen(%struct.sk_buff* %22)
  %24 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %21, i64 %23, i32 56, %struct.tcphdr* %9)
  store %struct.tcphdr* %24, %struct.tcphdr** %8, align 8
  %25 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %26 = icmp eq %struct.tcphdr* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %209

28:                                               ; preds = %20
  %29 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %30 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %209

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call %struct.TYPE_2__* @skb_rtable(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RTCF_BROADCAST, align 4
  %40 = load i32, i32* @RTCF_MULTICAST, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %209

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i64 @ip_hdrlen(%struct.sk_buff* %48)
  %50 = load i32, i32* @IPPROTO_TCP, align 4
  %51 = call i64 @nf_ip_checksum(%struct.sk_buff* %46, i32 %47, i64 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %209

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %55)
  store %struct.iphdr* %56, %struct.iphdr** %6, align 8
  %57 = load i64, i64* @LL_MAX_HEADER, align 8
  %58 = add i64 112, %57
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call %struct.sk_buff* @alloc_skb(i64 %58, i32 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %5, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %209

64:                                               ; preds = %54
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i64, i64* @LL_MAX_HEADER, align 8
  %67 = call i32 @skb_reserve(%struct.sk_buff* %65, i64 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @skb_reset_network_header(%struct.sk_buff* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i64 @skb_put(%struct.sk_buff* %70, i32 56)
  %72 = inttoptr i64 %71 to %struct.iphdr*
  store %struct.iphdr* %72, %struct.iphdr** %7, align 8
  %73 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 1
  store i32 4, i32* %74, align 4
  %75 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 2
  store i32 14, i32* %76, align 8
  %77 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %78 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %77, i32 0, i32 9
  store i64 0, i64* %78, align 8
  %79 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 8
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @IP_DF, align 4
  %82 = call i32 @htons(i32 %81)
  %83 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %84 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @IPPROTO_TCP, align 4
  %86 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %89 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %88, i32 0, i32 6
  store i64 0, i64* %89, align 8
  %90 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %91 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %94 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %96 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %99 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call i64 @skb_put(%struct.sk_buff* %100, i32 56)
  %102 = inttoptr i64 %101 to %struct.tcphdr*
  store %struct.tcphdr* %102, %struct.tcphdr** %10, align 8
  %103 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %104 = call i32 @memset(%struct.tcphdr* %103, i32 0, i32 56)
  %105 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %106 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %109 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 4
  %110 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %111 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %114 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 8
  %115 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 1
  store i32 14, i32* %116, align 4
  %117 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %118 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %64
  %122 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %123 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %126 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  br label %158

127:                                              ; preds = %64
  %128 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %129 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @ntohl(i32 %130)
  %132 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %133 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %137 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %139, %142
  %144 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %145 = call i64 @ip_hdrlen(%struct.sk_buff* %144)
  %146 = sub nsw i64 %143, %145
  %147 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %148 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = sub nsw i64 %146, %151
  %153 = call i32 @htonl(i64 %152)
  %154 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %155 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 8
  %156 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %157 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  br label %158

158:                                              ; preds = %127, %121
  %159 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %160 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %162 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %165 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %168 = call i32 @csum_partial(%struct.tcphdr* %167, i32 56, i32 0)
  %169 = call i32 @tcp_v4_check(i32 56, i32 %163, i32 %166, i32 %168)
  %170 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %171 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %174 = call i32 @skb_dst(%struct.sk_buff* %173)
  %175 = call i32 @dst_clone(i32 %174)
  %176 = call i32 @skb_dst_set(%struct.sk_buff* %172, i32 %175)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %178 = load i32, i32* @RTN_UNSPEC, align 4
  %179 = call i64 @ip_route_me_harder(%struct.sk_buff* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %158
  br label %206

182:                                              ; preds = %158
  %183 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %184 = call i32 @skb_dst(%struct.sk_buff* %183)
  %185 = load i32, i32* @RTAX_HOPLIMIT, align 4
  %186 = call i32 @dst_metric(i32 %184, i32 %185)
  %187 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %188 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @CHECKSUM_NONE, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = call i32 @skb_dst(%struct.sk_buff* %195)
  %197 = call i64 @dst_mtu(i32 %196)
  %198 = icmp sgt i64 %194, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %182
  br label %206

200:                                              ; preds = %182
  %201 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %203 = call i32 @nf_ct_attach(%struct.sk_buff* %201, %struct.sk_buff* %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %205 = call i32 @ip_local_out(%struct.sk_buff* %204)
  br label %209

206:                                              ; preds = %199, %181
  %207 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %208 = call i32 @kfree_skb(%struct.sk_buff* %207)
  br label %209

209:                                              ; preds = %206, %200, %63, %53, %44, %33, %27, %19
  ret void
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i64, i32, %struct.tcphdr*) #1

declare dso_local i64 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i64 @nf_ip_checksum(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.tcphdr*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @tcp_v4_check(i32, i32, i32, i32) #1

declare dso_local i32 @csum_partial(%struct.tcphdr*, i32, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @ip_route_me_harder(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_metric(i32, i32) #1

declare dso_local i64 @dst_mtu(i32) #1

declare dso_local i32 @nf_ct_attach(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @ip_local_out(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
