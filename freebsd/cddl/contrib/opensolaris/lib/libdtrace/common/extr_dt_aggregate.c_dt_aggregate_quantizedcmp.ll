; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_quantizedcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_quantizedcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTRACE_QUANTIZE_NBUCKETS = common dso_local global i32 0, align 4
@DT_LESSTHAN = common dso_local global i32 0, align 4
@DT_GREATERTHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*)* @dt_aggregate_quantizedcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_aggregate_quantizedcmp(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  store i32 %13, i32* %6, align 4
  store x86_fp80 0xK00000000000000000000, x86_fp80* %7, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %8, align 16
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %57, %2
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @DTRACE_QUANTIZE_BUCKETVAL(i32 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i64*, i64** %4, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %23, %18
  %35 = load i64, i64* %12, align 8
  %36 = sitofp i64 %35 to x86_fp80
  %37 = load i64*, i64** %4, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to x86_fp80
  %43 = fmul x86_fp80 %36, %42
  %44 = load x86_fp80, x86_fp80* %7, align 16
  %45 = fadd x86_fp80 %44, %43
  store x86_fp80 %45, x86_fp80* %7, align 16
  %46 = load i64, i64* %12, align 8
  %47 = sitofp i64 %46 to x86_fp80
  %48 = load i64*, i64** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to x86_fp80
  %54 = fmul x86_fp80 %47, %53
  %55 = load x86_fp80, x86_fp80* %8, align 16
  %56 = fadd x86_fp80 %55, %54
  store x86_fp80 %56, x86_fp80* %8, align 16
  br label %57

57:                                               ; preds = %34
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %14

60:                                               ; preds = %14
  %61 = load x86_fp80, x86_fp80* %7, align 16
  %62 = load x86_fp80, x86_fp80* %8, align 16
  %63 = fcmp olt x86_fp80 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @DT_LESSTHAN, align 4
  store i32 %65, i32* %3, align 4
  br label %85

66:                                               ; preds = %60
  %67 = load x86_fp80, x86_fp80* %7, align 16
  %68 = load x86_fp80, x86_fp80* %8, align 16
  %69 = fcmp ogt x86_fp80 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @DT_GREATERTHAN, align 4
  store i32 %71, i32* %3, align 4
  br label %85

72:                                               ; preds = %66
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @DT_LESSTHAN, align 4
  store i32 %77, i32* %3, align 4
  br label %85

78:                                               ; preds = %72
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @DT_GREATERTHAN, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %82, %76, %70, %64
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @DTRACE_QUANTIZE_BUCKETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
