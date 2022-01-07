; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-profile.c_tree_init_edge_profiler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-profile.c_tree_init_edge_profiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gcov_type_node = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@unsigned_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"__gcov_interval_profiler\00", align 1
@tree_interval_profiler_fn = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"__gcov_pow2_profiler\00", align 1
@tree_pow2_profiler_fn = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"__gcov_one_value_profiler\00", align 1
@tree_one_value_profiler_fn = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tree_init_edge_profiler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_init_edge_profiler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @gcov_type_node, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @get_gcov_type()
  store i64 %8, i64* @gcov_type_node, align 8
  %9 = load i64, i64* @gcov_type_node, align 8
  %10 = call i32 @build_pointer_type(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @void_type_node, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i64, i64* @gcov_type_node, align 8
  %14 = load i32, i32* @integer_type_node, align 4
  %15 = load i32, i32* @unsigned_type_node, align 4
  %16 = load i32, i32* @NULL_TREE, align 4
  %17 = call i32 (i32, i32, i64, i32, ...) @build_function_type_list(i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i8* @build_fn_decl(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i8* %19, i8** @tree_interval_profiler_fn, align 8
  %20 = load i32, i32* @void_type_node, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* @gcov_type_node, align 8
  %23 = load i32, i32* @NULL_TREE, align 4
  %24 = call i32 (i32, i32, i64, i32, ...) @build_function_type_list(i32 %20, i32 %21, i64 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i8* @build_fn_decl(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i8* %26, i8** @tree_pow2_profiler_fn, align 8
  %27 = load i32, i32* @void_type_node, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* @gcov_type_node, align 8
  %30 = load i32, i32* @NULL_TREE, align 4
  %31 = call i32 (i32, i32, i64, i32, ...) @build_function_type_list(i32 %27, i32 %28, i64 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i8* @build_fn_decl(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  store i8* %33, i8** @tree_one_value_profiler_fn, align 8
  br label %34

34:                                               ; preds = %7, %0
  ret void
}

declare dso_local i64 @get_gcov_type(...) #1

declare dso_local i32 @build_pointer_type(i64) #1

declare dso_local i32 @build_function_type_list(i32, i32, i64, i32, ...) #1

declare dso_local i8* @build_fn_decl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
