; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"<g transform=\22translate(%4.8f,%4.8f)\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"<rect x=\220\22 width=\22%4.8f\22 y=\220\22 height=\22%4.1f\22 class=\22%s\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global double 0.000000e+00, align 8
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@MIN_TEXT_SIZE = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"<text transform=\22rotate(90)\22 font-size=\22%3.8fpt\22>%s</text>\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_process(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* @svgfile, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  br label %55

15:                                               ; preds = %5
  %16 = load i32, i32* @svgfile, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call double @time2pixels(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call double @cpu2y(i32 %19)
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), double %18, double %20)
  %22 = load i32, i32* @svgfile, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call double @time2pixels(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call double @time2pixels(i32 %25)
  %27 = fsub double %24, %26
  %28 = load double, double* @SLOT_MULT, align 8
  %29 = load double, double* @SLOT_HEIGHT, align 8
  %30 = fadd double %28, %29
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), double %27, double %30, i8* %31)
  %33 = load i32, i32* %8, align 4
  %34 = call double @time2pixels(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call double @time2pixels(i32 %35)
  %37 = fsub double %34, %36
  store double %37, double* %11, align 8
  %38 = load double, double* %11, align 8
  %39 = fcmp ogt double %38, 6.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %15
  store double 6.000000e+00, double* %11, align 8
  br label %41

41:                                               ; preds = %40, %15
  %42 = load double, double* %11, align 8
  %43 = call double @round_text_size(double %42)
  store double %43, double* %11, align 8
  %44 = load double, double* %11, align 8
  %45 = load double, double* @MIN_TEXT_SIZE, align 8
  %46 = fcmp ogt double %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @svgfile, align 4
  %49 = load double, double* %11, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), double %49, i8* %50)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i32, i32* @svgfile, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %14
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local double @time2pixels(i32) #1

declare dso_local double @cpu2y(i32) #1

declare dso_local double @round_text_size(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
