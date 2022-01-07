; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_convert_to_gimple_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_convert_to_gimple_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSI_NEW_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @convert_to_gimple_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @convert_to_gimple_builtin(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @bsi_stmt(i32 %11)
  store i32* %12, i32** %6, align 8
  store i32* null, i32** %8, align 8
  %13 = call i32 (...) @push_gimplify_context()
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @get_initialized_tmp_var(i32* %14, i32** %8, i32* null)
  store i32* %15, i32** %7, align 8
  %16 = call i32 @pop_gimplify_context(i32* null)
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @EXPR_HAS_LOCATION(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @EXPR_LOCATION(i32* %21)
  %23 = call i32 @annotate_all_with_locus(i32** %8, i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @tsi_start(i32* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %48, %24
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @tsi_end_p(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = call i32* @tsi_stmt(i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @tsi_stmt_ptr(i32 %35)
  %37 = call i32 @find_new_referenced_vars(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @BSI_NEW_STMT, align 4
  %41 = call i32 @bsi_insert_before(i32* %38, i32* %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @bsi_stmt(i32 %43)
  %45 = call i32 @mark_new_vars_to_rename(i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @bsi_next(i32* %46)
  br label %48

48:                                               ; preds = %32
  %49 = call i32 @tsi_next(i32* %5)
  br label %27

50:                                               ; preds = %27
  %51 = load i32*, i32** %7, align 8
  ret i32* %51
}

declare dso_local i32* @bsi_stmt(i32) #1

declare dso_local i32 @push_gimplify_context(...) #1

declare dso_local i32* @get_initialized_tmp_var(i32*, i32**, i32*) #1

declare dso_local i32 @pop_gimplify_context(i32*) #1

declare dso_local i64 @EXPR_HAS_LOCATION(i32*) #1

declare dso_local i32 @annotate_all_with_locus(i32**, i32) #1

declare dso_local i32 @EXPR_LOCATION(i32*) #1

declare dso_local i32 @tsi_start(i32*) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32* @tsi_stmt(i32) #1

declare dso_local i32 @find_new_referenced_vars(i32) #1

declare dso_local i32 @tsi_stmt_ptr(i32) #1

declare dso_local i32 @bsi_insert_before(i32*, i32*, i32) #1

declare dso_local i32 @mark_new_vars_to_rename(i32*) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i32 @tsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
