; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_wakeline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_wakeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"<line x1=\22%4.8f\22 y1=\22%4.2f\22 x2=\22%4.8f\22 y2=\22%4.2f\22 style=\22stroke:rgb(32,255,32);stroke-width:0.009\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"<circle  cx=\22%4.8f\22 cy=\22%4.2f\22 r = \220.01\22  style=\22fill:rgb(32,255,32)\22/>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_wakeline(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @svgfile, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %65

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32, i32* @svgfile, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call double @time2pixels(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SLOT_MULT, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sitofp i32 %21 to double
  %23 = load double, double* @SLOT_HEIGHT, align 8
  %24 = fadd double %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = call double @time2pixels(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SLOT_MULT, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), double %18, double %24, double %26, i32 %29)
  br label %47

31:                                               ; preds = %11
  %32 = load i32, i32* @svgfile, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call double @time2pixels(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SLOT_MULT, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sitofp i32 %37 to double
  %39 = load double, double* @SLOT_HEIGHT, align 8
  %40 = fadd double %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = call double @time2pixels(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SLOT_MULT, align 4
  %45 = mul nsw i32 %43, %44
  %46 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), double %34, double %40, double %42, i32 %45)
  br label %47

47:                                               ; preds = %31, %15
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SLOT_MULT, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sitofp i32 %50 to double
  store double %51, double* %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load double, double* @SLOT_HEIGHT, align 8
  %57 = load double, double* %7, align 8
  %58 = fadd double %57, %56
  store double %58, double* %7, align 8
  br label %59

59:                                               ; preds = %55, %47
  %60 = load i32, i32* @svgfile, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call double @time2pixels(i32 %61)
  %63 = load double, double* %7, align 8
  %64 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), double %62, double %63)
  br label %65

65:                                               ; preds = %59, %10
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double, double, ...) #1

declare dso_local double @time2pixels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
