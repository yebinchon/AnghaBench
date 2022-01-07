; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_find_case_label_for_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_find_case_label_for_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @find_case_label_for_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_case_label_for_value(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @SWITCH_LABELS(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @TREE_VEC_LENGTH(i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %9, align 8
  %20 = sub i64 %19, 1
  %21 = call i32 @TREE_VEC_ELT(i32 %18, i64 %20)
  store i32 %21, i32* %10, align 4
  store i64 -1, i64* %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = sub i64 %22, 1
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %69, %2
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %25, %26
  %28 = icmp ugt i64 %27, 1
  br i1 %28, label %29, label %70

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %30, %31
  %33 = udiv i64 %32, 2
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @TREE_VEC_ELT(i32 %34, i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32* @CASE_LOW(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @tree_int_cst_compare(i32* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i64, i64* %11, align 8
  store i64 %44, i64* %8, align 8
  br label %47

45:                                               ; preds = %29
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %12, align 4
  %49 = call i32* @CASE_HIGH(i32 %48)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %51
  br label %69

57:                                               ; preds = %47
  %58 = load i32, i32* %13, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = call i32* @CASE_HIGH(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @tree_int_cst_compare(i32* %62, i32 %63)
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %3, align 4
  br label %72

68:                                               ; preds = %60, %57
  br label %69

69:                                               ; preds = %68, %56
  br label %24

70:                                               ; preds = %24
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %66, %54
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @SWITCH_LABELS(i32) #1

declare dso_local i64 @TREE_VEC_LENGTH(i32) #1

declare dso_local i32 @TREE_VEC_ELT(i32, i64) #1

declare dso_local i32 @tree_int_cst_compare(i32*, i32) #1

declare dso_local i32* @CASE_LOW(i32) #1

declare dso_local i32* @CASE_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
