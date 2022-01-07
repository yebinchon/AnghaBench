; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_tree_floor_log2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_tree_floor_log2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPLEX_CST = common dso_local global i64 0, align 8
@POINTER_SIZE = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tree_floor_log2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @STRIP_NOPS(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @COMPLEX_CST, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @TREE_REALPART(i32 %14)
  %16 = call i32 @tree_log2(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %79

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @TREE_TYPE(i32 %18)
  %20 = call i64 @POINTER_TYPE_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @POINTER_SIZE, align 4
  br label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @TREE_TYPE(i32 %25)
  %27 = call i32 @TYPE_PRECISION(i32 %26)
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi i32 [ %23, %22 ], [ %27, %24 ]
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @TREE_INT_CST_HIGH(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @TREE_INT_CST_LOW(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %36 = mul nsw i32 2, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %28
  br label %66

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %49 = sub nsw i32 %47, %48
  %50 = shl i32 -1, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %65

54:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = shl i32 -1, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %58, %54
  br label %65

65:                                               ; preds = %64, %46
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @floor_log2(i32 %71)
  %73 = add nsw i32 %70, %72
  br label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @floor_log2(i32 %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i32 [ %73, %69 ], [ %76, %74 ]
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %13
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @tree_log2(i32) #1

declare dso_local i32 @TREE_REALPART(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @floor_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
