; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_template_template_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_template_template_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@BOUND_TEMPLATE_TEMPLATE_PARM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @write_template_template_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_template_template_param(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @NULL_TREE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @TREE_CODE(i64 %5)
  %7 = load i64, i64* @BOUND_TEMPLATE_TEMPLATE_PARM, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO(i64 %10)
  %12 = call i64 @TI_TEMPLATE(i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @find_substitution(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %26

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @write_template_param(i64 %19)
  %21 = load i64, i64* %3, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @add_substitution(i64 %24)
  br label %26

26:                                               ; preds = %16, %23, %18
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TI_TEMPLATE(i32) #1

declare dso_local i32 @TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO(i64) #1

declare dso_local i64 @find_substitution(i64) #1

declare dso_local i32 @write_template_param(i64) #1

declare dso_local i32 @add_substitution(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
