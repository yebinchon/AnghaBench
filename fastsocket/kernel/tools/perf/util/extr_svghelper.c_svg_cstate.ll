; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_cstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_cstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"c%i\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"<rect class=\22%s\22 x=\22%4.8f\22 width=\22%4.8f\22 y=\22%4.1f\22 height=\22%4.1f\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global double 0.000000e+00, align 8
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@MIN_TEXT_SIZE = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"<text x=\22%4.8f\22 y=\22%4.8f\22 font-size=\22%3.8fpt\22>C%i</text>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_cstate(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca [128 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @svgfile, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %63

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 6
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 6, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @svgfile, align 4
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %24 = load i32, i32* %6, align 4
  %25 = call double @time2pixels(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call double @time2pixels(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call double @time2pixels(i32 %28)
  %30 = fsub double %27, %29
  %31 = load i32, i32* %5, align 4
  %32 = call double @cpu2y(i32 %31)
  %33 = load double, double* @SLOT_MULT, align 8
  %34 = load double, double* @SLOT_HEIGHT, align 8
  %35 = fadd double %33, %34
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %23, double %25, double %30, double %32, double %35)
  %37 = load i32, i32* %7, align 4
  %38 = call double @time2pixels(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call double @time2pixels(i32 %39)
  %41 = fsub double %38, %40
  %42 = fdiv double %41, 2.000000e+00
  store double %42, double* %9, align 8
  %43 = load double, double* %9, align 8
  %44 = fcmp ogt double %43, 6.000000e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %18
  store double 6.000000e+00, double* %9, align 8
  br label %46

46:                                               ; preds = %45, %18
  %47 = load double, double* %9, align 8
  %48 = call double @round_text_size(double %47)
  store double %48, double* %9, align 8
  %49 = load double, double* %9, align 8
  %50 = load double, double* @MIN_TEXT_SIZE, align 8
  %51 = fcmp ogt double %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load i32, i32* @svgfile, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call double @time2pixels(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call double @cpu2y(i32 %56)
  %58 = load double, double* %9, align 8
  %59 = fadd double %57, %58
  %60 = load double, double* %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), double %55, double %59, double %60, i32 %61)
  br label %63

63:                                               ; preds = %13, %52, %46
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

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
