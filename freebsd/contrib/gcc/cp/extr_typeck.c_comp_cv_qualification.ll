; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_cv_qualification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_cv_qualification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comp_cv_qualification(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @cp_type_quals(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cp_type_quals(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %32

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %32

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %22, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @cp_type_quals(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
