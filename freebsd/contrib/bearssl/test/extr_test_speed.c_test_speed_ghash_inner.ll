; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ghash_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ghash_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [18 x i8] c"%-30s %8.2f MB/s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i8*, i8*, i8*, i32)*)* @test_speed_ghash_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_speed_ghash_inner(i8* %0, i32 (i8*, i8*, i8*, i32)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32 (i8*, i8*, i8*, i32)*, align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 (i8*, i8*, i8*, i32)* %1, i32 (i8*, i8*, i8*, i32)** %4, align 8
  %14 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i8 signext 84, i32 8192)
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i8 signext 80, i32 16)
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i8 signext 0, i32 16)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %29, %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32 (i8*, i8*, i8*, i32)*, i32 (i8*, i8*, i8*, i32)** %4, align 8
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %28 = call i32 %24(i8* %25, i8* %26, i8* %27, i32 8192)
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %20

32:                                               ; preds = %20
  store i64 10, i64* %9, align 8
  br label %33

33:                                               ; preds = %69, %32
  %34 = call i64 (...) @clock()
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %45, %33
  %37 = load i64, i64* %13, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32 (i8*, i8*, i8*, i32)*, i32 (i8*, i8*, i8*, i32)** %4, align 8
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %44 = call i32 %40(i8* %41, i8* %42, i8* %43, i32 8192)
  br label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %13, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %13, align 8
  br label %36

48:                                               ; preds = %36
  %49 = call i64 (...) @clock()
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub nsw i64 %50, %51
  %53 = sitofp i64 %52 to double
  %54 = load double, double* @CLOCKS_PER_SEC, align 8
  %55 = fdiv double %53, %54
  store double %55, double* %12, align 8
  %56 = load double, double* %12, align 8
  %57 = fcmp oge double %56, 2.000000e+00
  br i1 %57, label %58, label %69

58:                                               ; preds = %48
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sitofp i64 %60 to double
  %62 = fmul double 8.192000e+03, %61
  %63 = load double, double* %12, align 8
  %64 = fmul double %63, 1.000000e+06
  %65 = fdiv double %62, %64
  %66 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %59, double %65)
  %67 = load i32, i32* @stdout, align 4
  %68 = call i32 @fflush(i32 %67)
  ret void

69:                                               ; preds = %48
  %70 = load i64, i64* %9, align 8
  %71 = shl i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %33
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @printf(i8*, i8*, double) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
