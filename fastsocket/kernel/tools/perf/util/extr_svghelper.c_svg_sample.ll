; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"<rect x=\22%4.8f\22 width=\22%4.8f\22 y=\22%4.1f\22 height=\22%4.1f\22 class=\22sample\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@MIN_TEXT_SIZE = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"<text x=\22%1.8f\22 y=\22%1.8f\22 font-size=\22%1.8fpt\22>%i</text>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_sample(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @svgfile, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %66

13:                                               ; preds = %4
  %14 = load i32, i32* @svgfile, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call double @time2pixels(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = call double @time2pixels(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call double @time2pixels(i32 %19)
  %21 = fsub double %18, %20
  %22 = fptosi double %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SLOT_MULT, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sitofp i32 %25 to double
  %27 = load double, double* @SLOT_HEIGHT, align 8
  %28 = fptosi double %27 to i32
  %29 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), double %16, i32 %22, double %26, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call double @time2pixels(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call double @time2pixels(i32 %32)
  %34 = fsub double %31, %33
  store double %34, double* %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 9
  br i1 %36, label %37, label %40

37:                                               ; preds = %13
  %38 = load double, double* %9, align 8
  %39 = fdiv double %38, 2.000000e+00
  store double %39, double* %9, align 8
  br label %40

40:                                               ; preds = %37, %13
  %41 = load double, double* %9, align 8
  %42 = fcmp ogt double %41, 1.250000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store double 1.250000e+00, double* %9, align 8
  br label %44

44:                                               ; preds = %43, %40
  %45 = load double, double* %9, align 8
  %46 = call double @round_text_size(double %45)
  store double %46, double* %9, align 8
  %47 = load double, double* %9, align 8
  %48 = load double, double* @MIN_TEXT_SIZE, align 8
  %49 = fcmp ogt double %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load i32, i32* @svgfile, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call double @time2pixels(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SLOT_MULT, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sitofp i32 %56 to double
  %58 = load double, double* @SLOT_HEIGHT, align 8
  %59 = fadd double %57, %58
  %60 = fsub double %59, 1.000000e+00
  %61 = fptosi double %60 to i32
  %62 = load double, double* %9, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), double %53, i32 %61, double %62, i32 %64)
  br label %66

66:                                               ; preds = %12, %50, %44
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double, i32, double, i32) #1

declare dso_local double @time2pixels(i32) #1

declare dso_local double @round_text_size(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
