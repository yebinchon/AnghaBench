; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_standard_80387_constant_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_standard_80387_constant_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ext_80387_constants_init = common dso_local global i32 0, align 4
@ext_80387_constants_table = common dso_local global i32* null, align 8
@XFmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @standard_80387_constant_rtx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @ext_80387_constants_init, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @init_ext_80387_constants()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %13 [
    i32 3, label %10
    i32 4, label %10
    i32 5, label %10
    i32 6, label %10
    i32 7, label %10
  ]

10:                                               ; preds = %8, %8, %8, %8, %8
  %11 = load i32, i32* %2, align 4
  %12 = sub nsw i32 %11, 3
  store i32 %12, i32* %3, align 4
  br label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @gcc_unreachable()
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32*, i32** @ext_80387_constants_table, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XFmode, align 4
  %22 = call i32 @CONST_DOUBLE_FROM_REAL_VALUE(i32 %20, i32 %21)
  ret i32 %22
}

declare dso_local i32 @init_ext_80387_constants(...) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @CONST_DOUBLE_FROM_REAL_VALUE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
