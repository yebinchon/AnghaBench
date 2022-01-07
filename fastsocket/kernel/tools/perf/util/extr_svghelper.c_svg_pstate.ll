; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_pstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@max_freq = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@SLOT_MULT = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [68 x i8] c"<line x1=\22%4.8f\22 x2=\22%4.8f\22 y1=\22%4.1f\22 y2=\22%4.1f\22 class=\22pstate\22/>\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"<text x=\22%4.8f\22 y=\22%4.8f\22 font-size=\220.25pt\22>%s</text>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_pstate(i32 %0, double %1, double %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  %10 = load i32, i32* @svgfile, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %53

13:                                               ; preds = %4
  %14 = load i32, i32* @max_freq, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load double, double* %8, align 8
  %18 = fmul double %17, 1.000000e+00
  %19 = load i32, i32* @max_freq, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %18, %20
  %22 = load double, double* @SLOT_HEIGHT, align 8
  %23 = load double, double* @SLOT_MULT, align 8
  %24 = fadd double %22, %23
  %25 = fmul double %21, %24
  store double %25, double* %9, align 8
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cpu2y(i32 %27)
  %29 = add nsw i32 1, %28
  %30 = sitofp i32 %29 to double
  %31 = load double, double* @SLOT_MULT, align 8
  %32 = fadd double %30, %31
  %33 = load double, double* @SLOT_HEIGHT, align 8
  %34 = fadd double %32, %33
  %35 = load double, double* %9, align 8
  %36 = fsub double %34, %35
  store double %36, double* %9, align 8
  %37 = load i32, i32* @svgfile, align 4
  %38 = load double, double* %6, align 8
  %39 = call double @time2pixels(double %38)
  %40 = load double, double* %7, align 8
  %41 = call double @time2pixels(double %40)
  %42 = load double, double* %9, align 8
  %43 = load double, double* %9, align 8
  %44 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), double %39, double %41, double %42, double %43)
  %45 = load i32, i32* @svgfile, align 4
  %46 = load double, double* %6, align 8
  %47 = call double @time2pixels(double %46)
  %48 = load double, double* %9, align 8
  %49 = fadd double %48, 9.000000e-01
  %50 = load double, double* %8, align 8
  %51 = call i8* @HzToHuman(double %50)
  %52 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), double %47, double %49, i8* %51)
  br label %53

53:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @cpu2y(i32) #1

declare dso_local i32 @fprintf(i32, i8*, double, double, ...) #1

declare dso_local double @time2pixels(double) #1

declare dso_local i8* @HzToHuman(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
