; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_lquantizedsum.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_lquantizedsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (i64*)* @dt_aggregate_lquantizedsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @dt_aggregate_lquantizedsum(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca x86_fp80, align 16
  store i64* %0, i64** %2, align 8
  %9 = load i64*, i64** %2, align 8
  %10 = getelementptr inbounds i64, i64* %9, i32 1
  store i64* %10, i64** %2, align 8
  %11 = load i64, i64* %9, align 8
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @DTRACE_LQUANTIZE_BASE(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @DTRACE_LQUANTIZE_STEP(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @DTRACE_LQUANTIZE_LEVELS(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i64*, i64** %2, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = sitofp i64 %20 to x86_fp80
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sitofp i32 %23 to x86_fp80
  %25 = fmul x86_fp80 %21, %24
  store x86_fp80 %25, x86_fp80* %8, align 16
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %43, %1
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i64*, i64** %2, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to x86_fp80
  %38 = load i32, i32* %4, align 4
  %39 = sitofp i32 %38 to x86_fp80
  %40 = fmul x86_fp80 %37, %39
  %41 = load x86_fp80, x86_fp80* %8, align 16
  %42 = fadd x86_fp80 %41, %40
  store x86_fp80 %42, x86_fp80* %8, align 16
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %26

49:                                               ; preds = %26
  %50 = load x86_fp80, x86_fp80* %8, align 16
  %51 = load i64*, i64** %2, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = sitofp i64 %56 to x86_fp80
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  %60 = sitofp i32 %59 to x86_fp80
  %61 = fmul x86_fp80 %57, %60
  %62 = fadd x86_fp80 %50, %61
  ret x86_fp80 %62
}

declare dso_local i32 @DTRACE_LQUANTIZE_BASE(i64) #1

declare dso_local i32 @DTRACE_LQUANTIZE_STEP(i64) #1

declare dso_local i32 @DTRACE_LQUANTIZE_LEVELS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
