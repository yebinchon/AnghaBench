; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_is_aligning_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_is_aligning_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NON_LVALUE_EXPR = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@BIT_AND_EXPR = common dso_local global i64 0, align 8
@BIGGEST_ALIGNMENT = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @is_aligning_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_aligning_offset(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @TREE_CODE(i64 %7)
  %9 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @NOP_EXPR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @CONVERT_EXPR, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %16, %11, %6
  %22 = phi i1 [ true, %11 ], [ true, %6 ], [ %20, %16 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @TREE_OPERAND(i64 %24, i32 0)
  store i64 %25, i64* %4, align 8
  br label %6

26:                                               ; preds = %21
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @BIT_AND_EXPR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @TREE_OPERAND(i64 %32, i32 1)
  %34 = call i32 @host_integerp(i64 %33, i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @TREE_OPERAND(i64 %37, i32 1)
  %39 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %40 = load i32, i32* @BITS_PER_UNIT, align 4
  %41 = sdiv i32 %39, %40
  %42 = call i64 @compare_tree_int(i64 %38, i32 %41)
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @TREE_OPERAND(i64 %45, i32 1)
  %47 = call i64 @tree_low_cst(i64 %46, i32 1)
  %48 = add nsw i64 %47, 1
  %49 = call i32 @exact_log2(i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44, %36, %31, %26
  store i32 0, i32* %3, align 4
  br label %120

55:                                               ; preds = %44
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @TREE_OPERAND(i64 %56, i32 0)
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %75, %55
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @TREE_CODE(i64 %59)
  %61 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @TREE_CODE(i64 %64)
  %66 = load i64, i64* @NOP_EXPR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @TREE_CODE(i64 %69)
  %71 = load i64, i64* @CONVERT_EXPR, align 8
  %72 = icmp eq i64 %70, %71
  br label %73

73:                                               ; preds = %68, %63, %58
  %74 = phi i1 [ true, %63 ], [ true, %58 ], [ %72, %68 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i64, i64* %4, align 8
  %77 = call i64 @TREE_OPERAND(i64 %76, i32 0)
  store i64 %77, i64* %4, align 8
  br label %58

78:                                               ; preds = %73
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @TREE_CODE(i64 %79)
  %81 = load i64, i64* @NEGATE_EXPR, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %120

84:                                               ; preds = %78
  %85 = load i64, i64* %4, align 8
  %86 = call i64 @TREE_OPERAND(i64 %85, i32 0)
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %104, %84
  %88 = load i64, i64* %4, align 8
  %89 = call i64 @TREE_CODE(i64 %88)
  %90 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @TREE_CODE(i64 %93)
  %95 = load i64, i64* @NOP_EXPR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %4, align 8
  %99 = call i64 @TREE_CODE(i64 %98)
  %100 = load i64, i64* @CONVERT_EXPR, align 8
  %101 = icmp eq i64 %99, %100
  br label %102

102:                                              ; preds = %97, %92, %87
  %103 = phi i1 [ true, %92 ], [ true, %87 ], [ %101, %97 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i64, i64* %4, align 8
  %106 = call i64 @TREE_OPERAND(i64 %105, i32 0)
  store i64 %106, i64* %4, align 8
  br label %87

107:                                              ; preds = %102
  %108 = load i64, i64* %4, align 8
  %109 = call i64 @TREE_CODE(i64 %108)
  %110 = load i64, i64* @ADDR_EXPR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i64, i64* %4, align 8
  %114 = call i64 @TREE_OPERAND(i64 %113, i32 0)
  %115 = load i64, i64* %5, align 8
  %116 = icmp eq i64 %114, %115
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ false, %107 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %83, %54
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @host_integerp(i64, i32) #1

declare dso_local i64 @compare_tree_int(i64, i32) #1

declare dso_local i32 @exact_log2(i64) #1

declare dso_local i64 @tree_low_cst(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
