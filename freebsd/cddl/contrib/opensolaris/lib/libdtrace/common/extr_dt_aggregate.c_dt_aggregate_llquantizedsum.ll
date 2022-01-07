; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_llquantizedsum.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_llquantizedsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (i32*)* @dt_aggregate_llquantizedsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @dt_aggregate_llquantizedsum(i32* %0) #0 {
  %2 = alloca i32*, align 8
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
  %13 = alloca x86_fp80, align 16
  store i32* %0, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %2, align 8
  %16 = load i32, i32* %14, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @DTRACE_LLQUANTIZE_FACTOR(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @DTRACE_LLQUANTIZE_LOW(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @DTRACE_LLQUANTIZE_HIGH(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @DTRACE_LLQUANTIZE_NSTEP(i32 %23)
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = srem i32 %30, %31
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %44, %1
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %36

47:                                               ; preds = %36
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sitofp i32 %53 to x86_fp80
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sitofp i32 %56 to x86_fp80
  %58 = fmul x86_fp80 %54, %57
  store x86_fp80 %58, x86_fp80* %13, align 16
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %4, align 4
  %61 = mul nsw i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %47
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sdiv i32 %66, %67
  br label %70

69:                                               ; preds = %47
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32 [ %68, %65 ], [ 1, %69 ]
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %112, %99, %70
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %116

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sitofp i32 %87 to x86_fp80
  %89 = load i32, i32* %10, align 4
  %90 = sitofp i32 %89 to x86_fp80
  %91 = fmul x86_fp80 %88, %90
  %92 = load x86_fp80, x86_fp80* %13, align 16
  %93 = fadd x86_fp80 %92, %91
  store x86_fp80 %93, x86_fp80* %13, align 16
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %76
  br label %72

100:                                              ; preds = %76
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %4, align 4
  %103 = mul nsw i32 %101, %102
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sdiv i32 %108, %109
  br label %112

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %107
  %113 = phi i32 [ %110, %107 ], [ 1, %111 ]
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %72

116:                                              ; preds = %72
  %117 = load x86_fp80, x86_fp80* %13, align 16
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sitofp i32 %122 to x86_fp80
  %124 = load i32, i32* %10, align 4
  %125 = sitofp i32 %124 to x86_fp80
  %126 = fmul x86_fp80 %123, %125
  %127 = fadd x86_fp80 %117, %126
  ret x86_fp80 %127
}

declare dso_local i32 @DTRACE_LLQUANTIZE_FACTOR(i32) #1

declare dso_local i32 @DTRACE_LLQUANTIZE_LOW(i32) #1

declare dso_local i32 @DTRACE_LLQUANTIZE_HIGH(i32) #1

declare dso_local i32 @DTRACE_LLQUANTIZE_NSTEP(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
