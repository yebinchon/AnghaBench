; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_pop_access_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_pop_access_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@saved_access_scope = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pop_access_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pop_access_scope(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @TREE_CODE(i32 %3)
  %5 = load i64, i64* @FUNCTION_DECL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @saved_access_scope, align 4
  %9 = call i32 @TREE_VALUE(i32 %8)
  store i32 %9, i32* @current_function_decl, align 4
  %10 = load i32, i32* @saved_access_scope, align 4
  %11 = call i32 @TREE_CHAIN(i32 %10)
  store i32 %11, i32* @saved_access_scope, align 4
  br label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @DECL_FRIEND_CONTEXT(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @DECL_CLASS_SCOPE_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12
  %21 = call i32 (...) @pop_nested_class()
  br label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @pop_from_top_level()
  br label %24

24:                                               ; preds = %22, %20
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @DECL_FRIEND_CONTEXT(i32) #1

declare dso_local i64 @DECL_CLASS_SCOPE_P(i32) #1

declare dso_local i32 @pop_nested_class(...) #1

declare dso_local i32 @pop_from_top_level(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
