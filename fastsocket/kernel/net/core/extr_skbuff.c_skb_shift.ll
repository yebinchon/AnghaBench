; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_shift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i8* }
%struct.skb_frag_struct = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.skb_frag_struct* }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_shift(%struct.sk_buff* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.skb_frag_struct*, align 8
  %13 = alloca %struct.skb_frag_struct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_headlen(%struct.sk_buff* %21)
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %8, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %32, i64 %34
  store %struct.skb_frag_struct* %35, %struct.skb_frag_struct** %12, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %3
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %42 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %45 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @skb_can_coalesce(%struct.sk_buff* %39, i32 %40, i32 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38, %3
  store i32 -1, i32* %10, align 4
  br label %102

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %54 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %50
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i64 @skb_prepare_for_shift(%struct.sk_buff* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i64 @skb_prepare_for_shift(%struct.sk_buff* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %60
  store i32 0, i32* %4, align 4
  br label %326

69:                                               ; preds = %64
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %73, i64 %75
  store %struct.skb_frag_struct* %76, %struct.skb_frag_struct** %12, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %80, i64 %82
  store %struct.skb_frag_struct* %83, %struct.skb_frag_struct** %13, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %86 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %91 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %96 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %288

99:                                               ; preds = %50
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %49
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 %115, %116
  %118 = icmp sgt i32 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %326

120:                                              ; preds = %108, %102
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call i64 @skb_prepare_for_shift(%struct.sk_buff* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = call i64 @skb_prepare_for_shift(%struct.sk_buff* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %120
  store i32 0, i32* %4, align 4
  br label %326

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %211, %129
  %131 = load i32, i32* %11, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %135)
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %134, %138
  br label %140

140:                                              ; preds = %133, %130
  %141 = phi i1 [ false, %130 ], [ %139, %133 ]
  br i1 %141, label %142, label %212

142:                                              ; preds = %140
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %326

147:                                              ; preds = %142
  %148 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %149 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %148)
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %151, i64 %153
  store %struct.skb_frag_struct* %154, %struct.skb_frag_struct** %12, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %155)
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %158, i64 %160
  store %struct.skb_frag_struct* %161, %struct.skb_frag_struct** %13, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %164 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp sge i32 %162, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %147
  %168 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %169 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %170 = bitcast %struct.skb_frag_struct* %168 to i8*
  %171 = bitcast %struct.skb_frag_struct* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 4 %171, i64 12, i1 false)
  %172 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %173 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %11, align 4
  %176 = sub nsw i32 %175, %174
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %211

181:                                              ; preds = %147
  %182 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %183 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @get_page(i32 %184)
  %186 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %187 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %190 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 4
  %191 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %192 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %195 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %198 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %201 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %206 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %207, %204
  store i32 %208, i32* %206, align 4
  store i32 0, i32* %11, align 4
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %212

211:                                              ; preds = %167
  br label %130

212:                                              ; preds = %181, %140
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %215 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %214)
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  store i32 %213, i32* %216, align 8
  %217 = load i32, i32* %10, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %243

219:                                              ; preds = %212
  %220 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %221 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %220)
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  %223 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %222, align 8
  %224 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %223, i64 0
  store %struct.skb_frag_struct* %224, %struct.skb_frag_struct** %12, align 8
  %225 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %226 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %225)
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 1
  %228 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %227, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %228, i64 %230
  store %struct.skb_frag_struct* %231, %struct.skb_frag_struct** %13, align 8
  %232 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %233 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %236 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, %234
  store i32 %238, i32* %236, align 4
  %239 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %240 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @put_page(i32 %241)
  br label %243

243:                                              ; preds = %219, %212
  store i32 0, i32* %9, align 4
  br label %244

244:                                              ; preds = %251, %243
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %247 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %246)
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp slt i32 %245, %249
  br i1 %250, label %251, label %270

251:                                              ; preds = %244
  %252 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %253 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %252)
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 1
  %255 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %9, align 4
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %255, i64 %258
  %260 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %261 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %260)
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 1
  %263 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %263, i64 %266
  %268 = bitcast %struct.skb_frag_struct* %259 to i8*
  %269 = bitcast %struct.skb_frag_struct* %267 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %268, i8* align 4 %269, i64 12, i1 false)
  br label %244

270:                                              ; preds = %244
  %271 = load i32, i32* %9, align 4
  %272 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %273 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %272)
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  store i32 %271, i32* %274, align 8
  %275 = load i32, i32* %11, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %270
  %278 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %279 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %278)
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 0
  %283 = xor i1 %282, true
  br label %284

284:                                              ; preds = %277, %270
  %285 = phi i1 [ false, %270 ], [ %283, %277 ]
  %286 = zext i1 %285 to i32
  %287 = call i32 @BUG_ON(i32 %286)
  br label %288

288:                                              ; preds = %284, %69
  %289 = load i8*, i8** @CHECKSUM_PARTIAL, align 8
  %290 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %291 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %290, i32 0, i32 3
  store i8* %289, i8** %291, align 8
  %292 = load i8*, i8** @CHECKSUM_PARTIAL, align 8
  %293 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %294 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %293, i32 0, i32 3
  store i8* %292, i8** %294, align 8
  %295 = load i32, i32* %7, align 4
  %296 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %297 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sub nsw i32 %298, %295
  store i32 %299, i32* %297, align 8
  %300 = load i32, i32* %7, align 4
  %301 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %302 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = sub nsw i32 %303, %300
  store i32 %304, i32* %302, align 4
  %305 = load i32, i32* %7, align 4
  %306 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %307 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = sub nsw i32 %308, %305
  store i32 %309, i32* %307, align 8
  %310 = load i32, i32* %7, align 4
  %311 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %312 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 %313, %310
  store i32 %314, i32* %312, align 8
  %315 = load i32, i32* %7, align 4
  %316 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %317 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, %315
  store i32 %319, i32* %317, align 4
  %320 = load i32, i32* %7, align 4
  %321 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %322 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %323, %320
  store i32 %324, i32* %322, align 8
  %325 = load i32, i32* %7, align 4
  store i32 %325, i32* %4, align 4
  br label %326

326:                                              ; preds = %288, %146, %128, %119, %68
  %327 = load i32, i32* %4, align 4
  ret i32 %327
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_can_coalesce(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @skb_prepare_for_shift(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
