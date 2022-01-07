; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_push_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_push_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAMESPACE_DECL = common dso_local global i64 0, align 8
@current_class_type = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @push_scope(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @TREE_CODE(i32 %3)
  %5 = load i64, i64* @NAMESPACE_DECL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @push_decl_namespace(i32 %8)
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @CLASS_TYPE_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = call i32 (...) @at_class_scope_p()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* @current_class_type, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @same_type_p(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %14
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @push_nested_class(i32 %23)
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @NULL_TREE, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27, %10
  br label %29

29:                                               ; preds = %28, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @push_decl_namespace(i32) #1

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @at_class_scope_p(...) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @push_nested_class(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
