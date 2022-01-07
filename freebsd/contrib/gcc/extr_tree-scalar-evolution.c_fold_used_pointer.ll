; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_fold_used_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_fold_used_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @fold_used_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_used_pointer(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @TREE_CODE(i64 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @PLUS_EXPR, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @MINUS_EXPR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %89

20:                                               ; preds = %16, %2
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @TREE_OPERAND(i64 %21, i32 0)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @TREE_OPERAND(i64 %23, i32 1)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @pointer_offset_p(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @fold_used_pointer(i64 %29, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @fold_used_pointer_cast(i64 %32)
  store i64 %33, i64* %9, align 8
  br label %51

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @PLUS_EXPR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @pointer_offset_p(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @fold_used_pointer_cast(i64 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @fold_used_pointer(i64 %45, i64 %46)
  store i64 %47, i64* %9, align 8
  br label %50

48:                                               ; preds = %38, %34
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %3, align 8
  br label %92

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* %3, align 8
  br label %92

61:                                               ; preds = %55, %51
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @TREE_TYPE(i64 %62)
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @chrec_convert(i32 %63, i64 %64, i64 %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @TREE_TYPE(i64 %67)
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @chrec_convert(i32 %68, i64 %69, i64 %70)
  store i64 %71, i64* %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @PLUS_EXPR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %61
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @TREE_TYPE(i64 %76)
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i64 @chrec_fold_plus(i32 %77, i64 %78, i64 %79)
  store i64 %80, i64* %4, align 8
  br label %87

81:                                               ; preds = %61
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @TREE_TYPE(i64 %82)
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @chrec_fold_minus(i32 %83, i64 %84, i64 %85)
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %81, %75
  %88 = load i64, i64* %4, align 8
  store i64 %88, i64* %3, align 8
  br label %92

89:                                               ; preds = %16
  %90 = load i64, i64* %4, align 8
  %91 = call i64 @fold_used_pointer_cast(i64 %90)
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %89, %87, %59, %48
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @pointer_offset_p(i64) #1

declare dso_local i64 @fold_used_pointer_cast(i64) #1

declare dso_local i64 @chrec_convert(i32, i64, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @chrec_fold_plus(i32, i64, i64) #1

declare dso_local i64 @chrec_fold_minus(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
