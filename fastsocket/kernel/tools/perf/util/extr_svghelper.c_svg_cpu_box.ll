; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_cpu_box.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_cpu_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@max_freq = common dso_local global i8* null, align 8
@turbo_frequency = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [70 x i8] c"<rect x=\22%4.8f\22 width=\22%4.8f\22 y=\22%4.1f\22 height=\22%4.1f\22 class=\22cpu\22/>\0A\00", align 1
@first_time = common dso_local global i32 0, align 4
@last_time = common dso_local global i32 0, align 4
@SLOT_MULT = common dso_local global double 0.000000e+00, align 8
@SLOT_HEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"CPU %i\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"<text x=\22%4.8f\22 y=\22%4.8f\22>%s</text>\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"<text transform=\22translate(%4.8f,%4.8f)\22 font-size=\221.25pt\22>%s</text>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_cpu_box(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [80 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @svgfile, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %59

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** @max_freq, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** @turbo_frequency, align 8
  %14 = load i32, i32* @svgfile, align 4
  %15 = load i32, i32* @first_time, align 4
  %16 = call double @time2pixels(i32 %15)
  %17 = load i32, i32* @last_time, align 4
  %18 = call double @time2pixels(i32 %17)
  %19 = load i32, i32* @first_time, align 4
  %20 = call double @time2pixels(i32 %19)
  %21 = fsub double %18, %20
  %22 = load i32, i32* %4, align 4
  %23 = call double @cpu2y(i32 %22)
  %24 = load double, double* @SLOT_MULT, align 8
  %25 = load i32, i32* @SLOT_HEIGHT, align 4
  %26 = sitofp i32 %25 to double
  %27 = fadd double %24, %26
  %28 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), double %16, double %21, double %23, double %27)
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @svgfile, align 4
  %34 = load i32, i32* @first_time, align 4
  %35 = call double @time2pixels(i32 %34)
  %36 = fadd double 1.000000e+01, %35
  %37 = load i32, i32* %4, align 4
  %38 = call double @cpu2y(i32 %37)
  %39 = load i32, i32* @SLOT_HEIGHT, align 4
  %40 = sdiv i32 %39, 2
  %41 = sitofp i32 %40 to double
  %42 = fadd double %38, %41
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %44 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), double %36, double %42, i8* %43)
  %45 = load i32, i32* @svgfile, align 4
  %46 = load i32, i32* @first_time, align 4
  %47 = call double @time2pixels(i32 %46)
  %48 = fadd double 1.000000e+01, %47
  %49 = load i32, i32* %4, align 4
  %50 = call double @cpu2y(i32 %49)
  %51 = load double, double* @SLOT_MULT, align 8
  %52 = fadd double %50, %51
  %53 = load i32, i32* @SLOT_HEIGHT, align 4
  %54 = sitofp i32 %53 to double
  %55 = fadd double %52, %54
  %56 = fsub double %55, 4.000000e+00
  %57 = call i8* (...) @cpu_model()
  %58 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), double %48, double %56, i8* %57)
  br label %59

59:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double, double, ...) #1

declare dso_local double @time2pixels(i32) #1

declare dso_local double @cpu2y(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @cpu_model(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
