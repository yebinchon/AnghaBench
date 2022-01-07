; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_get_reaching_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_get_reaching_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @get_reaching_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_reaching_def(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @get_current_def(i64 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @NULL_TREE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @DECL_P(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  br label %19

16:                                               ; preds = %10
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @SSA_NAME_VAR(i64 %17)
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i64 [ %15, %14 ], [ %18, %16 ]
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @get_default_def_for(i64 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @set_current_def(i64 %23, i64 %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i64 @get_current_def(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @SSA_NAME_VAR(i64) #1

declare dso_local i64 @get_default_def_for(i64) #1

declare dso_local i32 @set_current_def(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
