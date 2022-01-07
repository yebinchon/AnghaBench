; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_gro_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_gro_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, %struct.sk_buff*, %struct.sk_buff*, i64, i32 }
%struct.skb_shared_info = type { i32, i32, %struct.TYPE_3__*, %struct.sk_buff* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@E2BIG = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_gro_receive(%struct.sk_buff** %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff**, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.skb_shared_info*, align 8
  %9 = alloca %struct.skb_shared_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %21)
  store %struct.skb_shared_info* %22, %struct.skb_shared_info** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %23)
  store %struct.skb_shared_info* %24, %struct.skb_shared_info** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @skb_gro_len(%struct.sk_buff* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @skb_gro_offset(%struct.sk_buff* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @skb_headlen(%struct.sk_buff* %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = add i32 %33, %34
  %36 = icmp uge i32 %35, 65536
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @E2BIG, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %331

40:                                               ; preds = %2
  %41 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %42 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %41, i32 0, i32 3
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %258

46:                                               ; preds = %40
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ule i32 %47, %48
  br i1 %49, label %50, label %127

50:                                               ; preds = %46
  %51 = load %struct.skb_shared_info*, %struct.skb_shared_info** %8, align 8
  %52 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %16, align 4
  %54 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %55 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load i32, i32* @E2BIG, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %331

68:                                               ; preds = %50
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %71 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.skb_shared_info*, %struct.skb_shared_info** %8, align 8
  %73 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %75 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  store %struct.TYPE_3__* %79, %struct.TYPE_3__** %14, align 8
  %80 = load %struct.skb_shared_info*, %struct.skb_shared_info** %8, align 8
  %81 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %15, align 8
  br label %86

86:                                               ; preds = %93, %68
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 -1
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %14, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 -1
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %15, align 8
  %91 = bitcast %struct.TYPE_3__* %88 to i8*
  %92 = bitcast %struct.TYPE_3__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 8, i1 false)
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %86, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 2
  store i32 0, i32* %123, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = call %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  br label %307

127:                                              ; preds = %46
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = call i32 @skb_gro_len(%struct.sk_buff* %128)
  %130 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %131 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i32, i32* @E2BIG, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %331

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = call i32 @skb_headroom(%struct.sk_buff* %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = call i32 @skb_gro_offset(%struct.sk_buff* %143)
  %145 = add i32 %142, %144
  %146 = load i32, i32* @GFP_ATOMIC, align 4
  %147 = call %struct.sk_buff* @alloc_skb(i32 %145, i32 %146)
  store %struct.sk_buff* %147, %struct.sk_buff** %7, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %149 = icmp ne %struct.sk_buff* %148, null
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %139
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %331

157:                                              ; preds = %139
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = call i32 @__copy_skb_header(%struct.sk_buff* %158, %struct.sk_buff* %159)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @skb_reserve(%struct.sk_buff* %166, i32 %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %171 = call i32 @skb_gro_offset(%struct.sk_buff* %170)
  %172 = call i32 @__skb_put(%struct.sk_buff* %169, i32 %171)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %175 = call i64 @skb_mac_header(%struct.sk_buff* %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %175, %178
  %180 = call i32 @skb_set_mac_header(%struct.sk_buff* %173, i64 %179)
  %181 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %183 = call i32 @skb_network_offset(%struct.sk_buff* %182)
  %184 = call i32 @skb_set_network_header(%struct.sk_buff* %181, i32 %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %187 = call i32 @skb_transport_offset(%struct.sk_buff* %186)
  %188 = call i32 @skb_set_transport_header(%struct.sk_buff* %185, i32 %187)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %191 = call i32 @skb_gro_offset(%struct.sk_buff* %190)
  %192 = call i32 @__skb_pull(%struct.sk_buff* %189, i32 %191)
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = call i64 @skb_mac_header(%struct.sk_buff* %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %196 = call i64 @skb_mac_header(%struct.sk_buff* %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %201 = call i64 @skb_mac_header(%struct.sk_buff* %200)
  %202 = sub nsw i64 %199, %201
  %203 = call i32 @memcpy(i64 %194, i64 %196, i64 %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %205 = call %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff* %204)
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = call %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff* %206)
  %208 = bitcast %struct.TYPE_4__* %205 to i8*
  %209 = bitcast %struct.TYPE_4__* %207 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %208, i8* align 4 %209, i64 12, i1 false)
  %210 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %212 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %211)
  %213 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %212, i32 0, i32 3
  store %struct.sk_buff* %210, %struct.sk_buff** %213, align 8
  %214 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %215 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %218 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %217)
  %219 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %218, i32 0, i32 1
  store i32 %216, i32* %219, align 4
  %220 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %221 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %220, i32 0, i32 1
  store i32 0, i32* %221, align 4
  %222 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %223 = call i32 @skb_header_release(%struct.sk_buff* %222)
  %224 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %225 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 3
  store %struct.sk_buff* %224, %struct.sk_buff** %226, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = add i32 %232, %229
  store i32 %233, i32* %231, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %238 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %242 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %245 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = add i32 %246, %243
  store i32 %247, i32* %245, align 8
  %248 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %249 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  store %struct.sk_buff* %248, %struct.sk_buff** %249, align 8
  %250 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %251 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %250, i32 0, i32 4
  %252 = load %struct.sk_buff*, %struct.sk_buff** %251, align 8
  %253 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %254 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %253, i32 0, i32 4
  store %struct.sk_buff* %252, %struct.sk_buff** %254, align 8
  %255 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %256 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %255, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %256, align 8
  %257 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %257, %struct.sk_buff** %6, align 8
  br label %258

258:                                              ; preds = %157, %45
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %13, align 4
  %261 = icmp ugt i32 %259, %260
  br i1 %261, label %262, label %293

262:                                              ; preds = %258
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %13, align 4
  %265 = sub i32 %263, %264
  store i32 %265, i32* %18, align 4
  %266 = load i32, i32* %18, align 4
  %267 = load %struct.skb_shared_info*, %struct.skb_shared_info** %8, align 8
  %268 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %267, i32 0, i32 2
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = add i32 %272, %266
  store i32 %273, i32* %271, align 4
  %274 = load i32, i32* %18, align 4
  %275 = load %struct.skb_shared_info*, %struct.skb_shared_info** %8, align 8
  %276 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %275, i32 0, i32 2
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sub i32 %280, %274
  store i32 %281, i32* %279, align 4
  %282 = load i32, i32* %18, align 4
  %283 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %284 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = sub i32 %285, %282
  store i32 %286, i32* %284, align 8
  %287 = load i32, i32* %18, align 4
  %288 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %289 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = sub i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load i32, i32* %13, align 4
  store i32 %292, i32* %12, align 4
  br label %293

293:                                              ; preds = %262, %258
  %294 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %295 = load i32, i32* %12, align 4
  %296 = call i32 @__skb_pull(%struct.sk_buff* %294, i32 %295)
  %297 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %298 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %299 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %298, i32 0, i32 3
  %300 = load %struct.sk_buff*, %struct.sk_buff** %299, align 8
  %301 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %300, i32 0, i32 4
  store %struct.sk_buff* %297, %struct.sk_buff** %301, align 8
  %302 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %303 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %304 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %303, i32 0, i32 3
  store %struct.sk_buff* %302, %struct.sk_buff** %304, align 8
  %305 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %306 = call i32 @skb_header_release(%struct.sk_buff* %305)
  br label %307

307:                                              ; preds = %293, %97
  %308 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %309 = call %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff* %308)
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 4
  %313 = load i32, i32* %11, align 4
  %314 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %315 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = add i32 %316, %313
  store i32 %317, i32* %315, align 8
  %318 = load i32, i32* %11, align 4
  %319 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %320 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = add i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %325 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = add i32 %326, %323
  store i32 %327, i32* %325, align 8
  %328 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %329 = call %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff* %328)
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 1
  store i32 1, i32* %330, align 4
  store i32 0, i32* %3, align 4
  br label %331

331:                                              ; preds = %307, %154, %134, %65, %37
  %332 = load i32, i32* %3, align 4
  ret i32 %332
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_gro_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_gro_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__copy_skb_header(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @skb_header_release(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
