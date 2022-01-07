; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_ipv4_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_ipv4_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.iphdr = type { i32, i32, i64, i32, i32 }
%struct.igmphdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IGMP = common dso_local global i64 0, align 8
@IGMP_LOCAL_GROUP_MASK = common dso_local global i32 0, align 4
@IGMP_LOCAL_GROUP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*)* @br_multicast_ipv4_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_multicast_ipv4_rcv(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.igmphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %5, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i32 @pskb_may_pull(%struct.sk_buff* %15, i32 24)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %214

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %22)
  store %struct.iphdr* %23, %struct.iphdr** %9, align 8
  %24 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %21
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %214

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32 @ip_hdrlen(%struct.sk_buff* %38)
  %40 = call i32 @pskb_may_pull(%struct.sk_buff* %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %214

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %46)
  store %struct.iphdr* %47, %struct.iphdr** %9, align 8
  %48 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %49 = bitcast %struct.iphdr* %48 to i32*
  %50 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ip_fast_csum(i32* %49, i32 %52)
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %214

59:                                               ; preds = %45
  %60 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %61 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IPPROTO_IGMP, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IGMP_LOCAL_GROUP_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @IGMP_LOCAL_GROUP, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = call %struct.TYPE_2__* @BR_INPUT_SKB_CB(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %65
  store i32 0, i32* %4, align 4
  br label %214

78:                                               ; preds = %59
  %79 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ntohs(i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call i32 @ip_hdrlen(%struct.sk_buff* %90)
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88, %78
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %214

96:                                               ; preds = %88
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %96
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = load i32, i32* @GFP_ATOMIC, align 4
  %105 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %103, i32 %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %8, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = icmp ne %struct.sk_buff* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %214

111:                                              ; preds = %102
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @pskb_trim_rcsum(%struct.sk_buff* %112, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %4, align 4
  br label %214

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %96
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = call i32 @ip_hdrlen(%struct.sk_buff* %121)
  %123 = load i32, i32* %11, align 4
  %124 = sub i32 %123, %122
  store i32 %124, i32* %11, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = call i32 @skb_network_offset(%struct.sk_buff* %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %128 = call i32 @ip_hdrlen(%struct.sk_buff* %127)
  %129 = add i32 %126, %128
  store i32 %129, i32* %12, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @__skb_pull(%struct.sk_buff* %130, i32 %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = call i32 @skb_reset_transport_header(%struct.sk_buff* %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %13, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = call i32 @pskb_may_pull(%struct.sk_buff* %137, i32 8)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %120
  br label %202

141:                                              ; preds = %120
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %142)
  store %struct.iphdr* %143, %struct.iphdr** %9, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  switch i32 %146, label %165 [
    i32 134, label %147
    i32 133, label %155
  ]

147:                                              ; preds = %141
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @csum_fold(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %165

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %141, %154
  %156 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 2
  store i32 0, i32* %157, align 4
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %159 = call i32 @skb_checksum_complete(%struct.sk_buff* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %214

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %141, %153
  store i32 0, i32* %13, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = call %struct.TYPE_2__* @BR_INPUT_SKB_CB(%struct.sk_buff* %166)
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  store i32 1, i32* %168, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %170 = call %struct.igmphdr* @igmp_hdr(%struct.sk_buff* %169)
  store %struct.igmphdr* %170, %struct.igmphdr** %10, align 8
  %171 = load %struct.igmphdr*, %struct.igmphdr** %10, align 8
  %172 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  switch i32 %173, label %201 [
    i32 128, label %174
    i32 132, label %174
    i32 131, label %184
    i32 129, label %189
    i32 130, label %194
  ]

174:                                              ; preds = %165, %165
  %175 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %176 = call %struct.TYPE_2__* @BR_INPUT_SKB_CB(%struct.sk_buff* %175)
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 4
  %178 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %179 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %180 = load %struct.igmphdr*, %struct.igmphdr** %10, align 8
  %181 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @br_ip4_multicast_add_group(%struct.net_bridge* %178, %struct.net_bridge_port* %179, i32 %182)
  store i32 %183, i32* %13, align 4
  br label %201

184:                                              ; preds = %165
  %185 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %186 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %188 = call i32 @br_ip4_multicast_igmp3_report(%struct.net_bridge* %185, %struct.net_bridge_port* %186, %struct.sk_buff* %187)
  store i32 %188, i32* %13, align 4
  br label %201

189:                                              ; preds = %165
  %190 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %191 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %193 = call i32 @br_ip4_multicast_query(%struct.net_bridge* %190, %struct.net_bridge_port* %191, %struct.sk_buff* %192)
  store i32 %193, i32* %13, align 4
  br label %201

194:                                              ; preds = %165
  %195 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %196 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %197 = load %struct.igmphdr*, %struct.igmphdr** %10, align 8
  %198 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @br_ip4_multicast_leave_group(%struct.net_bridge* %195, %struct.net_bridge_port* %196, i32 %199)
  br label %201

201:                                              ; preds = %165, %194, %189, %184, %174
  br label %202

202:                                              ; preds = %201, %140
  %203 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @__skb_push(%struct.sk_buff* %203, i32 %204)
  %206 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %208 = icmp ne %struct.sk_buff* %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %211 = call i32 @kfree_skb(%struct.sk_buff* %210)
  br label %212

212:                                              ; preds = %209, %202
  %213 = load i32, i32* %13, align 4
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %212, %161, %117, %108, %93, %77, %56, %42, %33, %18
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_fast_csum(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @skb_checksum_complete(%struct.sk_buff*) #1

declare dso_local %struct.igmphdr* @igmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @br_ip4_multicast_add_group(%struct.net_bridge*, %struct.net_bridge_port*, i32) #1

declare dso_local i32 @br_ip4_multicast_igmp3_report(%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @br_ip4_multicast_query(%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @br_ip4_multicast_leave_group(%struct.net_bridge*, %struct.net_bridge_port*, i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
