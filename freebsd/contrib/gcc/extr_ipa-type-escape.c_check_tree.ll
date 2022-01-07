; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_check_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_check_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXC_PTR_EXPR = common dso_local global i64 0, align 8
@FILTER_EXPR = common dso_local global i64 0, align 8
@REALPART_EXPR = common dso_local global i64 0, align 8
@IMAGPART_EXPR = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_tree(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @TREE_CODE(i32 %3)
  %5 = load i64, i64* @EXC_PTR_EXPR, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @FILTER_EXPR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  br label %61

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @REALPART_EXPR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @TREE_CODE(i32 %20)
  %22 = load i64, i64* @IMAGPART_EXPR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @handled_component_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %19, %14
  %29 = phi i1 [ true, %19 ], [ true, %14 ], [ %27, %24 ]
  br i1 %29, label %30, label %42

30:                                               ; preds = %28
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @ARRAY_REF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @TREE_OPERAND(i32 %36, i32 1)
  %38 = call i32 @check_operand(i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @TREE_OPERAND(i32 %40, i32 0)
  store i32 %41, i32* %2, align 4
  br label %14

42:                                               ; preds = %28
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @INDIRECT_REF_P(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @TREE_OPERAND(i32 %47, i32 0)
  call void @check_tree(i32 %48)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @SSA_VAR_P(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @TREE_CODE(i32 %54)
  %56 = load i64, i64* @FUNCTION_DECL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53, %49
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @check_operand(i32 %59)
  br label %61

61:                                               ; preds = %12, %58, %53
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @handled_component_p(i32) #1

declare dso_local i32 @check_operand(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @INDIRECT_REF_P(i32) #1

declare dso_local i64 @SSA_VAR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
