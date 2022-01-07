; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_ieee80211_amsdu_to_8023s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_ieee80211_amsdu_to_8023s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i32, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.ethhdr = type { i32, i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@rfc1042_header = common dso_local global i32 0, align 4
@ETH_P_AARP = common dso_local global i32 0, align 4
@ETH_P_IPX = common dso_local global i32 0, align 4
@bridge_tunnel_header = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_amsdu_to_8023s(%struct.sk_buff* %0, %struct.sk_buff_head* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ethhdr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %19, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %20, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %21, align 8
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %6
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ieee80211_data_to_8023(%struct.sk_buff* %37, i32* %38, i32 %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %224

44:                                               ; preds = %36
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i64 @skb_pull(%struct.sk_buff* %45, i32 24)
  %47 = inttoptr i64 %46 to %struct.ethhdr*
  store %struct.ethhdr* %47, %struct.ethhdr** %16, align 8
  %48 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %49 = icmp ne %struct.ethhdr* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %224

51:                                               ; preds = %44
  br label %57

52:                                               ; preds = %6
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to %struct.ethhdr*
  store %struct.ethhdr* %56, %struct.ethhdr** %16, align 8
  br label %57

57:                                               ; preds = %52, %51
  br label %58

58:                                               ; preds = %216, %57
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %61 = icmp ne %struct.sk_buff* %59, %60
  br i1 %61, label %62, label %220

62:                                               ; preds = %58
  %63 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %64 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %23, align 4
  %67 = call i32 @ntohs(i32 %66)
  %68 = zext i32 %67 to i64
  %69 = add i64 24, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %24, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %17, align 4
  %74 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %75 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = call i32 @memcpy(i32* %30, i32* %76, i32 %77)
  %79 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %80 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcpy(i32* %33, i32* %81, i32 %82)
  %84 = load i32, i32* %24, align 4
  %85 = sub i32 4, %84
  %86 = and i32 %85, 3
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %62
  br label %221

91:                                               ; preds = %62
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = call i64 @skb_pull(%struct.sk_buff* %92, i32 24)
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %22, align 4
  %97 = add i32 %95, %96
  %98 = icmp ule i32 %94, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %100, %struct.sk_buff** %13, align 8
  br label %143

101:                                              ; preds = %91
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ALIGN(i32 %102, i32 4)
  store i32 %103, i32* %25, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %24, align 4
  %106 = add i32 %104, %105
  %107 = add i32 %106, 2
  %108 = call %struct.sk_buff* @dev_alloc_skb(i32 %107)
  store %struct.sk_buff* %108, %struct.sk_buff** %13, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %101
  br label %221

112:                                              ; preds = %101
  %113 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %114 = load i32, i32* %25, align 4
  %115 = zext i32 %114 to i64
  %116 = add i64 %115, 24
  %117 = add i64 %116, 2
  %118 = trunc i64 %117 to i32
  %119 = call i32 @skb_reserve(%struct.sk_buff* %113, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %121 = load i32, i32* %23, align 4
  %122 = call i32 @ntohs(i32 %121)
  %123 = call i32* @skb_put(%struct.sk_buff* %120, i32 %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %23, align 4
  %128 = call i32 @ntohs(i32 %127)
  %129 = call i32 @memcpy(i32* %123, i32* %126, i32 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %131 = load i32, i32* %23, align 4
  %132 = call i32 @ntohs(i32 %131)
  %133 = load i32, i32* %22, align 4
  %134 = add i32 %132, %133
  %135 = call i64 @skb_pull(%struct.sk_buff* %130, i32 %134)
  %136 = inttoptr i64 %135 to %struct.ethhdr*
  store %struct.ethhdr* %136, %struct.ethhdr** %16, align 8
  %137 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %138 = icmp ne %struct.ethhdr* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %112
  %140 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %141 = call i32 @dev_kfree_skb(%struct.sk_buff* %140)
  br label %221

142:                                              ; preds = %112
  br label %143

143:                                              ; preds = %142, %99
  %144 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %145 = call i32 @skb_reset_network_header(%struct.sk_buff* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  store i32* %158, i32** %15, align 8
  %159 = load i32*, i32** %15, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 6
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 8
  %163 = load i32*, i32** %15, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 7
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %162, %165
  store i32 %166, i32* %14, align 4
  %167 = load i32*, i32** %15, align 8
  %168 = load i32, i32* @rfc1042_header, align 4
  %169 = call i64 @ether_addr_equal(i32* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %143
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* @ETH_P_AARP, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* @ETH_P_IPX, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %184, label %179

179:                                              ; preds = %175, %171, %143
  %180 = load i32*, i32** %15, align 8
  %181 = load i32, i32* @bridge_tunnel_header, align 4
  %182 = call i64 @ether_addr_equal(i32* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br label %184

184:                                              ; preds = %179, %175
  %185 = phi i1 [ true, %175 ], [ %183, %179 ]
  %186 = zext i1 %185 to i32
  %187 = call i64 @likely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %184
  %190 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %191 = call i64 @skb_pull(%struct.sk_buff* %190, i32 6)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %193 = load i32, i32* @ETH_ALEN, align 4
  %194 = call i32* @skb_push(%struct.sk_buff* %192, i32 %193)
  %195 = load i32, i32* @ETH_ALEN, align 4
  %196 = call i32 @memcpy(i32* %194, i32* %33, i32 %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %198 = load i32, i32* @ETH_ALEN, align 4
  %199 = call i32* @skb_push(%struct.sk_buff* %197, i32 %198)
  %200 = load i32, i32* @ETH_ALEN, align 4
  %201 = call i32 @memcpy(i32* %199, i32* %30, i32 %200)
  br label %216

202:                                              ; preds = %184
  %203 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %204 = call i32* @skb_push(%struct.sk_buff* %203, i32 4)
  %205 = call i32 @memcpy(i32* %204, i32* %23, i32 4)
  %206 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %207 = load i32, i32* @ETH_ALEN, align 4
  %208 = call i32* @skb_push(%struct.sk_buff* %206, i32 %207)
  %209 = load i32, i32* @ETH_ALEN, align 4
  %210 = call i32 @memcpy(i32* %208, i32* %33, i32 %209)
  %211 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %212 = load i32, i32* @ETH_ALEN, align 4
  %213 = call i32* @skb_push(%struct.sk_buff* %211, i32 %212)
  %214 = load i32, i32* @ETH_ALEN, align 4
  %215 = call i32 @memcpy(i32* %213, i32* %30, i32 %214)
  br label %216

216:                                              ; preds = %202, %189
  %217 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %219 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %217, %struct.sk_buff* %218)
  br label %58

220:                                              ; preds = %58
  store i32 1, i32* %26, align 4
  br label %227

221:                                              ; preds = %139, %111, %90
  %222 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %223 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %222)
  br label %224

224:                                              ; preds = %221, %50, %43
  %225 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %226 = call i32 @dev_kfree_skb(%struct.sk_buff* %225)
  store i32 0, i32* %26, align 4
  br label %227

227:                                              ; preds = %224, %220
  %228 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i32, i32* %26, align 4
  switch i32 %229, label %231 [
    i32 0, label %230
    i32 1, label %230
  ]

230:                                              ; preds = %227, %227
  ret void

231:                                              ; preds = %227
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ieee80211_data_to_8023(%struct.sk_buff*, i32*, i32) #2

declare dso_local i64 @skb_pull(%struct.sk_buff*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ALIGN(i32, i32) #2

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #2

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #2

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i64 @ether_addr_equal(i32*, i32) #2

declare dso_local i32* @skb_push(%struct.sk_buff*, i32) #2

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #2

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
