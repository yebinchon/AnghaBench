; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_current_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_current_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_decl = common dso_local global i64 0, align 8
@current_class_type = common dso_local global i64 0, align 8
@current_namespace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @current_scope() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @current_function_decl, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %29

4:                                                ; preds = %0
  %5 = load i64, i64* @current_class_type, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = load i64, i64* @current_function_decl, align 8
  %9 = call i64 @DECL_FUNCTION_MEMBER_P(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i64, i64* @current_function_decl, align 8
  %13 = call i64 @DECL_CONTEXT(i64 %12)
  %14 = load i64, i64* @current_class_type, align 8
  %15 = call i64 @same_type_p(i64 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %11, %7
  %18 = load i64, i64* @current_function_decl, align 8
  %19 = call i64 @DECL_FRIEND_CONTEXT(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i64, i64* @current_function_decl, align 8
  %23 = call i64 @DECL_FRIEND_CONTEXT(i64 %22)
  %24 = load i64, i64* @current_class_type, align 8
  %25 = call i64 @same_type_p(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %11
  %28 = load i64, i64* @current_function_decl, align 8
  store i64 %28, i64* %1, align 8
  br label %41

29:                                               ; preds = %21, %17, %4, %0
  %30 = load i64, i64* @current_class_type, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64, i64* @current_class_type, align 8
  store i64 %33, i64* %1, align 8
  br label %41

34:                                               ; preds = %29
  %35 = load i64, i64* @current_function_decl, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64, i64* @current_function_decl, align 8
  store i64 %38, i64* %1, align 8
  br label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @current_namespace, align 8
  store i64 %40, i64* %1, align 8
  br label %41

41:                                               ; preds = %39, %37, %32, %27
  %42 = load i64, i64* %1, align 8
  ret i64 %42
}

declare dso_local i64 @DECL_FUNCTION_MEMBER_P(i64) #1

declare dso_local i64 @same_type_p(i64, i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @DECL_FRIEND_CONTEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
