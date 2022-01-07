; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_check_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_check_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXC_PTR_EXPR = common dso_local global i64 0, align 8
@FILTER_EXPR = common dso_local global i64 0, align 8
@REALPART_EXPR = common dso_local global i64 0, align 8
@IMAGPART_EXPR = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @check_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_tree(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @EXC_PTR_EXPR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @FILTER_EXPR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %3
  br label %64

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @REALPART_EXPR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @TREE_CODE(i32 %24)
  %26 = load i64, i64* @IMAGPART_EXPR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @handled_component_p(i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %23, %18
  %33 = phi i1 [ true, %23 ], [ true, %18 ], [ %31, %28 ]
  br i1 %33, label %34, label %47

34:                                               ; preds = %32
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @TREE_CODE(i32 %35)
  %37 = load i64, i64* @ARRAY_REF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @TREE_OPERAND(i32 %41, i32 1)
  %43 = call i32 @check_operand(i32 %40, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @TREE_OPERAND(i32 %45, i32 0)
  store i32 %46, i32* %5, align 4
  br label %18

47:                                               ; preds = %32
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @INDIRECT_REF_P(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @TREE_OPERAND(i32 %53, i32 0)
  call void @check_tree(i32 %52, i32 %54, i32 0)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @SSA_VAR_P(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @check_operand(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %16, %59, %55
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @handled_component_p(i32) #1

declare dso_local i32 @check_operand(i32, i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @INDIRECT_REF_P(i32) #1

declare dso_local i64 @SSA_VAR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
