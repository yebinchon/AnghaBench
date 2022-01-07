; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_maybe_note_name_used_in_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_maybe_note_name_used_in_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@sk_class = common dso_local global i64 0, align 8
@current_class_type = common dso_local global i32 0, align 4
@current_class_stack = common dso_local global %struct.TYPE_2__* null, align 8
@current_class_depth = common dso_local global i32 0, align 4
@splay_tree_compare_pointers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maybe_note_name_used_in_class(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i64 (...) @innermost_scope_kind()
  %7 = load i64, i64* @sk_class, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @current_class_type, align 4
  %11 = call i64 @TYPE_BEING_DEFINED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  br label %52

14:                                               ; preds = %9
  %15 = load i32, i32* @current_class_type, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @lookup_member(i32 %15, i64 %16, i32 0, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %52

20:                                               ; preds = %14
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_class_stack, align 8
  %22 = load i32, i32* @current_class_depth, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @splay_tree_compare_pointers, align 4
  %31 = call i64 @splay_tree_new(i32 %30, i32 0, i32 0)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_class_stack, align 8
  %33 = load i32, i32* @current_class_depth, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %31, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %20
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_class_stack, align 8
  %40 = load i32, i32* @current_class_depth, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %4, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @splay_tree_insert(i64 %46, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %38, %19, %13
  ret void
}

declare dso_local i64 @innermost_scope_kind(...) #1

declare dso_local i64 @TYPE_BEING_DEFINED(i32) #1

declare dso_local i64 @lookup_member(i32, i64, i32, i32) #1

declare dso_local i64 @splay_tree_new(i32, i32, i32) #1

declare dso_local i32 @splay_tree_insert(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
