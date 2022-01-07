; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_integer_pow2p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_integer_pow2p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPLEX_CST = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@POINTER_SIZE = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @integer_pow2p(i32 %0) #0 {
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
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @TREE_REALPART(i32 %14)
  %16 = call i32 @integer_pow2p(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TREE_IMAGPART(i32 %19)
  %21 = call i64 @integer_zerop(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %106

24:                                               ; preds = %18, %13, %1
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i64, i64* @INTEGER_CST, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %106

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @TREE_TYPE(i32 %31)
  %33 = call i64 @POINTER_TYPE_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @POINTER_SIZE, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @TREE_TYPE(i32 %38)
  %40 = call i32 @TYPE_PRECISION(i32 %39)
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i32 [ %36, %35 ], [ %40, %37 ]
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @TREE_INT_CST_HIGH(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @TREE_INT_CST_LOW(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %49 = mul nsw i32 2, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %76

52:                                               ; preds = %41
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %59 = sub nsw i32 %57, %58
  %60 = shl i32 -1, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %75

64:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 -1, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %68, %64
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %51
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %106

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 1
  %90 = and i32 %87, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %86, %83
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %96, %98
  %100 = icmp eq i32 %99, 0
  br label %101

101:                                              ; preds = %95, %92
  %102 = phi i1 [ false, %92 ], [ %100, %95 ]
  br label %103

103:                                              ; preds = %101, %86
  %104 = phi i1 [ true, %86 ], [ %102, %101 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %82, %29, %23
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_REALPART(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i32 @TREE_IMAGPART(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
