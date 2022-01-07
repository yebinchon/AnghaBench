; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_computation_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_computation_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAST_VIRTUAL_REGISTER = common dso_local global i32 0, align 4
@prepare_decl_rtl = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @computation_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @computation_cost(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @TREE_TYPE(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @LAST_VIRTUAL_REGISTER, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @prepare_decl_rtl, align 4
  %13 = call i32 @walk_tree(i32* %2, i32 %12, i32* %7, i32* null)
  %14 = call i32 (...) @start_sequence()
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @NULL_RTX, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TYPE_MODE(i32 %17)
  %19 = load i32, i32* @EXPAND_NORMAL, align 4
  %20 = call i32 @expand_expr(i32 %15, i32 %16, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = call i32 (...) @get_insns()
  store i32 %21, i32* %3, align 4
  %22 = call i32 (...) @end_sequence()
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @seq_cost(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @MEM_P(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @XEXP(i32 %29, i32 0)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @TYPE_MODE(i32 %31)
  %33 = call i64 @address_cost(i32 %30, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %28, %1
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @walk_tree(i32*, i32, i32*, i32*) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @seq_cost(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i64 @address_cost(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
