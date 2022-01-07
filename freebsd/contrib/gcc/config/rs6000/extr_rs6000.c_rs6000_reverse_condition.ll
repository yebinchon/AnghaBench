; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_reverse_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_reverse_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCFPmode = common dso_local global i32 0, align 4
@flag_finite_math_only = common dso_local global i32 0, align 4
@UNLT = common dso_local global i32 0, align 4
@UNLE = common dso_local global i32 0, align 4
@UNGT = common dso_local global i32 0, align 4
@UNGE = common dso_local global i32 0, align 4
@UNEQ = common dso_local global i32 0, align 4
@LTGT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_reverse_condition(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CCFPmode, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load i32, i32* @flag_finite_math_only, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @UNLT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @UNLE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @UNGT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @UNGE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @UNEQ, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @LTGT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %28, %24, %20, %16, %12, %9
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @reverse_condition_maybe_unordered(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %32, %2
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @reverse_condition(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @reverse_condition_maybe_unordered(i32) #1

declare dso_local i32 @reverse_condition(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
