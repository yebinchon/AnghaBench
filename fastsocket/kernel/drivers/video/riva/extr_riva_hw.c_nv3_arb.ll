; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv3_arb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv3_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ENGINE = common dso_local global i64 0, align 8
@MPORT = common dso_local global i64 0, align 8
@GRAPHICS = common dso_local global i64 0, align 8
@VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_12__*)* @nv3_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @nv3_arb(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %20, %23
  %25 = mul nsw i32 2, %24
  %26 = add nsw i32 %25, 5
  store i32 %26, i32* %17, align 4
  store i32 2, i32* %12, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 2, i32* %13, align 4
  br label %33

32:                                               ; preds = %3
  store i32 3, i32* %13, align 4
  br label %33

33:                                               ; preds = %32, %31
  store i32 2, i32* %14, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 1
  store i32 %37, i32* %15, align 4
  store i32 32, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %42, %45
  %47 = mul nsw i32 1000000, %46
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %47, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = mul nsw i64 %53, %56
  %58 = sdiv i64 %57, 1000000
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 22
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 21
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 20
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 15
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 16
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  store i32 1, i32* %74, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %163

79:                                               ; preds = %33
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sdiv i32 %86, 8
  %88 = sdiv i32 %83, %87
  %89 = add nsw i32 %82, %88
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %89, %90
  %92 = mul nsw i32 1000000, %91
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %92, %95
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %8, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %79
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = mul nsw i64 %103, %106
  %108 = sdiv i64 %107, 1000000
  %109 = sub nsw i64 0, %108
  br label %111

110:                                              ; preds = %79
  br label %111

111:                                              ; preds = %110, %102
  %112 = phi i64 [ %109, %102 ], [ 0, %110 ]
  %113 = trunc i64 %112 to i32
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 19
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %111
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = mul nsw i64 %121, %124
  %126 = sdiv i64 %125, 1000000
  %127 = sub nsw i64 0, %126
  br label %129

128:                                              ; preds = %111
  br label %129

129:                                              ; preds = %128, %120
  %130 = phi i64 [ %127, %120 ], [ 0, %128 ]
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 6
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 18
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %129
  %138 = load i64, i64* %8, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = mul nsw i64 %138, %141
  %143 = sdiv i64 %142, 1000000
  %144 = sub nsw i64 0, %143
  br label %146

145:                                              ; preds = %129
  br label %146

146:                                              ; preds = %145, %137
  %147 = phi i64 [ %144, %137 ], [ 0, %145 ]
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 8
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* @ENGINE, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 17
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 9
  store i32 1, i32* %154, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 10
  store i32 1, i32* %156, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 11
  store i32 1, i32* %158, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %162 = call i32 @nv3_iterate(%struct.TYPE_11__* %159, %struct.TYPE_10__* %160, %struct.TYPE_12__* %161)
  br label %163

163:                                              ; preds = %146, %33
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %256

168:                                              ; preds = %163
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %169, %172
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = sdiv i32 %177, 8
  %179 = sdiv i32 %174, %178
  %180 = add nsw i32 %173, %179
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %180, %181
  %183 = mul nsw i32 1000000, %182
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sdiv i32 %183, %186
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %10, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %168
  br label %204

194:                                              ; preds = %168
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %10, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = mul nsw i64 %197, %200
  %202 = sdiv i64 %201, 1000000
  %203 = sub nsw i64 %196, %202
  br label %204

204:                                              ; preds = %194, %193
  %205 = phi i64 [ 0, %193 ], [ %203, %194 ]
  %206 = trunc i64 %205 to i32
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 19
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  br label %222

214:                                              ; preds = %204
  %215 = load i64, i64* %10, align 8
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 7
  %218 = load i64, i64* %217, align 8
  %219 = mul nsw i64 %215, %218
  %220 = sdiv i64 %219, 1000000
  %221 = sub nsw i64 0, %220
  br label %222

222:                                              ; preds = %214, %213
  %223 = phi i64 [ 0, %213 ], [ %221, %214 ]
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 6
  store i64 %223, i64* %225, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 18
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  br label %239

231:                                              ; preds = %222
  %232 = load i64, i64* %10, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = mul nsw i64 %232, %235
  %237 = sdiv i64 %236, 1000000
  %238 = sub nsw i64 0, %237
  br label %239

239:                                              ; preds = %231, %230
  %240 = phi i64 [ 0, %230 ], [ %238, %231 ]
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 8
  store i64 %240, i64* %242, align 8
  %243 = load i64, i64* @MPORT, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 17
  store i64 %243, i64* %245, align 8
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 9
  store i32 1, i32* %247, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 10
  store i32 1, i32* %249, align 4
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 11
  store i32 0, i32* %251, align 8
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %255 = call i32 @nv3_iterate(%struct.TYPE_11__* %252, %struct.TYPE_10__* %253, %struct.TYPE_12__* %254)
  br label %256

256:                                              ; preds = %239, %163
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 18
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %345

261:                                              ; preds = %256
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 9
  store i32 1, i32* %263, align 8
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 10
  store i32 0, i32* %265, align 4
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 11
  store i32 1, i32* %267, align 8
  %268 = load i32, i32* %13, align 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = mul nsw i32 %268, %271
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 12
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = sdiv i32 %278, 8
  %280 = sdiv i32 %275, %279
  %281 = add nsw i32 %272, %280
  %282 = load i32, i32* %17, align 4
  %283 = add nsw i32 %281, %282
  %284 = mul nsw i32 1000000, %283
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sdiv i32 %284, %287
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %11, align 8
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 12
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = load i64, i64* %11, align 8
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = mul nsw i64 %294, %297
  %299 = sdiv i64 %298, 1000000
  %300 = sub nsw i64 %293, %299
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 8
  store i64 %300, i64* %302, align 8
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 19
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %261
  %308 = load i64, i64* %11, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 7
  %311 = load i64, i64* %310, align 8
  %312 = mul nsw i64 %308, %311
  %313 = sdiv i64 %312, 1000000
  %314 = sub nsw i64 0, %313
  br label %316

315:                                              ; preds = %261
  br label %316

316:                                              ; preds = %315, %307
  %317 = phi i64 [ %314, %307 ], [ 0, %315 ]
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 6
  store i64 %317, i64* %319, align 8
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %332

324:                                              ; preds = %316
  %325 = load i64, i64* %11, align 8
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 5
  %328 = load i64, i64* %327, align 8
  %329 = mul nsw i64 %325, %328
  %330 = sdiv i64 %329, 1000000
  %331 = sub nsw i64 0, %330
  br label %333

332:                                              ; preds = %316
  br label %333

333:                                              ; preds = %332, %324
  %334 = phi i64 [ %331, %324 ], [ 0, %332 ]
  %335 = trunc i64 %334 to i32
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 4
  store i32 %335, i32* %337, align 8
  %338 = load i64, i64* @GRAPHICS, align 8
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 17
  store i64 %338, i64* %340, align 8
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %344 = call i32 @nv3_iterate(%struct.TYPE_11__* %341, %struct.TYPE_10__* %342, %struct.TYPE_12__* %343)
  br label %345

345:                                              ; preds = %333, %256
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 19
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %434

350:                                              ; preds = %345
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 9
  store i32 0, i32* %352, align 8
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 10
  store i32 1, i32* %354, align 4
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 11
  store i32 1, i32* %356, align 8
  %357 = load i32, i32* %14, align 4
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = mul nsw i32 %357, %360
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 13
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = sdiv i32 %367, 8
  %369 = sdiv i32 %364, %368
  %370 = add nsw i32 %361, %369
  %371 = load i32, i32* %17, align 4
  %372 = add nsw i32 %370, %371
  %373 = mul nsw i32 1000000, %372
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = sdiv i32 %373, %376
  %378 = sext i32 %377 to i64
  store i64 %378, i64* %9, align 8
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 13
  %381 = load i32, i32* %380, align 8
  %382 = sext i32 %381 to i64
  %383 = load i64, i64* %9, align 8
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 7
  %386 = load i64, i64* %385, align 8
  %387 = mul nsw i64 %383, %386
  %388 = sdiv i64 %387, 1000000
  %389 = sub nsw i64 %382, %388
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 6
  store i64 %389, i64* %391, align 8
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 18
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %404

396:                                              ; preds = %350
  %397 = load i64, i64* %9, align 8
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = mul nsw i64 %397, %400
  %402 = sdiv i64 %401, 1000000
  %403 = sub nsw i64 0, %402
  br label %405

404:                                              ; preds = %350
  br label %405

405:                                              ; preds = %404, %396
  %406 = phi i64 [ %403, %396 ], [ 0, %404 ]
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 8
  store i64 %406, i64* %408, align 8
  %409 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 5
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %405
  %414 = load i64, i64* %9, align 8
  %415 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 5
  %417 = load i64, i64* %416, align 8
  %418 = mul nsw i64 %414, %417
  %419 = sdiv i64 %418, 1000000
  %420 = sub nsw i64 0, %419
  br label %422

421:                                              ; preds = %405
  br label %422

422:                                              ; preds = %421, %413
  %423 = phi i64 [ %420, %413 ], [ 0, %421 ]
  %424 = trunc i64 %423 to i32
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 4
  store i32 %424, i32* %426, align 8
  %427 = load i64, i64* @VIDEO, align 8
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 17
  store i64 %427, i64* %429, align 8
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %431 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %433 = call i32 @nv3_iterate(%struct.TYPE_11__* %430, %struct.TYPE_10__* %431, %struct.TYPE_12__* %432)
  br label %434

434:                                              ; preds = %422, %345
  %435 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %512

439:                                              ; preds = %434
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 16
  %442 = load i64, i64* %441, align 8
  %443 = call i64 @abs(i64 %442)
  %444 = trunc i64 %443 to i32
  %445 = add nsw i32 %444, 16
  %446 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i32 0, i32 0
  store i32 %445, i32* %447, align 8
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 15
  %450 = load i64, i64* %449, align 8
  %451 = call i64 @abs(i64 %450)
  %452 = trunc i64 %451 to i32
  %453 = add nsw i32 %452, 32
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 1
  store i32 %453, i32* %455, align 4
  %456 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %456, i32 0, i32 12
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 2
  store i64 %459, i64* %461, align 8
  %462 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %462, i32 0, i32 13
  %464 = load i32, i32* %463, align 8
  %465 = sext i32 %464 to i64
  %466 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %466, i32 0, i32 3
  store i64 %465, i64* %467, align 8
  %468 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 14
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @GRAPHICS, align 8
  %472 = icmp eq i64 %470, %471
  %473 = zext i1 %472 to i32
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i32 0, i32 4
  store i32 %473, i32* %475, align 8
  %476 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %476, i32 0, i32 14
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* @MPORT, align 8
  %480 = icmp eq i64 %478, %479
  %481 = zext i1 %480 to i32
  %482 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %482, i32 0, i32 5
  store i32 %481, i32* %483, align 4
  %484 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %485 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = icmp sgt i32 %486, 160
  br i1 %487, label %488, label %503

488:                                              ; preds = %439
  %489 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 0
  store i32 256, i32* %490, align 8
  %491 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %491, i32 0, i32 1
  store i32 128, i32* %492, align 4
  %493 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %493, i32 0, i32 2
  store i64 64, i64* %494, align 8
  %495 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i32 0, i32 3
  store i64 64, i64* %496, align 8
  %497 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i32 0, i32 4
  store i32 0, i32* %498, align 8
  %499 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %499, i32 0, i32 5
  store i32 0, i32* %500, align 4
  %501 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %502 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %501, i32 0, i32 3
  store i32 0, i32* %502, align 4
  store i8 0, i8* %4, align 1
  br label %525

503:                                              ; preds = %439
  %504 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = icmp sgt i32 %506, 128
  br i1 %507, label %508, label %511

508:                                              ; preds = %503
  %509 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %509, i32 0, i32 1
  store i32 128, i32* %510, align 4
  br label %511

511:                                              ; preds = %508, %503
  store i8 1, i8* %4, align 1
  br label %525

512:                                              ; preds = %434
  %513 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %513, i32 0, i32 0
  store i32 256, i32* %514, align 8
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 1
  store i32 128, i32* %516, align 4
  %517 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %518 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %517, i32 0, i32 2
  store i64 64, i64* %518, align 8
  %519 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i32 0, i32 3
  store i64 64, i64* %520, align 8
  %521 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %521, i32 0, i32 4
  store i32 0, i32* %522, align 8
  %523 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %524 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %523, i32 0, i32 5
  store i32 0, i32* %524, align 4
  store i8 0, i8* %4, align 1
  br label %525

525:                                              ; preds = %512, %511, %488
  %526 = load i8, i8* %4, align 1
  ret i8 %526
}

declare dso_local i32 @nv3_iterate(%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
