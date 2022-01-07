; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_poly1305_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_poly1305_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fake_chacha20 = common dso_local global i32 0, align 4
@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [18 x i8] c"%-30s %8.2f MB/s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i8*, i8*, i8*, i32, i8*, i32, i8*, i32*, i32)*)* @test_speed_poly1305_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_speed_poly1305_inner(i8* %0, i32 (i8*, i8*, i8*, i32, i8*, i32, i8*, i32*, i32)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32 (i8*, i8*, i8*, i32, i8*, i32, i8*, i32*, i32)*, align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [12 x i8], align 1
  %8 = alloca [13 x i8], align 1
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 (i8*, i8*, i8*, i32, i8*, i32, i8*, i32*, i32)* %1, i32 (i8*, i8*, i8*, i32, i8*, i32, i8*, i32*, i32)** %4, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i8 signext 75, i32 32)
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i8 signext 73, i32 12)
  %20 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i8 signext 65, i32 13)
  %22 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %23 = call i32 @memset(i8* %22, i8 signext 84, i32 8192)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %35, %2
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32 (i8*, i8*, i8*, i32, i8*, i32, i8*, i32*, i32)*, i32 (i8*, i8*, i8*, i32, i8*, i32, i8*, i32*, i32)** %4, align 8
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %30 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %31 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %32 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %34 = call i32 %28(i8* %29, i8* %30, i8* %31, i32 8192, i8* %32, i32 13, i8* %33, i32* @fake_chacha20, i32 0)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %24

38:                                               ; preds = %24
  store i64 10, i64* %11, align 8
  br label %39

39:                                               ; preds = %77, %38
  %40 = call i64 (...) @clock()
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %15, align 8
  br label %42

42:                                               ; preds = %53, %39
  %43 = load i64, i64* %15, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32 (i8*, i8*, i8*, i32, i8*, i32, i8*, i32*, i32)*, i32 (i8*, i8*, i8*, i32, i8*, i32, i8*, i32*, i32)** %4, align 8
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %48 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %49 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %50 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %52 = call i32 %46(i8* %47, i8* %48, i8* %49, i32 8192, i8* %50, i32 13, i8* %51, i32* @fake_chacha20, i32 0)
  br label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %15, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %15, align 8
  br label %42

56:                                               ; preds = %42
  %57 = call i64 (...) @clock()
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = sub nsw i64 %58, %59
  %61 = sitofp i64 %60 to double
  %62 = load double, double* @CLOCKS_PER_SEC, align 8
  %63 = fdiv double %61, %62
  store double %63, double* %14, align 8
  %64 = load double, double* %14, align 8
  %65 = fcmp oge double %64, 2.000000e+00
  br i1 %65, label %66, label %77

66:                                               ; preds = %56
  %67 = load i8*, i8** %3, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sitofp i64 %68 to double
  %70 = fmul double 8.192000e+03, %69
  %71 = load double, double* %14, align 8
  %72 = fmul double %71, 1.000000e+06
  %73 = fdiv double %70, %72
  %74 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %67, double %73)
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fflush(i32 %75)
  ret void

77:                                               ; preds = %56
  %78 = load i64, i64* %11, align 8
  %79 = shl i64 %78, 1
  store i64 %79, i64* %11, align 8
  br label %39
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
