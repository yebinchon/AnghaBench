; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_special_function_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_special_function_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sfk_copy_constructor = common dso_local global i32 0, align 4
@sfk_constructor = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i64 0, align 8
@sfk_assignment_operator = common dso_local global i32 0, align 4
@sfk_destructor = common dso_local global i32 0, align 4
@sfk_complete_destructor = common dso_local global i32 0, align 4
@sfk_base_destructor = common dso_local global i32 0, align 4
@sfk_deleting_destructor = common dso_local global i32 0, align 4
@sfk_conversion = common dso_local global i32 0, align 4
@sfk_none = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @special_function_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @DECL_COPY_CONSTRUCTOR_P(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @sfk_copy_constructor, align 4
  store i32 %8, i32* %2, align 4
  br label %54

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @DECL_CONSTRUCTOR_P(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @sfk_constructor, align 4
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @DECL_OVERLOADED_OPERATOR_P(i32 %16)
  %18 = load i64, i64* @NOP_EXPR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @sfk_assignment_operator, align 4
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @DECL_MAYBE_IN_CHARGE_DESTRUCTOR_P(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @sfk_destructor, align 4
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @DECL_COMPLETE_DESTRUCTOR_P(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @sfk_complete_destructor, align 4
  store i32 %33, i32* %2, align 4
  br label %54

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @DECL_BASE_DESTRUCTOR_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @sfk_base_destructor, align 4
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @DECL_DELETING_DESTRUCTOR_P(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @sfk_deleting_destructor, align 4
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %40
  %47 = load i32, i32* %3, align 4
  %48 = call i64 @DECL_CONV_FN_P(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @sfk_conversion, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @sfk_none, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %44, %38, %32, %26, %20, %13, %7
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @DECL_COPY_CONSTRUCTOR_P(i32) #1

declare dso_local i64 @DECL_CONSTRUCTOR_P(i32) #1

declare dso_local i64 @DECL_OVERLOADED_OPERATOR_P(i32) #1

declare dso_local i64 @DECL_MAYBE_IN_CHARGE_DESTRUCTOR_P(i32) #1

declare dso_local i64 @DECL_COMPLETE_DESTRUCTOR_P(i32) #1

declare dso_local i64 @DECL_BASE_DESTRUCTOR_P(i32) #1

declare dso_local i64 @DECL_DELETING_DESTRUCTOR_P(i32) #1

declare dso_local i64 @DECL_CONV_FN_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
