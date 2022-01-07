; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_maybe_fold_stmt_addition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_maybe_fold_stmt_addition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINUS_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32* null, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@sizetype = common dso_local global i32* null, align 8
@MULT_EXPR = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@NEGATE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @maybe_fold_stmt_addition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @maybe_fold_stmt_addition(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @TREE_OPERAND(i32* %15, i32 0)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @TREE_OPERAND(i32* %17, i32 1)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @TREE_TYPE(i32* %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @TREE_CODE(i32* %21)
  %23 = load i64, i64* @MINUS_EXPR, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @POINTER_TYPE_P(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = load i32*, i32** @NULL_TREE, align 8
  store i32* %30, i32** %2, align 8
  br label %203

31:                                               ; preds = %1
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @TREE_TYPE(i32* %32)
  %34 = call i64 @INTEGRAL_TYPE_P(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** @NULL_TREE, align 8
  store i32* %40, i32** %2, align 8
  br label %203

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %5, align 8
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %8, align 8
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %41, %31
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @TREE_CODE(i32* %46)
  %48 = load i64, i64* @INTEGER_CST, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32*, i32** @NULL_TREE, align 8
  store i32* %51, i32** %2, align 8
  br label %203

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @TREE_CODE(i32* %53)
  %55 = load i64, i64* @ADDR_EXPR, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32*, i32** @NULL_TREE, align 8
  store i32* %58, i32** %2, align 8
  br label %203

59:                                               ; preds = %52
  %60 = load i32*, i32** %4, align 8
  %61 = call i32* @TREE_OPERAND(i32* %60, i32 0)
  store i32* %61, i32** %4, align 8
  br label %62

62:                                               ; preds = %147, %59
  %63 = load i32*, i32** %4, align 8
  %64 = call i64 @TREE_CODE(i32* %63)
  %65 = load i64, i64* @ARRAY_REF, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %153

67:                                               ; preds = %62
  %68 = load i32*, i32** %4, align 8
  %69 = call i32* @TREE_OPERAND(i32* %68, i32 0)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32* @TREE_OPERAND(i32* %70, i32 1)
  store i32* %71, i32** %11, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32* @TREE_TYPE(i32* %72)
  store i32* %73, i32** %12, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32* @TYPE_SIZE_UNIT(i32* %74)
  store i32* %75, i32** %13, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i64 @TREE_CODE(i32* %76)
  %78 = load i64, i64* @INTEGER_CST, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %153

81:                                               ; preds = %67
  %82 = load i32*, i32** %13, align 8
  %83 = call i64 @TREE_CODE(i32* %82)
  %84 = load i64, i64* @INTEGER_CST, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %153

87:                                               ; preds = %81
  %88 = load i32*, i32** %10, align 8
  %89 = call i32* @TREE_TYPE(i32* %88)
  %90 = call i32* @TYPE_DOMAIN(i32* %89)
  store i32* %90, i32** %14, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %119

93:                                               ; preds = %87
  %94 = load i32*, i32** %14, align 8
  %95 = call i32* @TYPE_MIN_VALUE(i32* %94)
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load i32*, i32** %14, align 8
  %100 = call i64 @TREE_CODE(i32* %99)
  %101 = load i64, i64* @INTEGER_CST, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %153

104:                                              ; preds = %98
  %105 = load i32*, i32** %14, align 8
  %106 = call i32* @TREE_TYPE(i32* %105)
  %107 = load i32*, i32** %11, align 8
  %108 = call i32* @fold_convert(i32* %106, i32* %107)
  store i32* %108, i32** %11, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @integer_zerop(i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %104
  %113 = load i64, i64* @MINUS_EXPR, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = call i32* @int_const_binop(i64 %113, i32* %114, i32* %115, i32 0)
  store i32* %116, i32** %11, align 8
  br label %117

117:                                              ; preds = %112, %104
  br label %118

118:                                              ; preds = %117, %93
  br label %119

119:                                              ; preds = %118, %87
  %120 = load i32*, i32** @sizetype, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i32* @fold_convert(i32* %120, i32* %121)
  store i32* %122, i32** %11, align 8
  %123 = load i64, i64* @MULT_EXPR, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = call i32* @int_const_binop(i64 %123, i32* %124, i32* %125, i32 0)
  store i32* %126, i32** %11, align 8
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %119
  %130 = load i32*, i32** %5, align 8
  %131 = call i32* @TREE_TYPE(i32* %130)
  %132 = call i64 @TYPE_UNSIGNED(i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = call i64 @tree_int_cst_lt(i32* %135, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32* null, i32** %2, align 8
  br label %203

140:                                              ; preds = %134, %129, %119
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i64, i64* @MINUS_EXPR, align 8
  br label %147

145:                                              ; preds = %140
  %146 = load i64, i64* @PLUS_EXPR, align 8
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i64 [ %144, %143 ], [ %146, %145 ]
  %149 = load i32*, i32** %11, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = call i32* @int_const_binop(i64 %148, i32* %149, i32* %150, i32 0)
  store i32* %151, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %152 = load i32*, i32** %10, align 8
  store i32* %152, i32** %4, align 8
  br label %62

153:                                              ; preds = %103, %86, %80, %62
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %153
  %157 = load i32*, i32** %5, align 8
  %158 = call i32* @TREE_TYPE(i32* %157)
  %159 = call i64 @TYPE_UNSIGNED(i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32* null, i32** %2, align 8
  br label %203

162:                                              ; preds = %156
  %163 = load i32, i32* @NEGATE_EXPR, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = call i32* @TREE_TYPE(i32* %164)
  %166 = load i32*, i32** %5, align 8
  %167 = call i32* @fold_unary(i32 %163, i32* %165, i32* %166)
  store i32* %167, i32** %5, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %162
  %171 = load i32*, i32** %5, align 8
  %172 = call i64 @TREE_CODE(i32* %171)
  %173 = load i64, i64* @INTEGER_CST, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %170, %162
  store i32* null, i32** %2, align 8
  br label %203

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %176, %153
  %178 = load i32*, i32** %6, align 8
  %179 = call i32* @TREE_TYPE(i32* %178)
  store i32* %179, i32** %7, align 8
  %180 = load i32*, i32** %4, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = call i32* @maybe_fold_offset_to_array_ref(i32* %180, i32* %181, i32* %182)
  store i32* %183, i32** %8, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %193, label %186

186:                                              ; preds = %177
  %187 = load i32*, i32** %4, align 8
  %188 = call i32* @TREE_TYPE(i32* %187)
  %189 = load i32*, i32** %4, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = call i32* @maybe_fold_offset_to_component_ref(i32* %188, i32* %189, i32* %190, i32* %191, i32 0)
  store i32* %192, i32** %8, align 8
  br label %193

193:                                              ; preds = %186, %177
  %194 = load i32*, i32** %8, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load i64, i64* @ADDR_EXPR, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = load i32*, i32** %8, align 8
  %200 = call i32* @build1(i64 %197, i32* %198, i32* %199)
  store i32* %200, i32** %8, align 8
  br label %201

201:                                              ; preds = %196, %193
  %202 = load i32*, i32** %8, align 8
  store i32* %202, i32** %2, align 8
  br label %203

203:                                              ; preds = %201, %175, %161, %139, %57, %50, %39, %29
  %204 = load i32*, i32** %2, align 8
  ret i32* %204
}

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32 @POINTER_TYPE_P(i32*) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32*) #1

declare dso_local i32* @TYPE_SIZE_UNIT(i32*) #1

declare dso_local i32* @TYPE_DOMAIN(i32*) #1

declare dso_local i32* @TYPE_MIN_VALUE(i32*) #1

declare dso_local i32* @fold_convert(i32*, i32*) #1

declare dso_local i32 @integer_zerop(i32*) #1

declare dso_local i32* @int_const_binop(i64, i32*, i32*, i32) #1

declare dso_local i64 @TYPE_UNSIGNED(i32*) #1

declare dso_local i64 @tree_int_cst_lt(i32*, i32*) #1

declare dso_local i32* @fold_unary(i32, i32*, i32*) #1

declare dso_local i32* @maybe_fold_offset_to_array_ref(i32*, i32*, i32*) #1

declare dso_local i32* @maybe_fold_offset_to_component_ref(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32* @build1(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
