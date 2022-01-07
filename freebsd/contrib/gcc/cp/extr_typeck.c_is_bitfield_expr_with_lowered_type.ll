; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_is_bitfield_expr_with_lowered_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_is_bitfield_expr_with_lowered_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_bitfield_expr_with_lowered_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %51 [
    i32 130, label %7
    i32 131, label %18
    i32 129, label %22
    i32 128, label %22
    i32 132, label %26
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @TREE_OPERAND(i32 %8, i32 1)
  %10 = call i32 @is_bitfield_expr_with_lowered_type(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @NULL_TREE, align 4
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TREE_OPERAND(i32 %15, i32 2)
  %17 = call i32 @is_bitfield_expr_with_lowered_type(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %53

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 1)
  %21 = call i32 @is_bitfield_expr_with_lowered_type(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1, %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @TREE_OPERAND(i32 %23, i32 0)
  %25 = call i32 @is_bitfield_expr_with_lowered_type(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %53

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @TREE_OPERAND(i32 %27, i32 1)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TREE_CODE(i32 %29)
  %31 = load i32, i32* @FIELD_DECL, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @DECL_C_BIT_FIELD(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33, %26
  %38 = load i32, i32* @NULL_TREE, align 4
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @TREE_TYPE(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @DECL_BIT_FIELD_TYPE(i32 %42)
  %44 = call i32 @same_type_ignoring_top_level_qualifiers_p(i32 %41, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @NULL_TREE, align 4
  store i32 %47, i32* %2, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @DECL_BIT_FIELD_TYPE(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %1
  %52 = load i32, i32* @NULL_TREE, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %48, %46, %37, %22, %18, %14, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @DECL_C_BIT_FIELD(i32) #1

declare dso_local i32 @same_type_ignoring_top_level_qualifiers_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @DECL_BIT_FIELD_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
