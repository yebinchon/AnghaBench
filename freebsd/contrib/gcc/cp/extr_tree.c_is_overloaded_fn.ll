; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_is_overloaded_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_is_overloaded_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFFSET_REF = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_overloaded_fn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @TREE_CODE(i32 %4)
  %6 = load i64, i64* @OFFSET_REF, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @COMPONENT_REF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8, %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @TREE_OPERAND(i32 %14, i32 1)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @BASELINK_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @BASELINK_FUNCTIONS(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @TREE_CODE(i32 %24)
  %26 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @OVL_CURRENT(i32 %29)
  %31 = call i64 @DECL_FUNCTION_TEMPLATE_P(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @TREE_CODE(i32 %34)
  %36 = load i64, i64* @OVERLOAD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @OVL_CHAIN(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %28, %23
  store i32 2, i32* %2, align 4
  br label %56

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @TREE_CODE(i32 %44)
  %46 = load i64, i64* @FUNCTION_DECL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = call i64 @TREE_CODE(i32 %49)
  %51 = load i64, i64* @OVERLOAD, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ true, %43 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %42
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @BASELINK_P(i32) #1

declare dso_local i32 @BASELINK_FUNCTIONS(i32) #1

declare dso_local i64 @DECL_FUNCTION_TEMPLATE_P(i32) #1

declare dso_local i32 @OVL_CURRENT(i32) #1

declare dso_local i64 @OVL_CHAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
