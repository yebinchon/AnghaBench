; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fp_add_impl.inc___addXf3__.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fp_add_impl.inc___addXf3__.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@absMask = common dso_local global i64 0, align 8
@infRep = common dso_local global i64 0, align 8
@quietBit = common dso_local global i64 0, align 8
@signBit = common dso_local global i64 0, align 8
@qnanRep = common dso_local global i64 0, align 8
@significandBits = common dso_local global i64 0, align 8
@maxExponent = common dso_local global i64 0, align 8
@significandMask = common dso_local global i64 0, align 8
@implicitBit = common dso_local global i64 0, align 8
@typeWidth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @__addXf3__ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__addXf3__(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @toRep(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @toRep(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @absMask, align 8
  %31 = and i64 %29, %30
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @absMask, align 8
  %34 = and i64 %32, %33
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @REP_C(i32 1)
  %37 = sub nsw i64 %35, %36
  %38 = load i64, i64* @infRep, align 8
  %39 = call i64 @REP_C(i32 1)
  %40 = sub nsw i64 %38, %39
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %2
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @REP_C(i32 1)
  %45 = sub nsw i64 %43, %44
  %46 = load i64, i64* @infRep, align 8
  %47 = call i64 @REP_C(i32 1)
  %48 = sub nsw i64 %46, %47
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %114

50:                                               ; preds = %42, %2
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @infRep, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @toRep(i32 %55)
  %57 = load i64, i64* @quietBit, align 8
  %58 = or i64 %56, %57
  %59 = call i32 @fromRep(i64 %58)
  store i32 %59, i32* %3, align 4
  br label %309

60:                                               ; preds = %50
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @infRep, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @toRep(i32 %65)
  %67 = load i64, i64* @quietBit, align 8
  %68 = or i64 %66, %67
  %69 = call i32 @fromRep(i64 %68)
  store i32 %69, i32* %3, align 4
  br label %309

70:                                               ; preds = %60
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @infRep, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @toRep(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @toRep(i32 %77)
  %79 = xor i64 %76, %78
  %80 = load i64, i64* @signBit, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i64, i64* @qnanRep, align 8
  %84 = call i32 @fromRep(i64 %83)
  store i32 %84, i32* %3, align 4
  br label %309

85:                                               ; preds = %74
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %3, align 4
  br label %309

87:                                               ; preds = %70
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @infRep, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %3, align 4
  br label %309

93:                                               ; preds = %87
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %4, align 4
  %101 = call i64 @toRep(i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @toRep(i32 %102)
  %104 = and i64 %101, %103
  %105 = call i32 @fromRep(i64 %104)
  store i32 %105, i32* %3, align 4
  br label %309

106:                                              ; preds = %96
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %3, align 4
  br label %309

108:                                              ; preds = %93
  %109 = load i64, i64* %9, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %3, align 4
  br label %309

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %42
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %8, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i64, i64* %6, align 8
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* %7, align 8
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %10, align 8
  store i64 %121, i64* %7, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @significandBits, align 8
  %125 = ashr i64 %123, %124
  %126 = load i64, i64* @maxExponent, align 8
  %127 = and i64 %125, %126
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %11, align 4
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @significandBits, align 8
  %131 = ashr i64 %129, %130
  %132 = load i64, i64* @maxExponent, align 8
  %133 = and i64 %131, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %12, align 4
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @significandMask, align 8
  %137 = and i64 %135, %136
  store i64 %137, i64* %13, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* @significandMask, align 8
  %140 = and i64 %138, %139
  store i64 %140, i64* %14, align 8
  %141 = load i32, i32* %11, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %122
  %144 = call i32 @normalize(i64* %13)
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %143, %122
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 @normalize(i64* %14)
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %148, %145
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* @signBit, align 8
  %153 = and i64 %151, %152
  store i64 %153, i64* %15, align 8
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* %7, align 8
  %156 = xor i64 %154, %155
  %157 = load i64, i64* @signBit, align 8
  %158 = and i64 %156, %157
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %16, align 4
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* @implicitBit, align 8
  %162 = or i64 %160, %161
  %163 = shl i64 %162, 3
  store i64 %163, i64* %13, align 8
  %164 = load i64, i64* %14, align 8
  %165 = load i64, i64* @implicitBit, align 8
  %166 = or i64 %164, %165
  %167 = shl i64 %166, 3
  store i64 %167, i64* %14, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = sub nsw i32 %168, %169
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %150
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* @typeWidth, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %173
  %178 = load i64, i64* %14, align 8
  %179 = load i32, i32* @typeWidth, align 4
  %180 = load i32, i32* %17, align 4
  %181 = sub i32 %179, %180
  %182 = zext i32 %181 to i64
  %183 = shl i64 %178, %182
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %18, align 4
  %185 = load i64, i64* %14, align 8
  %186 = load i32, i32* %17, align 4
  %187 = zext i32 %186 to i64
  %188 = ashr i64 %185, %187
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = or i64 %188, %190
  store i64 %191, i64* %14, align 8
  br label %193

192:                                              ; preds = %173
  store i64 1, i64* %14, align 8
  br label %193

193:                                              ; preds = %192, %177
  br label %194

194:                                              ; preds = %193, %150
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %225

197:                                              ; preds = %194
  %198 = load i64, i64* %14, align 8
  %199 = load i64, i64* %13, align 8
  %200 = sub nsw i64 %199, %198
  store i64 %200, i64* %13, align 8
  %201 = load i64, i64* %13, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = call i32 @fromRep(i64 0)
  store i32 %204, i32* %3, align 4
  br label %309

205:                                              ; preds = %197
  %206 = load i64, i64* %13, align 8
  %207 = load i64, i64* @implicitBit, align 8
  %208 = shl i64 %207, 3
  %209 = icmp slt i64 %206, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = load i64, i64* %13, align 8
  %212 = call i32 @rep_clz(i64 %211)
  %213 = load i64, i64* @implicitBit, align 8
  %214 = shl i64 %213, 3
  %215 = call i32 @rep_clz(i64 %214)
  %216 = sub nsw i32 %212, %215
  store i32 %216, i32* %19, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load i64, i64* %13, align 8
  %219 = zext i32 %217 to i64
  %220 = shl i64 %218, %219
  store i64 %220, i64* %13, align 8
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* %11, align 4
  %223 = sub nsw i32 %222, %221
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %210, %205
  br label %246

225:                                              ; preds = %194
  %226 = load i64, i64* %14, align 8
  %227 = load i64, i64* %13, align 8
  %228 = add nsw i64 %227, %226
  store i64 %228, i64* %13, align 8
  %229 = load i64, i64* %13, align 8
  %230 = load i64, i64* @implicitBit, align 8
  %231 = shl i64 %230, 4
  %232 = and i64 %229, %231
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %225
  %235 = load i64, i64* %13, align 8
  %236 = and i64 %235, 1
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %20, align 4
  %238 = load i64, i64* %13, align 8
  %239 = ashr i64 %238, 1
  %240 = load i32, i32* %20, align 4
  %241 = sext i32 %240 to i64
  %242 = or i64 %239, %241
  store i64 %242, i64* %13, align 8
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %11, align 4
  br label %245

245:                                              ; preds = %234, %225
  br label %246

246:                                              ; preds = %245, %224
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* @maxExponent, align 8
  %250 = icmp sge i64 %248, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load i64, i64* @infRep, align 8
  %253 = load i64, i64* %15, align 8
  %254 = or i64 %252, %253
  %255 = call i32 @fromRep(i64 %254)
  store i32 %255, i32* %3, align 4
  br label %309

256:                                              ; preds = %246
  %257 = load i32, i32* %11, align 4
  %258 = icmp sle i32 %257, 0
  br i1 %258, label %259, label %276

259:                                              ; preds = %256
  %260 = load i32, i32* %11, align 4
  %261 = sub nsw i32 1, %260
  store i32 %261, i32* %21, align 4
  %262 = load i64, i64* %13, align 8
  %263 = load i32, i32* @typeWidth, align 4
  %264 = load i32, i32* %21, align 4
  %265 = sub i32 %263, %264
  %266 = zext i32 %265 to i64
  %267 = shl i64 %262, %266
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %22, align 4
  %269 = load i64, i64* %13, align 8
  %270 = load i32, i32* %21, align 4
  %271 = zext i32 %270 to i64
  %272 = ashr i64 %269, %271
  %273 = load i32, i32* %22, align 4
  %274 = sext i32 %273 to i64
  %275 = or i64 %272, %274
  store i64 %275, i64* %13, align 8
  store i32 0, i32* %11, align 4
  br label %276

276:                                              ; preds = %259, %256
  %277 = load i64, i64* %13, align 8
  %278 = and i64 %277, 7
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %23, align 4
  %280 = load i64, i64* %13, align 8
  %281 = ashr i64 %280, 3
  %282 = load i64, i64* @significandMask, align 8
  %283 = and i64 %281, %282
  store i64 %283, i64* %24, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = load i64, i64* @significandBits, align 8
  %287 = shl i64 %285, %286
  %288 = load i64, i64* %24, align 8
  %289 = or i64 %288, %287
  store i64 %289, i64* %24, align 8
  %290 = load i64, i64* %15, align 8
  %291 = load i64, i64* %24, align 8
  %292 = or i64 %291, %290
  store i64 %292, i64* %24, align 8
  %293 = load i32, i32* %23, align 4
  %294 = icmp sgt i32 %293, 4
  br i1 %294, label %295, label %298

295:                                              ; preds = %276
  %296 = load i64, i64* %24, align 8
  %297 = add nsw i64 %296, 1
  store i64 %297, i64* %24, align 8
  br label %298

298:                                              ; preds = %295, %276
  %299 = load i32, i32* %23, align 4
  %300 = icmp eq i32 %299, 4
  br i1 %300, label %301, label %306

301:                                              ; preds = %298
  %302 = load i64, i64* %24, align 8
  %303 = and i64 %302, 1
  %304 = load i64, i64* %24, align 8
  %305 = add nsw i64 %304, %303
  store i64 %305, i64* %24, align 8
  br label %306

306:                                              ; preds = %301, %298
  %307 = load i64, i64* %24, align 8
  %308 = call i32 @fromRep(i64 %307)
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %306, %251, %203, %111, %106, %99, %91, %85, %82, %64, %54
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i64 @toRep(i32) #1

declare dso_local i64 @REP_C(i32) #1

declare dso_local i32 @fromRep(i64) #1

declare dso_local i32 @normalize(i64*) #1

declare dso_local i32 @rep_clz(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
