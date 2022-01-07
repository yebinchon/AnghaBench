; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_extract_component.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_extract_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IMAGPART_EXPR = common dso_local global i32 0, align 4
@REALPART_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @extract_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_component(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @TREE_CODE(i32 %11)
  switch i32 %12, label %57 [
    i32 135, label %13
    i32 134, label %24
    i32 128, label %28
    i32 130, label %28
    i32 131, label %28
    i32 132, label %28
    i32 133, label %28
    i32 136, label %28
    i32 129, label %53
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @TREE_IMAGPART(i32 %17)
  br label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @TREE_REALPART(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  store i32 %23, i32* %5, align 4
  br label %59

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @TREE_OPERAND(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %59

28:                                               ; preds = %4, %4, %4, %4, %4, %4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @TREE_TYPE(i32 %29)
  %31 = call i32 @TREE_TYPE(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @IMAGPART_EXPR, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @REALPART_EXPR, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @unshare_expr(i32 %41)
  %43 = call i32 @build1(i32 %39, i32 %40, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @gimplify_val(i32* %47, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %46, %38
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %5, align 4
  br label %59

53:                                               ; preds = %4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @get_component_ssa_name(i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %59

57:                                               ; preds = %4
  %58 = call i32 (...) @gcc_unreachable()
  br label %59

59:                                               ; preds = %22, %24, %51, %53, %57
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_IMAGPART(i32) #1

declare dso_local i32 @TREE_REALPART(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @unshare_expr(i32) #1

declare dso_local i32 @gimplify_val(i32*, i32, i32) #1

declare dso_local i32 @get_component_ssa_name(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
