; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-profile.c_tree_gen_pow2_profiler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-profile.c_tree_gen_pow2_profiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@current_function_decl = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@tree_pow2_profiler_fn = common dso_local global i32 0, align 4
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @tree_gen_pow2_profiler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_gen_pow2_profiler(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @bsi_for_stmt(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @tree_coverage_counter_ref(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @current_function_decl, align 4
  %25 = call i32 @build_addr(i32 %23, i32 %24)
  %26 = load i32, i32* @NULL_TREE, align 4
  %27 = call i32 @force_gimple_operand_bsi(i32* %8, i32 %25, i32 1, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = call i32 @prepare_instrumented_value(i32* %8, %struct.TYPE_6__* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @NULL_TREE, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @NULL_TREE, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @NULL_TREE, align 4
  %35 = call i32 @tree_cons(i32 %32, i32 %33, i32 %34)
  %36 = call i32 @tree_cons(i32 %30, i32 %31, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @tree_pow2_profiler_fn, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @build_function_call_expr(i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @BSI_SAME_STMT, align 4
  %42 = call i32 @bsi_insert_before(i32* %8, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @bsi_for_stmt(i32) #1

declare dso_local i32 @tree_coverage_counter_ref(i32, i32) #1

declare dso_local i32 @force_gimple_operand_bsi(i32*, i32, i32, i32) #1

declare dso_local i32 @build_addr(i32, i32) #1

declare dso_local i32 @prepare_instrumented_value(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

declare dso_local i32 @bsi_insert_before(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
