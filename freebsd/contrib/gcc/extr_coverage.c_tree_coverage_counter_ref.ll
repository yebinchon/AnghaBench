; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_coverage.c_tree_coverage_counter_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_coverage.c_tree_coverage_counter_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fn_n_ctrs = common dso_local global i32* null, align 8
@fn_b_ctrs = common dso_local global i32* null, align 8
@prg_n_ctrs = common dso_local global i32* null, align 8
@ARRAY_REF = common dso_local global i32 0, align 4
@tree_ctr_tables = common dso_local global i32* null, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tree_coverage_counter_ref(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @get_gcov_type()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @fn_n_ctrs, align 8
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @fn_b_ctrs, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %12, %17
  %19 = icmp ult i32 %7, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i32*, i32** @prg_n_ctrs, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @fn_b_ctrs, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %26, %31
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @ARRAY_REF, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** @tree_ctr_tables, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NULL_TREE, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @build_int_cst(i32 %42, i32 %43)
  %45 = call i32 @build4(i32 %35, i32 %36, i32 %41, i32 %44, i32* null, i32* null)
  ret i32 %45
}

declare dso_local i32 @get_gcov_type(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @build4(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
