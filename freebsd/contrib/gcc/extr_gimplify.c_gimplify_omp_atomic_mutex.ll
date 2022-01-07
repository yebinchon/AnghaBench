; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_omp_atomic_mutex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_omp_atomic_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@built_in_decls = common dso_local global i32** null, align 8
@BUILT_IN_GOMP_ATOMIC_START = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@BUILT_IN_GOMP_ATOMIC_END = common dso_local global i64 0, align 8
@GS_ALL_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32*, i32*)* @gimplify_omp_atomic_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gimplify_omp_atomic_mutex(i32** %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32**, i32*** @built_in_decls, align 8
  %11 = load i64, i64* @BUILT_IN_GOMP_ATOMIC_START, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32* @build_function_call_expr(i32* %14, i32* null)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32**, i32*** %6, align 8
  %18 = call i32 @gimplify_and_add(i32* %16, i32** %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @build_fold_indirect_ref(i32* %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* @MODIFY_EXPR, align 4
  %22 = load i32, i32* @void_type_node, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @build2(i32 %21, i32 %22, i32* %23, i32* %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = call i32 @gimplify_and_add(i32* %26, i32** %27)
  %29 = load i32**, i32*** @built_in_decls, align 8
  %30 = load i64, i64* @BUILT_IN_GOMP_ATOMIC_END, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @build_function_call_expr(i32* %33, i32* null)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32**, i32*** %6, align 8
  %37 = call i32 @gimplify_and_add(i32* %35, i32** %36)
  %38 = load i32**, i32*** %5, align 8
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @GS_ALL_DONE, align 4
  ret i32 %39
}

declare dso_local i32* @build_function_call_expr(i32*, i32*) #1

declare dso_local i32 @gimplify_and_add(i32*, i32**) #1

declare dso_local i32* @build_fold_indirect_ref(i32*) #1

declare dso_local i32* @build2(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
