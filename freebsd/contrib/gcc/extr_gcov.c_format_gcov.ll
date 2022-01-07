; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_format_gcov.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_format_gcov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@format_gcov.buffer = internal global [20 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"%.*u%%\00", align 1
@HOST_WIDEST_INT_PRINT_DEC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (float, float, i32)* @format_gcov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_gcov(float %0, float %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %87

13:                                               ; preds = %3
  %14 = load float, float* %5, align 4
  %15 = fcmp une float %14, 0.000000e+00
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load float, float* %4, align 4
  %18 = load float, float* %5, align 4
  %19 = fdiv float %17, %18
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi float [ %19, %16 ], [ 0.000000e+00, %20 ]
  store float %22, float* %7, align 4
  store i32 100, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %28, %21
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = mul i32 %29, 10
  store i32 %30, i32* %9, align 4
  br label %24

31:                                               ; preds = %24
  %32 = load float, float* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = uitofp i32 %33 to float
  %35 = fmul float %32, %34
  %36 = fadd float %35, 5.000000e-01
  %37 = fptoui float %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ule i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load float, float* %4, align 4
  %42 = fcmp une float %41, 0.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  br label %56

44:                                               ; preds = %40, %31
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp uge i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load float, float* %4, align 4
  %50 = load float, float* %5, align 4
  %51 = fcmp une float %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = sub i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %48, %44
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @format_gcov.buffer, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %77, %63
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [20 x i8], [20 x i8]* @format_gcov.buffer, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [20 x i8], [20 x i8]* @format_gcov.buffer, i64 0, i64 %73
  store i8 %70, i8* %74, align 1
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %6, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %66, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [20 x i8], [20 x i8]* @format_gcov.buffer, i64 0, i64 %84
  store i8 46, i8* %85, align 1
  br label %86

86:                                               ; preds = %81, %56
  br label %92

87:                                               ; preds = %3
  %88 = load i8*, i8** @HOST_WIDEST_INT_PRINT_DEC, align 8
  %89 = load float, float* %4, align 4
  %90 = fptosi float %89 to i32
  %91 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @format_gcov.buffer, i64 0, i64 0), i8* %88, i32 %90)
  br label %92

92:                                               ; preds = %87, %86
  ret i8* getelementptr inbounds ([20 x i8], [20 x i8]* @format_gcov.buffer, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
