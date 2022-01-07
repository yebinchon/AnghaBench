; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_relational_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_relational_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_CST = common dso_local global i64 0, align 8
@flag_trapping_math = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@COMPLEX_CST = common dso_local global i64 0, align 8
@TRUTH_ANDIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_ORIF_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @fold_relational_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_relational_const(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @TREE_CODE(i32 %17)
  %19 = load i64, i64* @REAL_CST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @TREE_CODE(i32 %22)
  %24 = load i64, i64* @REAL_CST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = call i32* @TREE_REAL_CST_PTR(i32 %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32* @TREE_REAL_CST_PTR(i32 %29)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i64 @real_isnan(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** %13, align 8
  %36 = call i64 @real_isnan(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34, %26
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %48 [
    i32 141, label %40
    i32 134, label %40
    i32 135, label %41
    i32 128, label %41
    i32 129, label %41
    i32 130, label %41
    i32 131, label %41
    i32 132, label %41
    i32 133, label %41
    i32 136, label %42
    i32 138, label %42
    i32 139, label %42
    i32 140, label %42
    i32 137, label %42
  ]

40:                                               ; preds = %38, %38
  store i32 0, i32* %10, align 4
  br label %50

41:                                               ; preds = %38, %38, %38, %38, %38, %38, %38
  store i32 1, i32* %10, align 4
  br label %50

42:                                               ; preds = %38, %38, %38, %38, %38
  %43 = load i32, i32* @flag_trapping_math, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @NULL_TREE, align 4
  store i32 %46, i32* %5, align 4
  br label %170

47:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %50

48:                                               ; preds = %38
  %49 = call i32 (...) @gcc_unreachable()
  br label %50

50:                                               ; preds = %48, %47, %41, %40
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @constant_boolean_node(i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %170

54:                                               ; preds = %34
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @real_compare(i32 %55, i32* %56, i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @constant_boolean_node(i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %170

61:                                               ; preds = %21, %4
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @TREE_CODE(i32 %62)
  %64 = load i64, i64* @COMPLEX_CST, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @TREE_CODE(i32 %67)
  %69 = load i64, i64* @COMPLEX_CST, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %105

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @TREE_REALPART(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @TREE_REALPART(i32 %76)
  %78 = call i32 @fold_relational_const(i32 %72, i32 %73, i32 %75, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @TREE_IMAGPART(i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @TREE_IMAGPART(i32 %83)
  %85 = call i32 @fold_relational_const(i32 %79, i32 %80, i32 %82, i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 141
  br i1 %87, label %88, label %94

88:                                               ; preds = %71
  %89 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @fold_build2(i32 %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %170

94:                                               ; preds = %71
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 135
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @fold_build2(i32 %98, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %170

103:                                              ; preds = %94
  %104 = load i32, i32* @NULL_TREE, align 4
  store i32 %104, i32* %5, align 4
  br label %170

105:                                              ; preds = %66, %61
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 138
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 139
  br i1 %110, label %111, label %117

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @swap_tree_comparison(i32 %115)
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %111, %108
  store i32 0, i32* %11, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 135
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 140
  br i1 %122, label %123, label %126

123:                                              ; preds = %120, %117
  store i32 1, i32* %11, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @invert_tree_comparison(i32 %124, i32 0)
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %8, align 4
  %128 = call i64 @TREE_CODE(i32 %127)
  %129 = load i64, i64* @INTEGER_CST, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %126
  %132 = load i32, i32* %9, align 4
  %133 = call i64 @TREE_CODE(i32 %132)
  %134 = load i64, i64* @INTEGER_CST, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %131
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 141
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @tree_int_cst_equal(i32 %140, i32 %141)
  store i32 %142, i32* %10, align 4
  br label %157

143:                                              ; preds = %136
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @TREE_TYPE(i32 %144)
  %146 = call i64 @TYPE_UNSIGNED(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @INT_CST_LT_UNSIGNED(i32 %149, i32 %150)
  store i32 %151, i32* %10, align 4
  br label %156

152:                                              ; preds = %143
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @INT_CST_LT(i32 %153, i32 %154)
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %139
  br label %160

158:                                              ; preds = %131, %126
  %159 = load i32, i32* @NULL_TREE, align 4
  store i32 %159, i32* %5, align 4
  br label %170

160:                                              ; preds = %157
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %10, align 4
  %165 = xor i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @constant_boolean_node(i32 %167, i32 %168)
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %166, %158, %103, %97, %88, %54, %50, %45
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32* @TREE_REAL_CST_PTR(i32) #1

declare dso_local i64 @real_isnan(i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @constant_boolean_node(i32, i32) #1

declare dso_local i32 @real_compare(i32, i32*, i32*) #1

declare dso_local i32 @TREE_REALPART(i32) #1

declare dso_local i32 @TREE_IMAGPART(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @swap_tree_comparison(i32) #1

declare dso_local i32 @invert_tree_comparison(i32, i32) #1

declare dso_local i32 @tree_int_cst_equal(i32, i32) #1

declare dso_local i64 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @INT_CST_LT_UNSIGNED(i32, i32) #1

declare dso_local i32 @INT_CST_LT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
