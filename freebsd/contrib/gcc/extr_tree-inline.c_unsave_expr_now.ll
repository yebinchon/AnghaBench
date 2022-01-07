; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_unsave_expr_now.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_unsave_expr_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@current_function_decl = common dso_local global i8* null, align 8
@splay_tree_compare_pointers = common dso_local global i32 0, align 4
@copy_decl_no_change = common dso_local global i32 0, align 4
@CB_CGE_DUPLICATE = common dso_local global i32 0, align 4
@mark_local_for_remap_r = common dso_local global i32 0, align 4
@unsave_r = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @unsave_expr_now(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* %2, align 8
  br label %33

9:                                                ; preds = %1
  %10 = call i32 @memset(%struct.TYPE_5__* %4, i32 0, i32 40)
  %11 = load i8*, i8** @current_function_decl, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 7
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** @current_function_decl, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 6
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @splay_tree_compare_pointers, align 4
  %16 = call i32 @splay_tree_new(i32 %15, i32* null, i32* null)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @copy_decl_no_change, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 5
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @CB_CGE_DUPLICATE, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load i32, i32* @mark_local_for_remap_r, align 4
  %26 = call i32 @walk_tree_without_duplicates(i64* %3, i32 %25, %struct.TYPE_5__* %4)
  %27 = load i32, i32* @unsave_r, align 4
  %28 = call i32 @walk_tree(i64* %3, i32 %27, %struct.TYPE_5__* %4, i32* null)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @splay_tree_delete(i32 %30)
  %32 = load i64, i64* %3, align 8
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %9, %7
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @splay_tree_new(i32, i32*, i32*) #1

declare dso_local i32 @walk_tree_without_duplicates(i64*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @walk_tree(i64*, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @splay_tree_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
