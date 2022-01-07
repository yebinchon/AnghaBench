; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-object-size.c_compute_object_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-object-size.c_compute_object_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS_EXPR = common dso_local global i32 0, align 4
@size_zero_node = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @compute_object_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compute_object_offset(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @size_zero_node, align 8
  store i64 %15, i64* %3, align 8
  br label %106

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @TREE_CODE(i64 %17)
  switch i32 %18, label %99 [
    i32 134, label %19
    i32 129, label %42
    i32 130, label %42
    i32 133, label %42
    i32 128, label %42
    i32 131, label %42
    i32 132, label %47
    i32 135, label %61
  ]

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @TREE_OPERAND(i64 %20, i32 0)
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @compute_object_offset(i64 %21, i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @error_mark_node, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %3, align 8
  br label %106

29:                                               ; preds = %19
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @TREE_OPERAND(i64 %30, i32 1)
  store i64 %31, i64* %9, align 8
  %32 = load i32, i32* @PLUS_EXPR, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @DECL_FIELD_OFFSET(i64 %33)
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @DECL_FIELD_BIT_OFFSET(i64 %35)
  %37 = call i32 @tree_low_cst(i32 %36, i32 1)
  %38 = load i32, i32* @BITS_PER_UNIT, align 4
  %39 = sdiv i32 %37, %38
  %40 = call i64 @size_int(i32 %39)
  %41 = call i64 @size_binop(i32 %32, i64 %34, i64 %40)
  store i64 %41, i64* %8, align 8
  br label %101

42:                                               ; preds = %16, %16, %16, %16, %16
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @TREE_OPERAND(i64 %43, i32 0)
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @compute_object_offset(i64 %44, i64 %45)
  store i64 %46, i64* %3, align 8
  br label %106

47:                                               ; preds = %16
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @TREE_OPERAND(i64 %48, i32 0)
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @compute_object_offset(i64 %49, i64 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @error_mark_node, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %3, align 8
  br label %106

57:                                               ; preds = %47
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @TREE_TYPE(i64 %58)
  %60 = call i64 @TYPE_SIZE_UNIT(i32 %59)
  store i64 %60, i64* %8, align 8
  br label %101

61:                                               ; preds = %16
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @TREE_OPERAND(i64 %62, i32 0)
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @compute_object_offset(i64 %63, i64 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @error_mark_node, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %3, align 8
  br label %106

71:                                               ; preds = %61
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @TREE_OPERAND(i64 %72, i32 1)
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @TREE_CODE(i64 %74)
  %76 = load i32, i32* @INTEGER_CST, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @tree_int_cst_sgn(i64 %79)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @NEGATE_EXPR, align 4
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @TREE_TYPE(i64 %85)
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @fold_build1(i32 %84, i32 %86, i64 %87)
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %82, %78, %71
  %90 = load i32, i32* @sizetype, align 4
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @fold_convert(i32 %90, i64 %91)
  store i64 %92, i64* %9, align 8
  %93 = load i32, i32* @MULT_EXPR, align 4
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @TREE_TYPE(i64 %94)
  %96 = call i64 @TYPE_SIZE_UNIT(i32 %95)
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @size_binop(i32 %93, i64 %96, i64 %97)
  store i64 %98, i64* %8, align 8
  br label %101

99:                                               ; preds = %16
  %100 = load i64, i64* @error_mark_node, align 8
  store i64 %100, i64* %3, align 8
  br label %106

101:                                              ; preds = %89, %57, %29
  %102 = load i32, i32* %6, align 4
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @size_binop(i32 %102, i64 %103, i64 %104)
  store i64 %105, i64* %3, align 8
  br label %106

106:                                              ; preds = %101, %99, %69, %55, %42, %27, %14
  %107 = load i64, i64* %3, align 8
  ret i64 %107
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @size_binop(i32, i64, i64) #1

declare dso_local i64 @DECL_FIELD_OFFSET(i64) #1

declare dso_local i64 @size_int(i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @DECL_FIELD_BIT_OFFSET(i64) #1

declare dso_local i64 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @tree_int_cst_sgn(i64) #1

declare dso_local i64 @fold_build1(i32, i32, i64) #1

declare dso_local i64 @fold_convert(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
