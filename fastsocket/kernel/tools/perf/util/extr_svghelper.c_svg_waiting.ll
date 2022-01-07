; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_waiting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_waiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"waiting\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"WAITING\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"<g transform=\22translate(%4.8f,%4.8f)\22>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"<rect x=\220\22 width=\22%4.8f\22 y=\220\22 height=\22%4.1f\22 class=\22%s\22/>\0A\00", align 1
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@MIN_TEXT_SIZE = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [61 x i8] c"<text transform=\22rotate(90)\22 font-size=\22%1.8fpt\22> %s</text>\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_waiting(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @svgfile, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %63

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp sgt i32 %16, 10000000
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %20, %21
  %23 = call i8* @time_to_string(i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call double @time2pixels(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call double @time2pixels(i32 %26)
  %28 = fsub double %25, %27
  %29 = fmul double 1.000000e+00, %28
  store double %29, double* %9, align 8
  %30 = load double, double* %9, align 8
  %31 = fcmp ogt double %30, 3.000000e+00
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store double 3.000000e+00, double* %9, align 8
  br label %33

33:                                               ; preds = %32, %19
  %34 = load double, double* %9, align 8
  %35 = call double @round_text_size(double %34)
  store double %35, double* %9, align 8
  %36 = load i32, i32* @svgfile, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call double @time2pixels(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SLOT_MULT, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), double %38, i32 %41)
  %43 = load i32, i32* @svgfile, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call double @time2pixels(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call double @time2pixels(i32 %46)
  %48 = fsub double %45, %47
  %49 = load double, double* @SLOT_HEIGHT, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), double %48, double %49, i8* %50)
  %52 = load double, double* %9, align 8
  %53 = load double, double* @MIN_TEXT_SIZE, align 8
  %54 = fcmp ogt double %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %33
  %56 = load i32, i32* @svgfile, align 4
  %57 = load double, double* %9, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), double %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %33
  %61 = load i32, i32* @svgfile, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %12
  ret void
}

declare dso_local i8* @time_to_string(i32) #1

declare dso_local double @time2pixels(i32) #1

declare dso_local double @round_text_size(double) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
