; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_shake_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_shake_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [44 x i8] c"SHAKE%-3d (inject)              %8.2f MB/s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"SHAKE%-3d (produce)             %8.2f MB/s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_speed_shake_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_speed_shake_inner(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8192 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %15 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i8 signext 68, i32 8192)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @br_shake_init(i32* %4, i32 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %25, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %24 = call i32 @br_shake_inject(i32* %4, i8* %23, i32 8192)
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %19

28:                                               ; preds = %19
  store i64 10, i64* %6, align 8
  br label %29

29:                                               ; preds = %62, %28
  %30 = call i64 (...) @clock()
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %38, %29
  %33 = load i64, i64* %10, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %37 = call i32 @br_shake_inject(i32* %4, i8* %36, i32 8192)
  br label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %10, align 8
  br label %32

41:                                               ; preds = %32
  %42 = call i64 (...) @clock()
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub nsw i64 %43, %44
  %46 = sitofp i64 %45 to double
  %47 = load double, double* @CLOCKS_PER_SEC, align 8
  %48 = fdiv double %46, %47
  store double %48, double* %9, align 8
  %49 = load double, double* %9, align 8
  %50 = fcmp oge double %49, 2.000000e+00
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load i32, i32* %2, align 4
  %53 = load i64, i64* %6, align 8
  %54 = sitofp i64 %53 to double
  %55 = fmul double 8.192000e+03, %54
  %56 = load double, double* %9, align 8
  %57 = fmul double %56, 1.000000e+06
  %58 = fdiv double %55, %57
  %59 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %52, double %58)
  %60 = load i32, i32* @stdout, align 4
  %61 = call i32 @fflush(i32 %60)
  br label %65

62:                                               ; preds = %41
  %63 = load i64, i64* %6, align 8
  %64 = shl i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %29

65:                                               ; preds = %51
  %66 = call i32 @br_shake_flip(i32* %4)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %73, %65
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 10
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %72 = call i32 @br_shake_produce(i32* %4, i8* %71, i32 8192)
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %67

76:                                               ; preds = %67
  store i64 10, i64* %6, align 8
  br label %77

77:                                               ; preds = %110, %76
  %78 = call i64 (...) @clock()
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %6, align 8
  store i64 %79, i64* %14, align 8
  br label %80

80:                                               ; preds = %86, %77
  %81 = load i64, i64* %14, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %85 = call i32 @br_shake_produce(i32* %4, i8* %84, i32 8192)
  br label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %14, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %14, align 8
  br label %80

89:                                               ; preds = %80
  %90 = call i64 (...) @clock()
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %11, align 8
  %93 = sub nsw i64 %91, %92
  %94 = sitofp i64 %93 to double
  %95 = load double, double* @CLOCKS_PER_SEC, align 8
  %96 = fdiv double %94, %95
  store double %96, double* %13, align 8
  %97 = load double, double* %13, align 8
  %98 = fcmp oge double %97, 2.000000e+00
  br i1 %98, label %99, label %110

99:                                               ; preds = %89
  %100 = load i32, i32* %2, align 4
  %101 = load i64, i64* %6, align 8
  %102 = sitofp i64 %101 to double
  %103 = fmul double 8.192000e+03, %102
  %104 = load double, double* %13, align 8
  %105 = fmul double %104, 1.000000e+06
  %106 = fdiv double %103, %105
  %107 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %100, double %106)
  %108 = load i32, i32* @stdout, align 4
  %109 = call i32 @fflush(i32 %108)
  br label %113

110:                                              ; preds = %89
  %111 = load i64, i64* %6, align 8
  %112 = shl i64 %111, 1
  store i64 %112, i64* %6, align 8
  br label %77

113:                                              ; preds = %99
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @br_shake_init(i32*, i32) #1

declare dso_local i32 @br_shake_inject(i32*, i8*, i32) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @printf(i8*, i32, double) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @br_shake_flip(i32*) #1

declare dso_local i32 @br_shake_produce(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
