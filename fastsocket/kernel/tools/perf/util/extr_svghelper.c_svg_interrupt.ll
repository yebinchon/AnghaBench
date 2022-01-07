; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"<circle  cx=\22%4.8f\22 cy=\22%4.2f\22 r = \220.01\22  style=\22fill:rgb(255,128,128)\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_interrupt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @svgfile, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %25

8:                                                ; preds = %2
  %9 = load i32, i32* @svgfile, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call double @time2pixels(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SLOT_MULT, align 4
  %14 = mul nsw i32 %12, %13
  %15 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), double %11, i32 %14)
  %16 = load i32, i32* @svgfile, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call double @time2pixels(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SLOT_MULT, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @SLOT_HEIGHT, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), double %18, i32 %23)
  br label %25

25:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double, i32) #1

declare dso_local double @time2pixels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
