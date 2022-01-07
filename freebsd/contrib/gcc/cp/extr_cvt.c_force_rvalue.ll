; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_force_rvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_force_rvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_EXPR = common dso_local global i64 0, align 8
@CONV_IMPLICIT = common dso_local global i32 0, align 4
@CONV_FORCE_TEMP = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @force_rvalue(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @TREE_TYPE(i32 %3)
  %5 = call i64 @IS_AGGR_TYPE(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @TARGET_EXPR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @CONV_IMPLICIT, align 4
  %17 = load i32, i32* @CONV_FORCE_TEMP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @LOOKUP_NORMAL, align 4
  %20 = call i32 @ocp_convert(i32 %14, i32 %15, i32 %18, i32 %19)
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %7, %1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @decay_conversion(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @IS_AGGR_TYPE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @ocp_convert(i32, i32, i32, i32) #1

declare dso_local i32 @decay_conversion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
