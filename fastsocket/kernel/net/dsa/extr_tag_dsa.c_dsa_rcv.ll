; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_dsa.c_dsa_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_dsa.c_dsa_rcv.c"
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
@DSA_HLEN = common dso_local global i32 0, align 4
@DSA_MAX_PORTS = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @dsa_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
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
  br label %231

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = icmp eq %struct.sk_buff* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %234

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* @DSA_HLEN, align 4
  %36 = call i32 @pskb_may_pull(%struct.sk_buff* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %231

43:                                               ; preds = %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -2
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
  br label %231

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
  br label %231

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
  br label %231

99:                                               ; preds = %89
  %100 = load i32*, i32** %12, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %159

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
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %131
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %16, align 4
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = call i32 @csum_partial(i32* %143, i32 2, i32 0)
  %145 = call i32 @csum_add(i32 %141, i32 %144)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = call i32 @csum_partial(i32* %148, i32 2, i32 0)
  %150 = call i32 @csum_sub(i32 %146, i32 %149)
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %137, %131
  %155 = load i32*, i32** %12, align 8
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %157 = load i32, i32* @DSA_HLEN, align 4
  %158 = call i32 @memcpy(i32* %155, i32* %156, i32 %157)
  br label %187

159:                                              ; preds = %99
  %160 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %161 = load i32, i32* @DSA_HLEN, align 4
  %162 = call i32 @skb_pull_rcsum(%struct.sk_buff* %160, i32 %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32*, i32** @ETH_HLEN, align 8
  %167 = ptrtoint i32* %165 to i64
  %168 = ptrtoint i32* %166 to i64
  %169 = sub i64 %167, %168
  %170 = sdiv exact i64 %169, 4
  %171 = trunc i64 %170 to i32
  %172 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32*, i32** @ETH_HLEN, align 8
  %176 = ptrtoint i32* %174 to i64
  %177 = ptrtoint i32* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sdiv exact i64 %178, 4
  %180 = load i32, i32* @DSA_HLEN, align 4
  %181 = sext i32 %180 to i64
  %182 = sub nsw i64 %179, %181
  %183 = trunc i64 %182 to i32
  %184 = load i32, i32* @ETH_ALEN, align 4
  %185 = mul nsw i32 2, %184
  %186 = call i32 @memmove(i32 %171, i32 %183, i32 %185)
  br label %187

187:                                              ; preds = %159, %154
  %188 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  %189 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %188, i32 0, i32 0
  %190 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %190, i64 %192
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 3
  store %struct.TYPE_6__* %194, %struct.TYPE_6__** %196, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %198 = load i32*, i32** @ETH_HLEN, align 8
  %199 = call i32 @skb_push(%struct.sk_buff* %197, i32* %198)
  %200 = load i32, i32* @PACKET_HOST, align 4
  %201 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 4
  %203 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 3
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = call i32 @eth_type_trans(%struct.sk_buff* %203, %struct.TYPE_6__* %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 3
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  %217 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %218 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 3
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %219
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %224, align 4
  %229 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %230 = call i32 @netif_receive_skb(%struct.sk_buff* %229)
  store i32 0, i32* %5, align 4
  br label %235

231:                                              ; preds = %98, %77, %59, %42, %25
  %232 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %233 = call i32 @kfree_skb(%struct.sk_buff* %232)
  br label %234

234:                                              ; preds = %231, %32
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %234, %187
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @csum_add(i32, i32) #1

declare dso_local i32 @csum_partial(i32*, i32, i32) #1

declare dso_local i32 @csum_sub(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

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
