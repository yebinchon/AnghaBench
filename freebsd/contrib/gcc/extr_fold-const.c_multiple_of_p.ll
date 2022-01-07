; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_multiple_of_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_multiple_of_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_TYPE = common dso_local global i32 0, align 4
@size_one_node = common dso_local global i32 0, align 4
@TRUNC_MOD_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @multiple_of_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiple_of_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @operand_equal_p(i32 %10, i32 %11, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %147

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TREE_CODE(i32 %16)
  %18 = load i32, i32* @INTEGER_TYPE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %147

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @TREE_CODE(i32 %22)
  switch i32 %23, label %146 [
    i32 135, label %24
    i32 131, label %30
    i32 129, label %47
    i32 132, label %47
    i32 133, label %64
    i32 130, label %100
    i32 128, label %117
    i32 134, label %123
  ]

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @integer_pow2p(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %147

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %21, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @TREE_OPERAND(i32 %32, i32 0)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @multiple_of_p(i32 %31, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @TREE_OPERAND(i32 %39, i32 1)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @multiple_of_p(i32 %38, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %37, %30
  %45 = phi i1 [ true, %30 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %147

47:                                               ; preds = %21, %21
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @TREE_OPERAND(i32 %49, i32 0)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @multiple_of_p(i32 %48, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @TREE_OPERAND(i32 %56, i32 1)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @multiple_of_p(i32 %55, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %54, %47
  %62 = phi i1 [ false, %47 ], [ %60, %54 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %147

64:                                               ; preds = %21
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @TREE_OPERAND(i32 %65, i32 1)
  %67 = call i32 @TREE_CODE(i32 %66)
  %68 = icmp eq i32 %67, 134
  br i1 %68, label %69, label %99

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @TREE_OPERAND(i32 %70, i32 1)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @size_one_node, align 4
  %73 = call i32 @TREE_TYPE(i32 %72)
  %74 = call i32 @TYPE_PRECISION(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @TREE_INT_CST_LOW(i32 %75)
  %77 = icmp sgt i32 %74, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %69
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @TREE_INT_CST_HIGH(i32 %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @size_one_node, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @const_binop(i32 133, i32 %84, i32 %85, i32 0)
  %87 = call i32 @fold_convert(i32 %83, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = icmp ne i32 0, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @TREE_OVERFLOW(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @multiple_of_p(i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %4, align 4
  br label %147

98:                                               ; preds = %89, %82, %78, %69
  br label %99

99:                                               ; preds = %98, %64
  store i32 0, i32* %4, align 4
  br label %147

100:                                              ; preds = %21
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @TREE_OPERAND(i32 %101, i32 0)
  %103 = call i32 @TREE_TYPE(i32 %102)
  %104 = call i32 @TREE_CODE(i32 %103)
  %105 = load i32, i32* @INTEGER_TYPE, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @TYPE_PRECISION(i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @TREE_OPERAND(i32 %110, i32 0)
  %112 = call i32 @TREE_TYPE(i32 %111)
  %113 = call i32 @TYPE_PRECISION(i32 %112)
  %114 = icmp slt i32 %109, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107, %100
  store i32 0, i32* %4, align 4
  br label %147

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %21, %116
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @TREE_OPERAND(i32 %119, i32 0)
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @multiple_of_p(i32 %118, i32 %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %147

123:                                              ; preds = %21
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @TREE_CODE(i32 %124)
  %126 = icmp ne i32 %125, 134
  br i1 %126, label %139, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @TYPE_UNSIGNED(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @tree_int_cst_sgn(i32 %132)
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @tree_int_cst_sgn(i32 %136)
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135, %131, %123
  store i32 0, i32* %4, align 4
  br label %147

140:                                              ; preds = %135, %127
  %141 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @const_binop(i32 %141, i32 %142, i32 %143, i32 0)
  %145 = call i32 @integer_zerop(i32 %144)
  store i32 %145, i32* %4, align 4
  br label %147

146:                                              ; preds = %21
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %140, %139, %117, %115, %99, %93, %61, %44, %28, %20, %14
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @integer_pow2p(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @const_binop(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_OVERFLOW(i32) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @tree_int_cst_sgn(i32) #1

declare dso_local i32 @integer_zerop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
