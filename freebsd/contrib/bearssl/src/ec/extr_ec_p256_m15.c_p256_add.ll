; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }

@F256 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @p256_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p256_add(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [20 x i32], align 16
  %6 = alloca [20 x i32], align 16
  %7 = alloca [20 x i32], align 16
  %8 = alloca [20 x i32], align 16
  %9 = alloca [20 x i32], align 16
  %10 = alloca [20 x i32], align 16
  %11 = alloca [20 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @square_f256(i32* %14, i32* %17)
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %24 = call i32 @mul_f256(i32* %19, i32* %22, i32* %23)
  %25 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %30 = call i32 @mul_f256(i32* %25, i32* %28, i32* %29)
  %31 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %36 = call i32 @mul_f256(i32* %31, i32* %34, i32* %35)
  %37 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @square_f256(i32* %37, i32* %40)
  %42 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %47 = call i32 @mul_f256(i32* %42, i32* %45, i32* %46)
  %48 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %53 = call i32 @mul_f256(i32* %48, i32* %51, i32* %52)
  %54 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %59 = call i32 @mul_f256(i32* %54, i32* %57, i32* %58)
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %96, %2
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 20
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  %64 = load i32*, i32** @F256, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 1
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %69, %73
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %74
  store i32 %79, i32* %77, align 4
  %80 = load i32*, i32** @F256, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 1
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %85, %89
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %90
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %63
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %60

99:                                               ; preds = %60
  %100 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %101 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %102 = call i32 @norm13(i32* %100, i32* %101, i32 20)
  %103 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %104 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %105 = call i32 @norm13(i32* %103, i32* %104, i32 20)
  %106 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %107 = call i32 @reduce_f256(i32* %106)
  %108 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %109 = call i32 @reduce_final_f256(i32* %108)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %120, %99
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %111, 20
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %110

123:                                              ; preds = %110
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = sub nsw i32 0, %125
  %127 = or i32 %124, %126
  %128 = ashr i32 %127, 31
  store i32 %128, i32* %12, align 4
  %129 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %130 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %131 = call i32 @square_f256(i32* %129, i32* %130)
  %132 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %133 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %134 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %135 = call i32 @mul_f256(i32* %132, i32* %133, i32* %134)
  %136 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %137 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %138 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %139 = call i32 @mul_f256(i32* %136, i32* %137, i32* %138)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %144 = call i32 @square_f256(i32* %142, i32* %143)
  store i32 0, i32* %13, align 4
  br label %145

145:                                              ; preds = %174, %123
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %146, 20
  br i1 %147, label %148, label %177

148:                                              ; preds = %145
  %149 = load i32*, i32** @F256, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 3
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %154, %158
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 1
  %165 = sub nsw i32 %159, %164
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %165
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %148
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %145

177:                                              ; preds = %145
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @norm13(i32* %180, i32* %183, i32 20)
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @reduce_f256(i32* %187)
  store i32 0, i32* %13, align 4
  br label %189

189:                                              ; preds = %212, %177
  %190 = load i32, i32* %13, align 4
  %191 = icmp slt i32 %190, 20
  br i1 %191, label %192, label %215

192:                                              ; preds = %189
  %193 = load i32*, i32** @F256, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = shl i32 %197, 1
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %198, %205
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, %206
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %192
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %189

215:                                              ; preds = %189
  %216 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %217 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %218 = call i32 @norm13(i32* %216, i32* %217, i32 20)
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %223 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %224 = call i32 @mul_f256(i32* %221, i32* %222, i32* %223)
  %225 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %226 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %227 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %228 = call i32 @mul_f256(i32* %225, i32* %226, i32* %227)
  store i32 0, i32* %13, align 4
  br label %229

229:                                              ; preds = %252, %215
  %230 = load i32, i32* %13, align 4
  %231 = icmp slt i32 %230, 20
  br i1 %231, label %232, label %255

232:                                              ; preds = %229
  %233 = load i32*, i32** @F256, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 1
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %238, %242
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, %243
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %232
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %13, align 4
  br label %229

255:                                              ; preds = %229
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @norm13(i32* %258, i32* %261, i32 20)
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @reduce_f256(i32* %265)
  %267 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @mul_f256(i32* %267, i32* %270, i32* %273)
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %279 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %280 = call i32 @mul_f256(i32* %277, i32* %278, i32* %279)
  %281 = load i32, i32* %12, align 4
  ret i32 %281
}

declare dso_local i32 @square_f256(i32*, i32*) #1

declare dso_local i32 @mul_f256(i32*, i32*, i32*) #1

declare dso_local i32 @norm13(i32*, i32*, i32) #1

declare dso_local i32 @reduce_f256(i32*) #1

declare dso_local i32 @reduce_final_f256(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
