; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_push_access_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_push_access_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@saved_access_scope = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @push_access_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_access_scope(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @TREE_CODE(i32 %3)
  %5 = load i64, i64* @FUNCTION_DECL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @VAR_DECL, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ true, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @DECL_FRIEND_CONTEXT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @DECL_FRIEND_CONTEXT(i32 %20)
  %22 = call i32 @push_nested_class(i64 %21)
  br label %34

23:                                               ; preds = %12
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @DECL_CLASS_SCOPE_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @DECL_CONTEXT(i32 %28)
  %30 = call i32 @push_nested_class(i64 %29)
  br label %33

31:                                               ; preds = %23
  %32 = call i32 (...) @push_to_top_level()
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @TREE_CODE(i32 %35)
  %37 = load i64, i64* @FUNCTION_DECL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @NULL_TREE, align 4
  %41 = load i32, i32* @current_function_decl, align 4
  %42 = load i32, i32* @saved_access_scope, align 4
  %43 = call i32 @tree_cons(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* @saved_access_scope, align 4
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* @current_function_decl, align 4
  br label %45

45:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_FRIEND_CONTEXT(i32) #1

declare dso_local i32 @push_nested_class(i64) #1

declare dso_local i64 @DECL_CLASS_SCOPE_P(i32) #1

declare dso_local i64 @DECL_CONTEXT(i32) #1

declare dso_local i32 @push_to_top_level(...) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
