; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_lambda_lattice_compute_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_lambda_lattice_compute_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lambda_lattice_compute_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lambda_lattice_compute_base(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @LN_DEPTH(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @LN_INVARIANTS(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @lambda_lattice_new(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32** @LATTICE_BASE(i32 %19)
  store i32** %20, i32*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %195, %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %198

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call i32* @LN_LOOPS(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @LL_STEP(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %87

38:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load i32**, i32*** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i64* @LATTICE_ORIGIN(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 0, i64* %68, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %83, %55
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i32, i32* %3, align 4
  %75 = call i64** @LATTICE_ORIGIN_INVARIANTS(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64*, i64** %75, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %69

86:                                               ; preds = %69
  br label %194

87:                                               ; preds = %25
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @LL_LOWER_BOUND(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @LLE_NEXT(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @LLE_DENOMINATOR(i32 %97)
  %99 = icmp eq i32 %98, 1
  br label %100

100:                                              ; preds = %96, %92, %87
  %101 = phi i1 [ false, %92 ], [ false, %87 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @gcc_assert(i32 %102)
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %131, %100
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %134

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = call i32* @LLE_COEFFICIENTS(i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %2, align 4
  %116 = call i32* @LN_LOOPS(i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @LL_STEP(i32 %120)
  %122 = mul nsw i32 %114, %121
  %123 = load i32**, i32*** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %122, i32* %130, align 4
  br label %131

131:                                              ; preds = %108
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %104

134:                                              ; preds = %104
  %135 = load i32, i32* %9, align 4
  %136 = load i32**, i32*** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %135, i32* %143, align 4
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %159, %134
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load i32**, i32*** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 0, i32* %158, align 4
  br label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %146

162:                                              ; preds = %146
  %163 = load i32, i32* %11, align 4
  %164 = call i64 @LLE_CONSTANT(i32 %163)
  %165 = load i32, i32* %3, align 4
  %166 = call i64* @LATTICE_ORIGIN(i32 %165)
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  store i64 %164, i64* %169, align 8
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %190, %162
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %170
  %175 = load i32, i32* %11, align 4
  %176 = call i64* @LLE_INVARIANT_COEFFICIENTS(i32 %175)
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %3, align 4
  %182 = call i64** @LATTICE_ORIGIN_INVARIANTS(i32 %181)
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64*, i64** %182, i64 %184
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  store i64 %180, i64* %189, align 8
  br label %190

190:                                              ; preds = %174
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %170

193:                                              ; preds = %170
  br label %194

194:                                              ; preds = %193, %86
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %7, align 4
  br label %21

198:                                              ; preds = %21
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @LN_DEPTH(i32) #1

declare dso_local i32 @LN_INVARIANTS(i32) #1

declare dso_local i32 @lambda_lattice_new(i32, i32) #1

declare dso_local i32** @LATTICE_BASE(i32) #1

declare dso_local i32* @LN_LOOPS(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @LL_STEP(i32) #1

declare dso_local i64* @LATTICE_ORIGIN(i32) #1

declare dso_local i64** @LATTICE_ORIGIN_INVARIANTS(i32) #1

declare dso_local i32 @LL_LOWER_BOUND(i32) #1

declare dso_local i32 @LLE_NEXT(i32) #1

declare dso_local i32 @LLE_DENOMINATOR(i32) #1

declare dso_local i32* @LLE_COEFFICIENTS(i32) #1

declare dso_local i64 @LLE_CONSTANT(i32) #1

declare dso_local i64* @LLE_INVARIANT_COEFFICIENTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
