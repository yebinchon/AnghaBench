; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fp_mul_impl.inc___mulXf3__.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fp_mul_impl.inc___mulXf3__.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@significandBits = common dso_local global i32 0, align 4
@maxExponent = common dso_local global i32 0, align 4
@signBit = common dso_local global i32 0, align 4
@significandMask = common dso_local global i32 0, align 4
@absMask = common dso_local global i32 0, align 4
@infRep = common dso_local global i32 0, align 4
@quietBit = common dso_local global i32 0, align 4
@qnanRep = common dso_local global i32 0, align 4
@implicitBit = common dso_local global i32 0, align 4
@exponentBits = common dso_local global i32 0, align 4
@exponentBias = common dso_local global i32 0, align 4
@typeWidth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @__mulXf3__ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mulXf3__(i32 %0, i32 %1) #0 {
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
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @toRep(i32 %18)
  %20 = load i32, i32* @significandBits, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* @maxExponent, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @toRep(i32 %24)
  %26 = load i32, i32* @significandBits, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* @maxExponent, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @toRep(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @toRep(i32 %32)
  %34 = xor i32 %31, %33
  %35 = load i32, i32* @signBit, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @toRep(i32 %37)
  %39 = load i32, i32* @significandMask, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @toRep(i32 %41)
  %43 = load i32, i32* @significandMask, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub i32 %45, 1
  %47 = load i32, i32* @maxExponent, align 4
  %48 = sub i32 %47, 1
  %49 = icmp uge i32 %46, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %2
  %51 = load i32, i32* %7, align 4
  %52 = sub i32 %51, 1
  %53 = load i32, i32* @maxExponent, align 4
  %54 = sub i32 %53, 1
  %55 = icmp uge i32 %52, %54
  br i1 %55, label %56, label %147

56:                                               ; preds = %50, %2
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @toRep(i32 %57)
  %59 = load i32, i32* @absMask, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @toRep(i32 %61)
  %63 = load i32, i32* @absMask, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @infRep, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @toRep(i32 %69)
  %71 = load i32, i32* @quietBit, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @fromRep(i32 %72)
  store i32 %73, i32* %3, align 4
  br label %231

74:                                               ; preds = %56
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @infRep, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @toRep(i32 %79)
  %81 = load i32, i32* @quietBit, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @fromRep(i32 %82)
  store i32 %83, i32* %3, align 4
  br label %231

84:                                               ; preds = %74
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @infRep, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @fromRep(i32 %94)
  store i32 %95, i32* %3, align 4
  br label %231

96:                                               ; preds = %88
  %97 = load i32, i32* @qnanRep, align 4
  %98 = call i32 @fromRep(i32 %97)
  store i32 %98, i32* %3, align 4
  br label %231

99:                                               ; preds = %84
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @infRep, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @fromRep(i32 %109)
  store i32 %110, i32* %3, align 4
  br label %231

111:                                              ; preds = %103
  %112 = load i32, i32* @qnanRep, align 4
  %113 = call i32 @fromRep(i32 %112)
  store i32 %113, i32* %3, align 4
  br label %231

114:                                              ; preds = %99
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @fromRep(i32 %118)
  store i32 %119, i32* %3, align 4
  br label %231

120:                                              ; preds = %114
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @fromRep(i32 %124)
  store i32 %125, i32* %3, align 4
  br label %231

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @implicitBit, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = call i64 @normalize(i32* %9)
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %130, %126
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @implicitBit, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = call i64 @normalize(i32* %10)
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %140, %136
  br label %147

147:                                              ; preds = %146, %50
  %148 = load i32, i32* @implicitBit, align 4
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* @implicitBit, align 4
  %152 = load i32, i32* %10, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @exponentBits, align 4
  %157 = shl i32 %155, %156
  %158 = call i32 @wideMultiply(i32 %154, i32 %157, i32* %14, i32* %15)
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %7, align 4
  %161 = add i32 %159, %160
  %162 = load i32, i32* @exponentBias, align 4
  %163 = sub i32 %161, %162
  %164 = load i32, i32* %11, align 4
  %165 = add i32 %163, %164
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @implicitBit, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %147
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %175

173:                                              ; preds = %147
  %174 = call i32 @wideLeftShift(i32* %14, i32* %15, i32 1)
  br label %175

175:                                              ; preds = %173, %170
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* @maxExponent, align 4
  %178 = icmp uge i32 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load i32, i32* @infRep, align 4
  %181 = load i32, i32* %8, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @fromRep(i32 %182)
  store i32 %183, i32* %3, align 4
  br label %231

184:                                              ; preds = %175
  %185 = load i32, i32* %16, align 4
  %186 = icmp sle i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %184
  %188 = call i32 @REP_C(i32 1)
  %189 = load i32, i32* %16, align 4
  %190 = sub i32 %188, %189
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* @typeWidth, align 4
  %193 = icmp uge i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @fromRep(i32 %195)
  store i32 %196, i32* %3, align 4
  br label %231

197:                                              ; preds = %187
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @wideRightShiftWithSticky(i32* %14, i32* %15, i32 %198)
  br label %209

200:                                              ; preds = %184
  %201 = load i32, i32* @significandMask, align 4
  %202 = load i32, i32* %14, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* @significandBits, align 4
  %206 = shl i32 %204, %205
  %207 = load i32, i32* %14, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %200, %197
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %14, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %14, align 4
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* @signBit, align 4
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %209
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %219

219:                                              ; preds = %216, %209
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* @signBit, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = load i32, i32* %14, align 4
  %225 = and i32 %224, 1
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %14, align 4
  br label %228

228:                                              ; preds = %223, %219
  %229 = load i32, i32* %14, align 4
  %230 = call i32 @fromRep(i32 %229)
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %228, %194, %179, %123, %117, %111, %106, %96, %91, %78, %68
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @toRep(i32) #1

declare dso_local i32 @fromRep(i32) #1

declare dso_local i64 @normalize(i32*) #1

declare dso_local i32 @wideMultiply(i32, i32, i32*, i32*) #1

declare dso_local i32 @wideLeftShift(i32*, i32*, i32) #1

declare dso_local i32 @REP_C(i32) #1

declare dso_local i32 @wideRightShiftWithSticky(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
