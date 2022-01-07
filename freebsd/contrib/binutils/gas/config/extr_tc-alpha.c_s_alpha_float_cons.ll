; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_s_alpha_float_cons.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_s_alpha_float_cons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alpha_auto_align_on = common dso_local global i64 0, align 8
@alpha_current_align = common dso_local global i32 0, align 4
@alpha_insn_label = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s_alpha_float_cons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_alpha_float_cons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %5 [
    i32 102, label %6
    i32 70, label %6
    i32 100, label %7
    i32 68, label %7
    i32 71, label %7
    i32 120, label %8
    i32 88, label %8
    i32 112, label %8
    i32 80, label %8
  ]

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %1, %1, %5
  store i32 2, i32* %3, align 4
  br label %9

7:                                                ; preds = %1, %1, %1
  store i32 3, i32* %3, align 4
  br label %9

8:                                                ; preds = %1, %1, %1, %1
  store i32 4, i32* %3, align 4
  br label %9

9:                                                ; preds = %8, %7, %6
  %10 = load i64, i64* @alpha_auto_align_on, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* @alpha_current_align, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32*, i32** @alpha_insn_label, align 8
  %19 = call i32 @alpha_align(i32 %17, i8* null, i32* %18, i32 0)
  br label %20

20:                                               ; preds = %16, %12, %9
  %21 = load i32, i32* @alpha_current_align, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* @alpha_current_align, align 4
  br label %26

26:                                               ; preds = %24, %20
  store i32* null, i32** @alpha_insn_label, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @float_cons(i32 %27)
  ret void
}

declare dso_local i32 @alpha_align(i32, i8*, i32*, i32) #1

declare dso_local i32 @float_cons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
