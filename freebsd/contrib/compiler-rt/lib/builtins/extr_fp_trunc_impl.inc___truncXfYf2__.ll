; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fp_trunc_impl.inc___truncXfYf2__.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fp_trunc_impl.inc___truncXfYf2__.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = common dso_local global i32 0, align 4
@srcSigBits = common dso_local global i32 0, align 4
@dstSigBits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__truncXfYf2__ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__truncXfYf2__(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %38 = load i32, i32* @CHAR_BIT, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @srcSigBits, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = shl i32 1, %46
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = call i32 @SRC_REP_C(i32 1)
  %52 = load i32, i32* @srcSigBits, align 4
  %53 = shl i32 %51, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @srcSigBits, align 4
  %58 = shl i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = call i32 @SRC_REP_C(i32 1)
  %60 = load i32, i32* @srcSigBits, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %60, %61
  %63 = shl i32 %59, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = call i32 @SRC_REP_C(i32 1)
  %67 = load i32, i32* @srcSigBits, align 4
  %68 = load i32, i32* @dstSigBits, align 4
  %69 = sub nsw i32 %67, %68
  %70 = shl i32 %66, %69
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  %72 = call i32 @SRC_REP_C(i32 1)
  %73 = load i32, i32* @srcSigBits, align 4
  %74 = load i32, i32* @dstSigBits, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = shl i32 %72, %76
  store i32 %77, i32* %13, align 4
  %78 = call i32 @SRC_REP_C(i32 1)
  %79 = load i32, i32* @srcSigBits, align 4
  %80 = sub nsw i32 %79, 1
  %81 = shl i32 %78, %80
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* @CHAR_BIT, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @dstSigBits, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = shl i32 1, %92
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = ashr i32 %95, 1
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i32, i32* %19, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %19, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* @srcSigBits, align 4
  %108 = shl i32 %106, %107
  store i32 %108, i32* %22, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* @srcSigBits, align 4
  %111 = shl i32 %109, %110
  store i32 %111, i32* %23, align 4
  %112 = call i32 @DST_REP_C(i32 1)
  %113 = load i32, i32* @dstSigBits, align 4
  %114 = sub nsw i32 %113, 1
  %115 = shl i32 %112, %114
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %24, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @srcToRep(i32 %118)
  store i32 %119, i32* %26, align 4
  %120 = load i32, i32* %26, align 4
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %120, %121
  store i32 %122, i32* %27, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %10, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %28, align 4
  %126 = load i32, i32* %27, align 4
  %127 = load i32, i32* %22, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load i32, i32* %27, align 4
  %130 = load i32, i32* %23, align 4
  %131 = sub nsw i32 %129, %130
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %166

133:                                              ; preds = %1
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* @srcSigBits, align 4
  %136 = load i32, i32* @dstSigBits, align 4
  %137 = sub nsw i32 %135, %136
  %138 = ashr i32 %134, %137
  store i32 %138, i32* %29, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %19, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* @dstSigBits, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* %29, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %29, align 4
  %146 = load i32, i32* %27, align 4
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %146, %147
  store i32 %148, i32* %30, align 4
  %149 = load i32, i32* %30, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %133
  %153 = load i32, i32* %29, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %29, align 4
  br label %165

155:                                              ; preds = %133
  %156 = load i32, i32* %30, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i32, i32* %29, align 4
  %161 = and i32 %160, 1
  %162 = load i32, i32* %29, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %29, align 4
  br label %164

164:                                              ; preds = %159, %155
  br label %165

165:                                              ; preds = %164, %152
  br label %254

166:                                              ; preds = %1
  %167 = load i32, i32* %27, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %188

170:                                              ; preds = %166
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* @dstSigBits, align 4
  %173 = shl i32 %171, %172
  store i32 %173, i32* %29, align 4
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* %29, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %29, align 4
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* %15, align 4
  %179 = and i32 %177, %178
  %180 = load i32, i32* @srcSigBits, align 4
  %181 = load i32, i32* @dstSigBits, align 4
  %182 = sub nsw i32 %180, %181
  %183 = ashr i32 %179, %182
  %184 = load i32, i32* %25, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* %29, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %29, align 4
  br label %253

188:                                              ; preds = %166
  %189 = load i32, i32* %27, align 4
  %190 = load i32, i32* %23, align 4
  %191 = icmp sge i32 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* @dstSigBits, align 4
  %195 = shl i32 %193, %194
  store i32 %195, i32* %29, align 4
  br label %252

196:                                              ; preds = %188
  %197 = load i32, i32* %27, align 4
  %198 = load i32, i32* @srcSigBits, align 4
  %199 = ashr i32 %197, %198
  store i32 %199, i32* %31, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %19, align 4
  %202 = sub nsw i32 %200, %201
  %203 = load i32, i32* %31, align 4
  %204 = sub nsw i32 %202, %203
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %32, align 4
  %206 = load i32, i32* %26, align 4
  %207 = load i32, i32* %8, align 4
  %208 = and i32 %206, %207
  %209 = load i32, i32* %7, align 4
  %210 = or i32 %208, %209
  store i32 %210, i32* %33, align 4
  %211 = load i32, i32* %32, align 4
  %212 = load i32, i32* @srcSigBits, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %196
  store i32 0, i32* %29, align 4
  br label %251

215:                                              ; preds = %196
  %216 = load i32, i32* %33, align 4
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* %32, align 4
  %219 = sub nsw i32 %217, %218
  %220 = shl i32 %216, %219
  store i32 %220, i32* %34, align 4
  %221 = load i32, i32* %33, align 4
  %222 = load i32, i32* %32, align 4
  %223 = ashr i32 %221, %222
  %224 = load i32, i32* %34, align 4
  %225 = or i32 %223, %224
  store i32 %225, i32* %35, align 4
  %226 = load i32, i32* %35, align 4
  %227 = load i32, i32* @srcSigBits, align 4
  %228 = load i32, i32* @dstSigBits, align 4
  %229 = sub nsw i32 %227, %228
  %230 = ashr i32 %226, %229
  store i32 %230, i32* %29, align 4
  %231 = load i32, i32* %35, align 4
  %232 = load i32, i32* %12, align 4
  %233 = and i32 %231, %232
  store i32 %233, i32* %36, align 4
  %234 = load i32, i32* %36, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp sgt i32 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %215
  %238 = load i32, i32* %29, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %29, align 4
  br label %250

240:                                              ; preds = %215
  %241 = load i32, i32* %36, align 4
  %242 = load i32, i32* %13, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %240
  %245 = load i32, i32* %29, align 4
  %246 = and i32 %245, 1
  %247 = load i32, i32* %29, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %29, align 4
  br label %249

249:                                              ; preds = %244, %240
  br label %250

250:                                              ; preds = %249, %237
  br label %251

251:                                              ; preds = %250, %214
  br label %252

252:                                              ; preds = %251, %192
  br label %253

253:                                              ; preds = %252, %170
  br label %254

254:                                              ; preds = %253, %165
  %255 = load i32, i32* %29, align 4
  %256 = load i32, i32* %28, align 4
  %257 = load i32, i32* %3, align 4
  %258 = load i32, i32* %16, align 4
  %259 = sub nsw i32 %257, %258
  %260 = ashr i32 %256, %259
  %261 = or i32 %255, %260
  store i32 %261, i32* %37, align 4
  %262 = load i32, i32* %37, align 4
  %263 = call i32 @dstFromRep(i32 %262)
  ret i32 %263
}

declare dso_local i32 @SRC_REP_C(i32) #1

declare dso_local i32 @DST_REP_C(i32) #1

declare dso_local i32 @srcToRep(i32) #1

declare dso_local i32 @dstFromRep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
