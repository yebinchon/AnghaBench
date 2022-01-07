; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_single_bit_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_single_bit_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32, i32)* }

@NE_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i64 0, align 8
@RSHIFT_EXPR = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BIT_XOR_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@SIGN_EXTEND = common dso_local global i64 0, align 8
@flag_syntax_only = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fold_single_bit_test(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NE_EXPR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EQ_EXPR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %146

26:                                               ; preds = %22, %4
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @BIT_AND_EXPR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %146

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @integer_zerop(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %146

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @TREE_OPERAND(i64 %36, i32 1)
  %38 = call i64 @integer_pow2p(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %146

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @TREE_OPERAND(i64 %41, i32 0)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @TREE_TYPE(i64 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @TREE_OPERAND(i64 %45, i32 1)
  %47 = call i32 @tree_log2(i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @TYPE_MODE(i64 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @fold_single_bit_test_into_sign_test(i32 %50, i64 %51, i64 %52, i64 %53)
  store i64 %54, i64* %18, align 8
  %55 = load i64, i64* %18, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i64, i64* %18, align 8
  store i64 %58, i64* %5, align 8
  br label %148

59:                                               ; preds = %40
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @TREE_CODE(i64 %60)
  %62 = load i64, i64* @RSHIFT_EXPR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %99

64:                                               ; preds = %59
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @TREE_OPERAND(i64 %65, i32 1)
  %67 = call i64 @TREE_CODE(i64 %66)
  %68 = load i64, i64* @INTEGER_CST, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %64
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @TREE_OPERAND(i64 %71, i32 1)
  %73 = call i64 @TREE_INT_CST_HIGH(i64 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @TYPE_PRECISION(i64 %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load i64, i64* %10, align 8
  %82 = call i64 @TREE_OPERAND(i64 %81, i32 1)
  %83 = load i32, i32* %12, align 4
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @TYPE_PRECISION(i64 %84)
  %86 = sub nsw i32 %83, %85
  %87 = call i64 @compare_tree_int(i64 %82, i32 %86)
  %88 = icmp sgt i64 0, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %80
  %90 = load i64, i64* %10, align 8
  %91 = call i64 @TREE_OPERAND(i64 %90, i32 1)
  %92 = call i64 @TREE_INT_CST_LOW(i64 %91)
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %12, align 4
  %97 = load i64, i64* %10, align 8
  %98 = call i64 @TREE_OPERAND(i64 %97, i32 0)
  store i64 %98, i64* %10, align 8
  br label %99

99:                                               ; preds = %89, %80, %75, %70, %64, %59
  store i32 1, i32* %14, align 4
  %100 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i64 %100(i32 %101, i32 0)
  store i64 %102, i64* %15, align 8
  %103 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i64 %103(i32 %104, i32 1)
  store i64 %105, i64* %16, align 8
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i64, i64* %16, align 8
  br label %112

110:                                              ; preds = %99
  %111 = load i64, i64* %15, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i64 [ %109, %108 ], [ %111, %110 ]
  store i64 %113, i64* %17, align 8
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i64 @fold_convert(i64 %114, i64 %115)
  store i64 %116, i64* %10, align 8
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i64, i64* @RSHIFT_EXPR, align 8
  %121 = load i64, i64* %17, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @size_int(i32 %123)
  %125 = call i64 @build2(i64 %120, i64 %121, i64 %122, i32 %124)
  store i64 %125, i64* %10, align 8
  br label %126

126:                                              ; preds = %119, %112
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @EQ_EXPR, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32, i32* @BIT_XOR_EXPR, align 4
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load i32, i32* @integer_one_node, align 4
  %135 = call i64 @fold_build2(i32 %131, i64 %132, i64 %133, i32 %134)
  store i64 %135, i64* %10, align 8
  br label %136

136:                                              ; preds = %130, %126
  %137 = load i64, i64* @BIT_AND_EXPR, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i32, i32* @integer_one_node, align 4
  %141 = call i64 @build2(i64 %137, i64 %138, i64 %139, i32 %140)
  store i64 %141, i64* %10, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i64 @fold_convert(i64 %142, i64 %143)
  store i64 %144, i64* %10, align 8
  %145 = load i64, i64* %10, align 8
  store i64 %145, i64* %5, align 8
  br label %148

146:                                              ; preds = %35, %31, %26, %22
  %147 = load i64, i64* @NULL_TREE, align 8
  store i64 %147, i64* %5, align 8
  br label %148

148:                                              ; preds = %146, %136, %57
  %149 = load i64, i64* %5, align 8
  ret i64 %149
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @integer_pow2p(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @tree_log2(i64) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @fold_single_bit_test_into_sign_test(i32, i64, i64, i64) #1

declare dso_local i64 @TREE_INT_CST_HIGH(i64) #1

declare dso_local i32 @TYPE_PRECISION(i64) #1

declare dso_local i64 @compare_tree_int(i64, i32) #1

declare dso_local i64 @TREE_INT_CST_LOW(i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @build2(i64, i64, i64, i32) #1

declare dso_local i32 @size_int(i32) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
