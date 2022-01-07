; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_handle_vis_mul8x16.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_handle_vis_mul8x16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @sparc_handle_vis_mul8x16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_handle_vis_mul8x16(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @NULL_TREE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %92 [
    i32 130, label %16
    i32 128, label %45
    i32 129, label %68
  ]

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %44

25:                                               ; preds = %23
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @TREE_VALUE(i32 %26)
  %28 = call i32 @TREE_INT_CST_LOW(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @TREE_VALUE(i32 %29)
  %31 = call i32 @TREE_INT_CST_LOW(i32 %30)
  %32 = call i32 @sparc_vis_mul8x16(i32 %28, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @NULL_TREE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @build_int_cst(i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @tree_cons(i32 %33, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @TREE_CHAIN(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @TREE_CHAIN(i32 %42)
  store i32 %43, i32* %8, align 4
  br label %17

44:                                               ; preds = %23
  br label %94

45:                                               ; preds = %4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @TREE_VALUE(i32 %46)
  %48 = call i32 @TREE_INT_CST_LOW(i32 %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %64, %45
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @TREE_VALUE(i32 %53)
  %55 = call i32 @TREE_INT_CST_LOW(i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @sparc_vis_mul8x16(i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* @NULL_TREE, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @build_int_cst(i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @tree_cons(i32 %58, i32 %61, i32 %62)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @TREE_CHAIN(i32 %65)
  store i32 %66, i32* %7, align 4
  br label %49

67:                                               ; preds = %49
  br label %94

68:                                               ; preds = %4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @TREE_CHAIN(i32 %69)
  %71 = call i32 @TREE_VALUE(i32 %70)
  %72 = call i32 @TREE_INT_CST_LOW(i32 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %88, %68
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @TREE_VALUE(i32 %77)
  %79 = call i32 @TREE_INT_CST_LOW(i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @sparc_vis_mul8x16(i32 %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* @NULL_TREE, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @build_int_cst(i32 %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @tree_cons(i32 %82, i32 %85, i32 %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @TREE_CHAIN(i32 %89)
  store i32 %90, i32* %7, align 4
  br label %73

91:                                               ; preds = %73
  br label %94

92:                                               ; preds = %4
  %93 = call i32 (...) @gcc_unreachable()
  br label %94

94:                                               ; preds = %92, %91, %67, %44
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @nreverse(i32 %95)
  ret i32 %96
}

declare dso_local i32 @sparc_vis_mul8x16(i32, i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @nreverse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
