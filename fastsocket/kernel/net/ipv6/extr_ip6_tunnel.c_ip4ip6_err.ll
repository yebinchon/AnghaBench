; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip4ip6_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip4ip6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.inet6_skb_parm = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.flowi = type { i32, i32, i32, i32 }
%struct.rtable = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%struct.dst_entry = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*, i64)* }
%struct.TYPE_12__ = type { i64 }

@IPPROTO_IPIP = common dso_local global i32 0, align 4
@ICMPV6_ADDR_UNREACH = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_HOST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@ARPHRD_TUNNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)* @ip4ip6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip4ip6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_skb_parm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.flowi, align 4
  %22 = alloca %struct.rtable*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i64 @ntohl(i32 %25)
  store i64 %26, i64* %17, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load i32, i32* @IPPROTO_IPIP, align 4
  %29 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @ip6_tnl_err(%struct.sk_buff* %27, i32 %28, %struct.inet6_skb_parm* %29, i32* %15, i32* %16, i32* %14, i64* %17, i32 %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %7, align 4
  br label %221

36:                                               ; preds = %6
  %37 = load i32, i32* %14, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %221

40:                                               ; preds = %36
  %41 = load i32, i32* %15, align 4
  switch i32 %41, label %57 [
    i32 129, label %42
    i32 128, label %50
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @ICMPV6_ADDR_UNREACH, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %221

47:                                               ; preds = %42
  %48 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* @ICMP_HOST_UNREACH, align 4
  store i32 %49, i32* %16, align 4
  br label %58

50:                                               ; preds = %40
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %221

54:                                               ; preds = %50
  %55 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  store i32 %56, i32* %16, align 4
  br label %58

57:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %221

58:                                               ; preds = %54, %47
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 12
  %63 = trunc i64 %62 to i32
  %64 = call i32 @pskb_may_pull(%struct.sk_buff* %59, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %221

67:                                               ; preds = %58
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %68, i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %19, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %221

74:                                               ; preds = %67
  %75 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %76 = call i32 @skb_dst_drop(%struct.sk_buff* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @skb_pull(%struct.sk_buff* %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %81 = call i32 @skb_reset_network_header(%struct.sk_buff* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %83 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %82)
  store %struct.iphdr* %83, %struct.iphdr** %20, align 8
  %84 = call i32 @memset(%struct.flowi* %21, i32 0, i32 16)
  %85 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %86 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 2
  store i32 %87, i32* %88, align 4
  %89 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %90 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @RT_TOS(i32 %91)
  %93 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @IPPROTO_IPIP, align 4
  %95 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 3
  store i32 %94, i32* %95, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = call i32 @dev_net(%struct.TYPE_15__* %98)
  %100 = call i64 @ip_route_output_key(i32 %99, %struct.rtable** %22, %struct.flowi* %21)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %74
  br label %218

103:                                              ; preds = %74
  %104 = load %struct.rtable*, %struct.rtable** %22, align 8
  %105 = getelementptr inbounds %struct.rtable, %struct.rtable* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %110, align 8
  %111 = load %struct.rtable*, %struct.rtable** %22, align 8
  %112 = getelementptr inbounds %struct.rtable, %struct.rtable* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @RTCF_LOCAL, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %156

117:                                              ; preds = %103
  %118 = load %struct.rtable*, %struct.rtable** %22, align 8
  %119 = call i32 @ip_rt_put(%struct.rtable* %118)
  store %struct.rtable* null, %struct.rtable** %22, align 8
  %120 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %121 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 2
  store i32 %122, i32* %123, align 4
  %124 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 1
  store i32 %126, i32* %127, align 4
  %128 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %129 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 0
  store i32 %130, i32* %131, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = call i32 @dev_net(%struct.TYPE_15__* %134)
  %136 = call i64 @ip_route_output_key(i32 %135, %struct.rtable** %22, %struct.flowi* %21)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %117
  %139 = load %struct.rtable*, %struct.rtable** %22, align 8
  %140 = getelementptr inbounds %struct.rtable, %struct.rtable* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @ARPHRD_TUNNEL, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %138, %117
  %149 = load %struct.rtable*, %struct.rtable** %22, align 8
  %150 = call i32 @ip_rt_put(%struct.rtable* %149)
  br label %218

151:                                              ; preds = %138
  %152 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %153 = load %struct.rtable*, %struct.rtable** %22, align 8
  %154 = bitcast %struct.rtable* %153 to %struct.dst_entry*
  %155 = call i32 @skb_dst_set(%struct.sk_buff* %152, %struct.dst_entry* %154)
  br label %185

156:                                              ; preds = %103
  %157 = load %struct.rtable*, %struct.rtable** %22, align 8
  %158 = call i32 @ip_rt_put(%struct.rtable* %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %160 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %164 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = call i64 @ip_route_input(%struct.sk_buff* %159, i32 %162, i32 %165, i32 %168, %struct.TYPE_15__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %156
  %175 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %176 = call %struct.TYPE_14__* @skb_dst(%struct.sk_buff* %175)
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @ARPHRD_TUNNEL, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %174, %156
  br label %218

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %151
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %185
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %211

193:                                              ; preds = %189
  %194 = load i64, i64* %17, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %196 = call %struct.TYPE_14__* @skb_dst(%struct.sk_buff* %195)
  %197 = call i64 @dst_mtu(%struct.TYPE_14__* %196)
  %198 = icmp sgt i64 %194, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %218

200:                                              ; preds = %193
  %201 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %202 = call %struct.TYPE_14__* @skb_dst(%struct.sk_buff* %201)
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i32 (%struct.TYPE_14__*, i64)*, i32 (%struct.TYPE_14__*, i64)** %205, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %208 = call %struct.TYPE_14__* @skb_dst(%struct.sk_buff* %207)
  %209 = load i64, i64* %17, align 8
  %210 = call i32 %206(%struct.TYPE_14__* %208, i64 %209)
  br label %211

211:                                              ; preds = %200, %189, %185
  %212 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %16, align 4
  %215 = load i64, i64* %17, align 8
  %216 = call i32 @htonl(i64 %215)
  %217 = call i32 @icmp_send(%struct.sk_buff* %212, i32 %213, i32 %214, i32 %216)
  br label %218

218:                                              ; preds = %211, %199, %183, %148, %102
  %219 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %220 = call i32 @kfree_skb(%struct.sk_buff* %219)
  store i32 0, i32* %7, align 4
  br label %221

221:                                              ; preds = %218, %73, %66, %57, %53, %46, %39, %34
  %222 = load i32, i32* %7, align 4
  ret i32 %222
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @ip6_tnl_err(%struct.sk_buff*, i32, %struct.inet6_skb_parm*, i32*, i32*, i32*, i64*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i64 @ip_route_output_key(i32, %struct.rtable**, %struct.flowi*) #1

declare dso_local i32 @dev_net(%struct.TYPE_15__*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i64 @ip_route_input(%struct.sk_buff*, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @dst_mtu(%struct.TYPE_14__*) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
