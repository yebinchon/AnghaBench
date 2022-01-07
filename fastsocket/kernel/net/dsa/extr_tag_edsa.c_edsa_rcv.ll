; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_edsa.c_edsa_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_edsa.c_edsa_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i64, i64, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { %struct.dsa_switch_tree* }
%struct.dsa_switch_tree = type { %struct.dsa_switch**, %struct.TYPE_4__* }
%struct.dsa_switch = type { %struct.TYPE_6__** }
%struct.TYPE_4__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@EDSA_HLEN = common dso_local global i64 0, align 8
@DSA_MAX_PORTS = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@DSA_HLEN = common dso_local global i64 0, align 8
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @edsa_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edsa_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.dsa_switch_tree*, align 8
  %11 = alloca %struct.dsa_switch*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %18, align 8
  store %struct.dsa_switch_tree* %19, %struct.dsa_switch_tree** %10, align 8
  %20 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %10, align 8
  %21 = icmp eq %struct.dsa_switch_tree* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %254

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = icmp eq %struct.sk_buff* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %257

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i64, i64* @EDSA_HLEN, align 8
  %36 = call i32 @pskb_may_pull(%struct.sk_buff* %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %254

43:                                               ; preds = %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 192
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 192
  %58 = icmp ne i32 %57, 192
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %254

60:                                               ; preds = %53, %43
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 31
  store i32 %64, i32* %13, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 3
  %69 = and i32 %68, 31
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %10, align 8
  %72 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  br label %254

78:                                               ; preds = %60
  %79 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %10, align 8
  %80 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %79, i32 0, i32 0
  %81 = load %struct.dsa_switch**, %struct.dsa_switch*** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %81, i64 %83
  %85 = load %struct.dsa_switch*, %struct.dsa_switch** %84, align 8
  store %struct.dsa_switch* %85, %struct.dsa_switch** %11, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @DSA_MAX_PORTS, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %78
  %90 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  %91 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %92, i64 %94
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = icmp eq %struct.TYPE_6__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %89, %78
  br label %254

99:                                               ; preds = %89
  %100 = load i32*, i32** %12, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %184

105:                                              ; preds = %99
  %106 = load i32, i32* @ETH_P_8021Q, align 4
  %107 = ashr i32 %106, 8
  %108 = and i32 %107, 255
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %108, i32* %109, align 16
  %110 = load i32, i32* @ETH_P_8021Q, align 4
  %111 = and i32 %110, 255
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, -17
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %116, i32* %117, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %105
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, 16
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %127, %105
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = load i64, i64* @DSA_HLEN, align 8
  %134 = call i32 @skb_pull_rcsum(%struct.sk_buff* %132, i64 %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %131
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = call i32 @csum_partial(i32* %146, i32 2, i32 0)
  %148 = call i32 @csum_add(i32 %144, i32 %147)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32*, i32** %12, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = call i32 @csum_partial(i32* %151, i32 2, i32 0)
  %153 = call i32 @csum_sub(i32 %149, i32 %152)
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %140, %131
  %158 = load i32*, i32** %12, align 8
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %160 = load i64, i64* @DSA_HLEN, align 8
  %161 = call i32 @memcpy(i32* %158, i32* %159, i64 %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32*, i32** @ETH_HLEN, align 8
  %166 = ptrtoint i32* %164 to i64
  %167 = ptrtoint i32* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 4
  %170 = trunc i64 %169 to i32
  %171 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32*, i32** @ETH_HLEN, align 8
  %175 = ptrtoint i32* %173 to i64
  %176 = ptrtoint i32* %174 to i64
  %177 = sub i64 %175, %176
  %178 = sdiv exact i64 %177, 4
  %179 = load i64, i64* @DSA_HLEN, align 8
  %180 = sub nsw i64 %178, %179
  %181 = load i32, i32* @ETH_ALEN, align 4
  %182 = mul nsw i32 2, %181
  %183 = call i32 @memmove(i32 %170, i64 %180, i32 %182)
  br label %210

184:                                              ; preds = %99
  %185 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %186 = load i64, i64* @EDSA_HLEN, align 8
  %187 = call i32 @skb_pull_rcsum(%struct.sk_buff* %185, i64 %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32*, i32** @ETH_HLEN, align 8
  %192 = ptrtoint i32* %190 to i64
  %193 = ptrtoint i32* %191 to i64
  %194 = sub i64 %192, %193
  %195 = sdiv exact i64 %194, 4
  %196 = trunc i64 %195 to i32
  %197 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32*, i32** @ETH_HLEN, align 8
  %201 = ptrtoint i32* %199 to i64
  %202 = ptrtoint i32* %200 to i64
  %203 = sub i64 %201, %202
  %204 = sdiv exact i64 %203, 4
  %205 = load i64, i64* @EDSA_HLEN, align 8
  %206 = sub nsw i64 %204, %205
  %207 = load i32, i32* @ETH_ALEN, align 4
  %208 = mul nsw i32 2, %207
  %209 = call i32 @memmove(i32 %196, i64 %206, i32 %208)
  br label %210

210:                                              ; preds = %184, %157
  %211 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  %212 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %211, i32 0, i32 0
  %213 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %212, align 8
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %213, i64 %215
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 3
  store %struct.TYPE_6__* %217, %struct.TYPE_6__** %219, align 8
  %220 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %221 = load i32*, i32** @ETH_HLEN, align 8
  %222 = call i32 @skb_push(%struct.sk_buff* %220, i32* %221)
  %223 = load i32, i32* @PACKET_HOST, align 4
  %224 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %225 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %224, i32 0, i32 5
  store i32 %223, i32* %225, align 4
  %226 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 3
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = call i32 @eth_type_trans(%struct.sk_buff* %226, %struct.TYPE_6__* %229)
  %231 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %234 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %233, i32 0, i32 3
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  %240 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 3
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %249, %242
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %247, align 4
  %252 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %253 = call i32 @netif_receive_skb(%struct.sk_buff* %252)
  store i32 0, i32* %5, align 4
  br label %258

254:                                              ; preds = %98, %77, %59, %42, %25
  %255 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %256 = call i32 @kfree_skb(%struct.sk_buff* %255)
  br label %257

257:                                              ; preds = %254, %32
  store i32 0, i32* %5, align 4
  br label %258

258:                                              ; preds = %257, %210
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i64) #1

declare dso_local i32 @csum_add(i32, i32) #1

declare dso_local i32 @csum_partial(i32*, i32, i32) #1

declare dso_local i32 @csum_sub(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @memmove(i32, i64, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_6__*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
