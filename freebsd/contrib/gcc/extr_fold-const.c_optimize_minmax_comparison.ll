; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_optimize_minmax_comparison.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_optimize_minmax_comparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_EXPR = common dso_local global i32 0, align 4
@MAX_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@TRUTH_ORIF_EXPR = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @optimize_minmax_comparison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optimize_minmax_comparison(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @STRIP_SIGN_NOPS(i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @TREE_CODE(i32 %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @TREE_OPERAND(i32 %25, i32 1)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @tree_int_cst_equal(i32 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @tree_int_cst_lt(i32 %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @TREE_OPERAND(i32 %33, i32 0)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @MIN_EXPR, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @MAX_EXPR, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %60, label %42

42:                                               ; preds = %38, %4
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @TREE_CODE(i32 %43)
  %45 = load i64, i64* @INTEGER_CST, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @TREE_CONSTANT_OVERFLOW(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = call i64 @TREE_CODE(i32 %52)
  %54 = load i64, i64* @INTEGER_CST, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @TREE_CONSTANT_OVERFLOW(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %51, %47, %42, %38
  %61 = load i32, i32* @NULL_TREE, align 4
  store i32 %61, i32* %5, align 4
  br label %190

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %188 [
    i32 128, label %64
    i32 129, label %64
    i32 130, label %64
    i32 132, label %78
    i32 133, label %90
    i32 131, label %144
  ]

64:                                               ; preds = %62, %62, %62
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @invert_tree_comparison(i32 %65, i32 0)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @optimize_minmax_comparison(i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @invert_truthvalue(i32 %74)
  store i32 %75, i32* %5, align 4
  br label %190

76:                                               ; preds = %64
  %77 = load i32, i32* @NULL_TREE, align 4
  store i32 %77, i32* %5, align 4
  br label %190

78:                                               ; preds = %62
  %79 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @optimize_minmax_comparison(i32 133, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @optimize_minmax_comparison(i32 131, i32 %85, i32 %86, i32 %87)
  %89 = call i32 @fold_build2(i32 %79, i32 %80, i32 %84, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %190

90:                                               ; preds = %62
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @MAX_EXPR, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @fold_build2(i32 130, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %5, align 4
  br label %190

102:                                              ; preds = %94, %90
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @MAX_EXPR, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @fold_build2(i32 133, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %5, align 4
  br label %190

114:                                              ; preds = %106, %102
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @MAX_EXPR, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @integer_zero_node, align 4
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @omit_one_operand(i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %5, align 4
  br label %190

123:                                              ; preds = %114
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @fold_build2(i32 132, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %5, align 4
  br label %190

131:                                              ; preds = %123
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @integer_zero_node, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @omit_one_operand(i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %5, align 4
  br label %190

139:                                              ; preds = %131
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @fold_build2(i32 133, i32 %140, i32 %141, i32 %142)
  store i32 %143, i32* %5, align 4
  br label %190

144:                                              ; preds = %62
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @MAX_EXPR, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @fold_build2(i32 131, i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %5, align 4
  br label %190

159:                                              ; preds = %151, %144
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @MAX_EXPR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @integer_one_node, align 4
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @omit_one_operand(i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %5, align 4
  br label %190

168:                                              ; preds = %159
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @MIN_EXPR, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @integer_zero_node, align 4
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @omit_one_operand(i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %5, align 4
  br label %190

183:                                              ; preds = %175, %168
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @fold_build2(i32 131, i32 %184, i32 %185, i32 %186)
  store i32 %187, i32* %5, align 4
  br label %190

188:                                              ; preds = %62
  %189 = load i32, i32* @NULL_TREE, align 4
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %188, %183, %178, %163, %154, %139, %134, %126, %118, %109, %97, %78, %76, %73, %60
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @STRIP_SIGN_NOPS(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @tree_int_cst_equal(i32, i32) #1

declare dso_local i32 @tree_int_cst_lt(i32, i32) #1

declare dso_local i64 @TREE_CONSTANT_OVERFLOW(i32) #1

declare dso_local i32 @invert_tree_comparison(i32, i32) #1

declare dso_local i32 @invert_truthvalue(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @omit_one_operand(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
