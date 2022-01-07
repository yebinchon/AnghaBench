; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_rivafb_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_rivafb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.riva_par* }
%struct.TYPE_8__ = type { i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.riva_par = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)*, i32, i32 }
%struct.fb_cursor = type { i32, i32, i64, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64 }

@MAX_CURS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FB_CUR_SETALL = common dso_local global i32 0, align 4
@FB_CUR_SETSIZE = common dso_local global i32 0, align 4
@FB_CUR_SETPOS = common dso_local global i32 0, align 4
@FB_CUR_SETSHAPE = common dso_local global i32 0, align 4
@FB_CUR_SETCMAP = common dso_local global i32 0, align 4
@FB_CUR_SETIMAGE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @rivafb_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rivafb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.riva_par*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 2
  %26 = load %struct.riva_par*, %struct.riva_par** %25, align 8
  store %struct.riva_par* %26, %struct.riva_par** %6, align 8
  %27 = load i32, i32* @MAX_CURS, align 4
  %28 = load i32, i32* @MAX_CURS, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 8
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %7, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %34 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %35 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %38 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_CURS, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %2
  %44 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX_CURS, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43, %2
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %341

53:                                               ; preds = %43
  %54 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %55 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %56, align 8
  %58 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %59 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %58, i32 0, i32 0
  %60 = call i32 %57(%struct.TYPE_10__* %59, i32 0)
  %61 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %62 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load i32, i32* @FB_CUR_SETALL, align 4
  store i32 %66, i32* %10, align 4
  %67 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %68 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %53
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @FB_CUR_SETSIZE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %76 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MAX_CURS, align 4
  %80 = load i32, i32* @MAX_CURS, align 4
  %81 = mul nsw i32 %79, %80
  %82 = mul nsw i32 %81, 2
  %83 = call i32 @memset_io(i32 %78, i32 0, i32 %82)
  br label %84

84:                                               ; preds = %74, %69
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @FB_CUR_SETPOS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %84
  %90 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %91 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %93, %97
  store i32 %98, i32* %15, align 4
  %99 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %100 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %102, %106
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = and i32 %108, 65535
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %15, align 4
  %111 = shl i32 %110, 16
  %112 = load i32, i32* %16, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %16, align 4
  %114 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %115 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @NV_WR32(i32 %117, i32 768, i32 %118)
  br label %120

120:                                              ; preds = %89, %84
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @FB_CUR_SETSHAPE, align 4
  %123 = load i32, i32* @FB_CUR_SETCMAP, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @FB_CUR_SETIMAGE, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %121, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %327

129:                                              ; preds = %120
  %130 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %131 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %17, align 4
  %134 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %135 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %18, align 4
  %138 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %139 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 7
  %143 = ashr i32 %142, 3
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* @MAX_CURS, align 4
  %145 = sdiv i32 %144, 8
  store i32 %145, i32* %20, align 4
  %146 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %147 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to i32*
  store i32* %150, i32** %21, align 8
  %151 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %152 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i32*
  store i32* %154, i32** %22, align 8
  %155 = load i32, i32* %19, align 4
  %156 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %157 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %155, %159
  %161 = load i32, i32* @GFP_ATOMIC, align 4
  %162 = call i32* @kmalloc(i32 %160, i32 %161)
  store i32* %162, i32** %23, align 8
  %163 = load i32*, i32** %23, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %326

165:                                              ; preds = %129
  %166 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %167 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  switch i32 %168, label %200 [
    i32 128, label %169
    i32 129, label %199
  ]

169:                                              ; preds = %165
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %195, %169
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %174 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %172, %176
  %178 = icmp slt i32 %171, %177
  br i1 %178, label %179, label %198

179:                                              ; preds = %170
  %180 = load i32*, i32** %21, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %22, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = xor i32 %184, %189
  %191 = load i32*, i32** %23, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  br label %195

195:                                              ; preds = %179
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %170

198:                                              ; preds = %170
  br label %230

199:                                              ; preds = %165
  br label %200

200:                                              ; preds = %165, %199
  store i32 0, i32* %9, align 4
  br label %201

201:                                              ; preds = %226, %200
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %19, align 4
  %204 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %205 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = mul nsw i32 %203, %207
  %209 = icmp slt i32 %202, %208
  br i1 %209, label %210, label %229

210:                                              ; preds = %201
  %211 = load i32*, i32** %21, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %22, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %215, %220
  %222 = load i32*, i32** %23, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %221, i32* %225, align 4
  br label %226

226:                                              ; preds = %210
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %9, align 4
  br label %201

229:                                              ; preds = %201
  br label %230

230:                                              ; preds = %229, %198
  %231 = load i32, i32* %20, align 4
  %232 = load i32*, i32** %23, align 8
  %233 = load i32, i32* %19, align 4
  %234 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %235 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @fb_pad_aligned_buffer(i32* %33, i32 %231, i32* %232, i32 %233, i32 %237)
  %239 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %240 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %17, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, 248
  %248 = shl i32 %247, 7
  %249 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %250 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, 248
  %258 = shl i32 %257, 2
  %259 = or i32 %248, %258
  %260 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %261 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %17, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, 248
  %269 = ashr i32 %268, 3
  %270 = or i32 %259, %269
  %271 = or i32 %270, 32768
  store i32 %271, i32* %12, align 4
  %272 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %273 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %18, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 248
  %281 = shl i32 %280, 7
  %282 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %283 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %18, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, 248
  %291 = shl i32 %290, 2
  %292 = or i32 %281, %291
  %293 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %294 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %18, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 248
  %302 = ashr i32 %301, 3
  %303 = or i32 %292, %302
  %304 = or i32 %303, 32768
  store i32 %304, i32* %11, align 4
  %305 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %306 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 1
  %308 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %307, align 8
  %309 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %310 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %309, i32 0, i32 0
  %311 = call i32 %308(%struct.TYPE_10__* %310, i32 0)
  %312 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %313 = load i32, i32* %12, align 4
  %314 = load i32, i32* %11, align 4
  %315 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %316 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %320 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @rivafb_load_cursor_image(%struct.riva_par* %312, i32* %33, i32 %313, i32 %314, i32 %318, i32 %322)
  %324 = load i32*, i32** %23, align 8
  %325 = call i32 @kfree(i32* %324)
  br label %326

326:                                              ; preds = %230, %129
  br label %327

327:                                              ; preds = %326, %120
  %328 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %329 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %327
  %333 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %334 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %335, align 8
  %337 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %338 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %337, i32 0, i32 0
  %339 = call i32 %336(%struct.TYPE_10__* %338, i32 1)
  br label %340

340:                                              ; preds = %332, %327
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %341

341:                                              ; preds = %340, %50
  %342 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %342)
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset_io(i32, i32, i32) #2

declare dso_local i32 @NV_WR32(i32, i32, i32) #2

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @rivafb_load_cursor_image(%struct.riva_par*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
