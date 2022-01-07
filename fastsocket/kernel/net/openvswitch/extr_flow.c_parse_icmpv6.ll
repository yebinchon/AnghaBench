; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_parse_icmpv6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_parse_icmpv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32*, i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.icmp6hdr = type { i64, i64 }
%struct.nd_msg = type { i32*, i32 }
%struct.nd_opt_hdr = type { i32, i64 }

@ipv6 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@NDISC_NEIGHBOUR_SOLICITATION = common dso_local global i64 0, align 8
@NDISC_NEIGHBOUR_ADVERTISEMENT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ND_OPT_SOURCE_LL_ADDR = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@ND_OPT_TARGET_LL_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, i32*, i32)* @parse_icmpv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_icmpv6(%struct.sk_buff* %0, %struct.sw_flow_key* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.icmp6hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nd_msg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nd_opt_hdr*, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff* %17)
  store %struct.icmp6hdr* %18, %struct.icmp6hdr** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %20 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @htons(i64 %21)
  %23 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %24 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i8* %22, i8** %26, align 8
  %27 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %28 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @htons(i64 %29)
  %31 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %32 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipv6, i32 0, i32 1), align 4
  %36 = call i32 @SW_FLOW_KEY_OFFSET(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %38 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %204

41:                                               ; preds = %4
  %42 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %43 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NDISC_NEIGHBOUR_SOLICITATION, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %49 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NDISC_NEIGHBOUR_ADVERTISEMENT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %204

53:                                               ; preds = %47, %41
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @skb_transport_offset(%struct.sk_buff* %57)
  %59 = sub nsw i32 %56, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipv6, i32 0, i32 0), align 4
  %61 = call i32 @SW_FLOW_KEY_OFFSET(i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %63, 16
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %223

69:                                               ; preds = %53
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @skb_linearize(%struct.sk_buff* %70)
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %223

77:                                               ; preds = %69
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i64 @skb_transport_header(%struct.sk_buff* %78)
  %80 = inttoptr i64 %79 to %struct.nd_msg*
  store %struct.nd_msg* %80, %struct.nd_msg** %13, align 8
  %81 = load %struct.nd_msg*, %struct.nd_msg** %13, align 8
  %82 = getelementptr inbounds %struct.nd_msg, %struct.nd_msg* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %85 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipv6, i32 0, i32 0), align 4
  %89 = call i32 @SW_FLOW_KEY_OFFSET(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 %91, 16
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %196, %77
  %95 = load i32, i32* %12, align 4
  %96 = icmp sge i32 %95, 8
  br i1 %96, label %97, label %203

97:                                               ; preds = %94
  %98 = load %struct.nd_msg*, %struct.nd_msg** %13, align 8
  %99 = getelementptr inbounds %struct.nd_msg, %struct.nd_msg* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = bitcast i32* %103 to %struct.nd_opt_hdr*
  store %struct.nd_opt_hdr* %104, %struct.nd_opt_hdr** %15, align 8
  %105 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %15, align 8
  %106 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 8
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %97
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp sgt i32 %112, %113
  br label %115

115:                                              ; preds = %111, %97
  %116 = phi i1 [ true, %97 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %205

121:                                              ; preds = %115
  %122 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %15, align 8
  %123 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ND_OPT_SOURCE_LL_ADDR, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %121
  %128 = load i32, i32* %16, align 4
  %129 = icmp eq i32 %128, 8
  br i1 %129, label %130, label %158

130:                                              ; preds = %127
  %131 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %132 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @is_zero_ether_addr(i32* %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %205

143:                                              ; preds = %130
  %144 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %145 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.nd_msg*, %struct.nd_msg** %13, align 8
  %150 = getelementptr inbounds %struct.nd_msg, %struct.nd_msg* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, 16
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* @ETH_ALEN, align 4
  %157 = call i32 @memcpy(i32* %148, i32* %155, i32 %156)
  br label %196

158:                                              ; preds = %127, %121
  %159 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %15, align 8
  %160 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @ND_OPT_TARGET_LL_ADDR, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %195

164:                                              ; preds = %158
  %165 = load i32, i32* %16, align 4
  %166 = icmp eq i32 %165, 8
  br i1 %166, label %167, label %195

167:                                              ; preds = %164
  %168 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %169 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @is_zero_ether_addr(i32* %172)
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i64 @unlikely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  br label %205

180:                                              ; preds = %167
  %181 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %182 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.nd_msg*, %struct.nd_msg** %13, align 8
  %187 = getelementptr inbounds %struct.nd_msg, %struct.nd_msg* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %190, 16
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* @ETH_ALEN, align 4
  %194 = call i32 @memcpy(i32* %185, i32* %192, i32 %193)
  br label %195

195:                                              ; preds = %180, %164, %158
  br label %196

196:                                              ; preds = %195, %143
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %12, align 4
  %199 = sub nsw i32 %198, %197
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %14, align 4
  br label %94

203:                                              ; preds = %94
  br label %204

204:                                              ; preds = %203, %47, %4
  br label %223

205:                                              ; preds = %179, %142, %120
  %206 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %207 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = call i32 @memset(i32* %209, i32 0, i32 4)
  %211 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %212 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @memset(i32* %215, i32 0, i32 8)
  %217 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %218 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @memset(i32* %221, i32 0, i32 8)
  br label %223

223:                                              ; preds = %205, %204, %74, %68
  %224 = load i32, i32* %11, align 4
  %225 = load i32*, i32** %7, align 8
  store i32 %224, i32* %225, align 4
  %226 = load i32, i32* %10, align 4
  ret i32 %226
}

declare dso_local %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @SW_FLOW_KEY_OFFSET(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
