; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_construct_virtual_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_construct_virtual_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_decl = common dso_local global i32 0, align 4
@current_class_ref = common dso_local global i32 0, align 4
@LOOKUP_COMPLAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @construct_virtual_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct_virtual_base(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @current_function_decl, align 4
  %9 = call i32 @DECL_ARGUMENTS(i32 %8)
  %10 = call i32 @TREE_CHAIN(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = call i32 (...) @begin_if_stmt()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @finish_if_stmt_cond(i32 %12, i32 %13)
  %15 = load i32, i32* @current_class_ref, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @convert_to_base_statically(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @current_class_ref, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @LOOKUP_COMPLAIN, align 4
  %23 = call i32 @expand_aggr_init_1(i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @finish_then_clause(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @finish_if_stmt(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @expand_cleanup_for_base(i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @DECL_ARGUMENTS(i32) #1

declare dso_local i32 @begin_if_stmt(...) #1

declare dso_local i32 @finish_if_stmt_cond(i32, i32) #1

declare dso_local i32 @convert_to_base_statically(i32, i32) #1

declare dso_local i32 @expand_aggr_init_1(i32, i32, i32, i32, i32) #1

declare dso_local i32 @finish_then_clause(i32) #1

declare dso_local i32 @finish_if_stmt(i32) #1

declare dso_local i32 @expand_cleanup_for_base(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
