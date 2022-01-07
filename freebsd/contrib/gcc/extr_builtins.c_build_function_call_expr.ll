; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_build_function_call_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_build_function_call_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_EXPR = common dso_local global i32 0, align 4
@CALL_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_function_call_expr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ADDR_EXPR, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TREE_TYPE(i32 %7)
  %9 = call i32 @build_pointer_type(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @build1(i32 %6, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @CALL_EXPR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  %15 = call i32 @TREE_TYPE(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NULL_TREE, align 4
  %19 = call i32 @fold_build3(i32 %12, i32 %15, i32 %16, i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @fold_build3(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
