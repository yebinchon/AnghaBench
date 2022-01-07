; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ec_inner_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ec_inner_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*, i64, i8*, i64, i32)* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }

@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [19 x i8] c"%-30s %8.2f mul/s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*, %struct.TYPE_6__*)* @test_speed_ec_inner_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_speed_ec_inner_1(i8* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca [160 x i8], align 16
  %9 = alloca [22 x i32], align 16
  %10 = alloca [22 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = getelementptr inbounds [22 x i32], [22 x i32]* %10, i64 0, i64 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @br_i31_decode(i32* %22, i32 %25, i64 %26)
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %29 = call i32 @memset(i8* %28, i8 signext 84, i32 80)
  %30 = getelementptr inbounds [22 x i32], [22 x i32]* %9, i64 0, i64 0
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %32 = getelementptr inbounds [22 x i32], [22 x i32]* %10, i64 0, i64 0
  %33 = call i32 @br_i31_decode_reduce(i32* %30, i8* %31, i32 80, i32* %32)
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds [22 x i32], [22 x i32]* %9, i64 0, i64 0
  %37 = call i32 @br_i31_encode(i8* %34, i64 %35, i32* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @memcpy(i8* %41, i32 %44, i64 %45)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %62, %3
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 10
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %52, align 8
  %54 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %53(i8* %54, i64 %55, i8* %56, i64 %57, i32 %60)
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %47

65:                                               ; preds = %47
  store i64 10, i64* %14, align 8
  br label %66

66:                                               ; preds = %106, %65
  %67 = call i64 (...) @clock()
  store i64 %67, i64* %15, align 8
  %68 = load i64, i64* %14, align 8
  store i64 %68, i64* %18, align 8
  br label %69

69:                                               ; preds = %84, %66
  %70 = load i64, i64* %18, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %74, align 8
  %76 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %75(i8* %76, i64 %77, i8* %78, i64 %79, i32 %82)
  br label %84

84:                                               ; preds = %72
  %85 = load i64, i64* %18, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %18, align 8
  br label %69

87:                                               ; preds = %69
  %88 = call i64 (...) @clock()
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %15, align 8
  %91 = sub nsw i64 %89, %90
  %92 = sitofp i64 %91 to double
  %93 = load double, double* @CLOCKS_PER_SEC, align 8
  %94 = fdiv double %92, %93
  store double %94, double* %17, align 8
  %95 = load double, double* %17, align 8
  %96 = fcmp oge double %95, 2.000000e+00
  br i1 %96, label %97, label %106

97:                                               ; preds = %87
  %98 = load i8*, i8** %4, align 8
  %99 = load i64, i64* %14, align 8
  %100 = sitofp i64 %99 to double
  %101 = load double, double* %17, align 8
  %102 = fdiv double %100, %101
  %103 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %98, double %102)
  %104 = load i32, i32* @stdout, align 4
  %105 = call i32 @fflush(i32 %104)
  br label %109

106:                                              ; preds = %87
  %107 = load i64, i64* %14, align 8
  %108 = shl i64 %107, 1
  store i64 %108, i64* %14, align 8
  br label %66

109:                                              ; preds = %97
  ret void
}

declare dso_local i32 @br_i31_decode(i32*, i32, i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @br_i31_decode_reduce(i32*, i8*, i32, i32*) #1

declare dso_local i32 @br_i31_encode(i8*, i64, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @printf(i8*, i8*, double) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
