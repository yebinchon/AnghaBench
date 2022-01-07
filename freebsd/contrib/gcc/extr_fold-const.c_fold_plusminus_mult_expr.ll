; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_plusminus_mult_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_plusminus_mult_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64)* @fold_plusminus_mult_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_plusminus_mult_expr(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load i64, i64* @NULL_TREE, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* @NULL_TREE, align 8
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @MULT_EXPR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @TREE_OPERAND(i64 %29, i32 0)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @TREE_OPERAND(i64 %31, i32 1)
  store i64 %32, i64* %11, align 8
  br label %37

33:                                               ; preds = %4
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @build_one_cst(i64 %35)
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @MULT_EXPR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @TREE_OPERAND(i64 %43, i32 0)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @TREE_OPERAND(i64 %45, i32 1)
  store i64 %46, i64* %13, align 8
  br label %51

47:                                               ; preds = %37
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @build_one_cst(i64 %49)
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i64, i64* @NULL_TREE, align 8
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i64 @operand_equal_p(i64 %53, i64 %54, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %12, align 8
  store i64 %60, i64* %15, align 8
  br label %165

61:                                               ; preds = %51
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i64 @operand_equal_p(i64 %62, i64 %63, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %11, align 8
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %13, align 8
  store i64 %69, i64* %15, align 8
  br label %164

70:                                               ; preds = %61
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @operand_equal_p(i64 %71, i64 %72, i32 0)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %11, align 8
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %12, align 8
  store i64 %78, i64* %15, align 8
  br label %163

79:                                               ; preds = %70
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i64 @operand_equal_p(i64 %80, i64 %81, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i64, i64* %11, align 8
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* %10, align 8
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %13, align 8
  store i64 %87, i64* %15, align 8
  br label %162

88:                                               ; preds = %79
  %89 = load i64, i64* %11, align 8
  %90 = call i64 @host_integerp(i64 %89, i32 0)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %161

92:                                               ; preds = %88
  %93 = load i64, i64* %13, align 8
  %94 = call i64 @host_integerp(i64 %93, i32 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %161

96:                                               ; preds = %92
  store i32 0, i32* %20, align 4
  %97 = load i64, i64* %11, align 8
  %98 = call i64 @TREE_INT_CST_LOW(i64 %97)
  store i64 %98, i64* %17, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i64 @TREE_INT_CST_LOW(i64 %99)
  store i64 %100, i64* %18, align 8
  %101 = load i64, i64* %17, align 8
  %102 = icmp sge i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i64, i64* %17, align 8
  br label %108

105:                                              ; preds = %96
  %106 = load i64, i64* %17, align 8
  %107 = sub nsw i64 0, %106
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi i64 [ %104, %103 ], [ %107, %105 ]
  %110 = load i64, i64* %18, align 8
  %111 = icmp sge i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i64, i64* %18, align 8
  br label %117

114:                                              ; preds = %108
  %115 = load i64, i64* %18, align 8
  %116 = sub nsw i64 0, %115
  br label %117

117:                                              ; preds = %114, %112
  %118 = phi i64 [ %113, %112 ], [ %116, %114 ]
  %119 = icmp slt i64 %109, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i64, i64* %17, align 8
  store i64 %121, i64* %19, align 8
  %122 = load i64, i64* %18, align 8
  store i64 %122, i64* %17, align 8
  %123 = load i64, i64* %19, align 8
  store i64 %123, i64* %18, align 8
  %124 = load i64, i64* %10, align 8
  store i64 %124, i64* %14, align 8
  %125 = load i64, i64* %12, align 8
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* %14, align 8
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %11, align 8
  store i64 %127, i64* %21, align 8
  store i32 1, i32* %20, align 4
  br label %130

128:                                              ; preds = %117
  %129 = load i64, i64* %13, align 8
  store i64 %129, i64* %21, align 8
  br label %130

130:                                              ; preds = %128, %120
  %131 = load i64, i64* %18, align 8
  %132 = call i64 @exact_log2(i64 %131)
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %130
  %135 = load i64, i64* %17, align 8
  %136 = load i64, i64* %18, align 8
  %137 = srem i64 %135, %136
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %134
  %140 = load i64, i64* @MULT_EXPR, align 8
  %141 = load i64, i64* %10, align 8
  %142 = call i64 @TREE_TYPE(i64 %141)
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i64 @TREE_TYPE(i64 %144)
  %146 = load i64, i64* %17, align 8
  %147 = load i64, i64* %18, align 8
  %148 = sdiv i64 %146, %147
  %149 = call i64 @build_int_cst(i64 %145, i64 %148)
  %150 = call i64 @fold_build2(i64 %140, i64 %142, i64 %143, i64 %149)
  store i64 %150, i64* %14, align 8
  %151 = load i64, i64* %12, align 8
  store i64 %151, i64* %15, align 8
  %152 = load i64, i64* %21, align 8
  store i64 %152, i64* %16, align 8
  %153 = load i32, i32* %20, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %139
  %156 = load i64, i64* %14, align 8
  store i64 %156, i64* %21, align 8
  %157 = load i64, i64* %15, align 8
  store i64 %157, i64* %14, align 8
  %158 = load i64, i64* %21, align 8
  store i64 %158, i64* %15, align 8
  br label %159

159:                                              ; preds = %155, %139
  br label %160

160:                                              ; preds = %159, %134, %130
  br label %161

161:                                              ; preds = %160, %92, %88
  br label %162

162:                                              ; preds = %161, %84
  br label %163

163:                                              ; preds = %162, %75
  br label %164

164:                                              ; preds = %163, %66
  br label %165

165:                                              ; preds = %164, %57
  %166 = load i64, i64* %16, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %165
  %169 = load i64, i64* @MULT_EXPR, align 8
  %170 = load i64, i64* %7, align 8
  %171 = load i32, i32* %6, align 4
  %172 = zext i32 %171 to i64
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* %14, align 8
  %176 = call i64 @fold_convert(i64 %174, i64 %175)
  %177 = load i64, i64* %7, align 8
  %178 = load i64, i64* %15, align 8
  %179 = call i64 @fold_convert(i64 %177, i64 %178)
  %180 = call i64 @fold_build2(i64 %172, i64 %173, i64 %176, i64 %179)
  %181 = load i64, i64* %7, align 8
  %182 = load i64, i64* %16, align 8
  %183 = call i64 @fold_convert(i64 %181, i64 %182)
  %184 = call i64 @fold_build2(i64 %169, i64 %170, i64 %180, i64 %183)
  store i64 %184, i64* %5, align 8
  br label %187

185:                                              ; preds = %165
  %186 = load i64, i64* @NULL_TREE, align 8
  store i64 %186, i64* %5, align 8
  br label %187

187:                                              ; preds = %185, %168
  %188 = load i64, i64* %5, align 8
  ret i64 %188
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @build_one_cst(i64) #1

declare dso_local i64 @operand_equal_p(i64, i64, i32) #1

declare dso_local i64 @host_integerp(i64, i32) #1

declare dso_local i64 @TREE_INT_CST_LOW(i64) #1

declare dso_local i64 @exact_log2(i64) #1

declare dso_local i64 @fold_build2(i64, i64, i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @build_int_cst(i64, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
