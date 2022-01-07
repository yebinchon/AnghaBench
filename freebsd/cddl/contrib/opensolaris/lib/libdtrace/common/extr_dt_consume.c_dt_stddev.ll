; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_stddev.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_stddev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dt_stddev(i64* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca [2 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca [2 x i64], align 16
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %61

15:                                               ; preds = %2
  %16 = load i64*, i64** %4, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %20 = call i32 @dt_divide_128(i64* %17, i64 %18, i64* %19)
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %24 = call i32 @dt_divide_128(i64* %21, i64 %22, i64* %23)
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %30 = call i32 @dt_divide_128(i64* %25, i64 %28, i64* %29)
  %31 = load i64*, i64** %4, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = sdiv i32 %34, %36
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = sdiv i32 %37, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %15
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %15
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %54 = call i32 @dt_multiply_128(i64 %50, i64 %52, i64* %53)
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %58 = call i32 @dt_subtract_128(i64* %55, i64* %56, i64* %57)
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %60 = call i64 @dt_sqrt_128(i64* %59)
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %48, %14
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local i32 @dt_divide_128(i64*, i64, i64*) #1

declare dso_local i32 @dt_multiply_128(i64, i64, i64*) #1

declare dso_local i32 @dt_subtract_128(i64*, i64*, i64*) #1

declare dso_local i64 @dt_sqrt_128(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
