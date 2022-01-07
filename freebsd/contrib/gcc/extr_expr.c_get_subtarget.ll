; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_get_subtarget.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_get_subtarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optimize = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @get_subtarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_subtarget(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @optimize, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @REG_P(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @REGNO(i64 %13)
  %15 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %8, %5, %1
  br label %20

18:                                               ; preds = %12
  %19 = load i64, i64* %2, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i64 [ 0, %17 ], [ %19, %18 ]
  ret i64 %21
}

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
