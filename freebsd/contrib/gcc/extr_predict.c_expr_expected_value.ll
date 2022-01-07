; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_expr_expected_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_expr_expected_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@PHI_NODE = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i64 0, align 8
@CALL_EXPR = common dso_local global i64 0, align 8
@BUILT_IN_NORMAL = common dso_local global i64 0, align 8
@BUILT_IN_EXPECT = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @expr_expected_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @expr_expected_value(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @TREE_CONSTANT(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** %3, align 8
  br label %218

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @TREE_CODE(i32* %25)
  %27 = load i64, i64* @SSA_NAME, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %103

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = call i32* @SSA_NAME_DEF_STMT(i32* %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @SSA_NAME_VERSION(i32* %33)
  %35 = call i64 @bitmap_bit_p(i32 %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32* null, i32** %3, align 8
  br label %218

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @SSA_NAME_VERSION(i32* %40)
  %42 = call i32 @bitmap_set_bit(i32 %39, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @TREE_CODE(i32* %43)
  %45 = load i64, i64* @PHI_NODE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %38
  store i32* null, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %82, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @PHI_NUM_ARGS(i32* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32* @PHI_ARG_DEF(i32* %54, i32 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @PHI_RESULT(i32* %58)
  %60 = icmp eq i32* %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %82

62:                                               ; preds = %53
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32* @expr_expected_value(i32* %63, i32 %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i32* null, i32** %3, align 8
  br label %218

69:                                               ; preds = %62
  %70 = load i32*, i32** %8, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %9, align 8
  store i32* %73, i32** %8, align 8
  br label %81

74:                                               ; preds = %69
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @operand_equal_p(i32* %75, i32* %76, i32 0)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store i32* null, i32** %3, align 8
  br label %218

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %72
  br label %82

82:                                               ; preds = %81, %61
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %48

85:                                               ; preds = %48
  %86 = load i32*, i32** %8, align 8
  store i32* %86, i32** %3, align 8
  br label %218

87:                                               ; preds = %38
  %88 = load i32*, i32** %6, align 8
  %89 = call i64 @TREE_CODE(i32* %88)
  %90 = load i64, i64* @MODIFY_EXPR, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %6, align 8
  %94 = call i32* @TREE_OPERAND(i32* %93, i32 0)
  %95 = load i32*, i32** %4, align 8
  %96 = icmp ne i32* %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %87
  store i32* null, i32** %3, align 8
  br label %218

98:                                               ; preds = %92
  %99 = load i32*, i32** %6, align 8
  %100 = call i32* @TREE_OPERAND(i32* %99, i32 1)
  %101 = load i32, i32* %5, align 4
  %102 = call i32* @expr_expected_value(i32* %100, i32 %101)
  store i32* %102, i32** %3, align 8
  br label %218

103:                                              ; preds = %24
  %104 = load i32*, i32** %4, align 8
  %105 = call i64 @TREE_CODE(i32* %104)
  %106 = load i64, i64* @CALL_EXPR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %103
  %109 = load i32*, i32** %4, align 8
  %110 = call i32* @get_callee_fndecl(i32* %109)
  store i32* %110, i32** %11, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i32* null, i32** %3, align 8
  br label %218

114:                                              ; preds = %108
  %115 = load i32*, i32** %11, align 8
  %116 = call i64 @DECL_BUILT_IN_CLASS(i32* %115)
  %117 = load i64, i64* @BUILT_IN_NORMAL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %151

119:                                              ; preds = %114
  %120 = load i32*, i32** %11, align 8
  %121 = call i64 @DECL_FUNCTION_CODE(i32* %120)
  %122 = load i64, i64* @BUILT_IN_EXPECT, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %119
  %125 = load i32*, i32** %4, align 8
  %126 = call i32* @TREE_OPERAND(i32* %125, i32 1)
  store i32* %126, i32** %12, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = load i32*, i32** @NULL_TREE, align 8
  %129 = icmp eq i32* %127, %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %124
  %131 = load i32*, i32** %12, align 8
  %132 = call i32* @TREE_CHAIN(i32* %131)
  %133 = load i32*, i32** @NULL_TREE, align 8
  %134 = icmp eq i32* %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %124
  store i32* null, i32** %3, align 8
  br label %218

136:                                              ; preds = %130
  %137 = load i32*, i32** %4, align 8
  %138 = call i32* @TREE_OPERAND(i32* %137, i32 1)
  %139 = call i32* @TREE_CHAIN(i32* %138)
  %140 = call i32* @TREE_VALUE(i32* %139)
  store i32* %140, i32** %13, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = call i64 @TREE_CONSTANT(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32*, i32** %13, align 8
  store i32* %145, i32** %3, align 8
  br label %218

146:                                              ; preds = %136
  %147 = load i32*, i32** %4, align 8
  %148 = call i32* @TREE_OPERAND(i32* %147, i32 1)
  %149 = call i32* @TREE_CHAIN(i32* %148)
  %150 = call i32* @TREE_VALUE(i32* %149)
  store i32* %150, i32** %3, align 8
  br label %218

151:                                              ; preds = %119, %114
  br label %152

152:                                              ; preds = %151, %103
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  %155 = load i32*, i32** %4, align 8
  %156 = call i64 @BINARY_CLASS_P(i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i32*, i32** %4, align 8
  %160 = call i64 @COMPARISON_CLASS_P(i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %192

162:                                              ; preds = %158, %154
  %163 = load i32*, i32** %4, align 8
  %164 = call i32* @TREE_OPERAND(i32* %163, i32 0)
  %165 = load i32, i32* %5, align 4
  %166 = call i32* @expr_expected_value(i32* %164, i32 %165)
  store i32* %166, i32** %14, align 8
  %167 = load i32*, i32** %14, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %162
  store i32* null, i32** %3, align 8
  br label %218

170:                                              ; preds = %162
  %171 = load i32*, i32** %4, align 8
  %172 = call i32* @TREE_OPERAND(i32* %171, i32 1)
  %173 = load i32, i32* %5, align 4
  %174 = call i32* @expr_expected_value(i32* %172, i32 %173)
  store i32* %174, i32** %15, align 8
  %175 = load i32*, i32** %15, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %170
  store i32* null, i32** %3, align 8
  br label %218

178:                                              ; preds = %170
  %179 = load i32*, i32** %4, align 8
  %180 = call i64 @TREE_CODE(i32* %179)
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 @TREE_TYPE(i32* %181)
  %183 = load i32*, i32** %14, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = call i32* @fold_build2(i64 %180, i32 %182, i32* %183, i32* %184)
  store i32* %185, i32** %16, align 8
  %186 = load i32*, i32** %16, align 8
  %187 = call i64 @TREE_CONSTANT(i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %178
  %190 = load i32*, i32** %16, align 8
  store i32* %190, i32** %3, align 8
  br label %218

191:                                              ; preds = %178
  store i32* null, i32** %3, align 8
  br label %218

192:                                              ; preds = %158
  %193 = load i32*, i32** %4, align 8
  %194 = call i64 @UNARY_CLASS_P(i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %217

196:                                              ; preds = %192
  %197 = load i32*, i32** %4, align 8
  %198 = call i32* @TREE_OPERAND(i32* %197, i32 0)
  %199 = load i32, i32* %5, align 4
  %200 = call i32* @expr_expected_value(i32* %198, i32 %199)
  store i32* %200, i32** %17, align 8
  %201 = load i32*, i32** %17, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %196
  store i32* null, i32** %3, align 8
  br label %218

204:                                              ; preds = %196
  %205 = load i32*, i32** %4, align 8
  %206 = call i64 @TREE_CODE(i32* %205)
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @TREE_TYPE(i32* %207)
  %209 = load i32*, i32** %17, align 8
  %210 = call i32* @fold_build1(i64 %206, i32 %208, i32* %209)
  store i32* %210, i32** %18, align 8
  %211 = load i32*, i32** %18, align 8
  %212 = call i64 @TREE_CONSTANT(i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %204
  %215 = load i32*, i32** %18, align 8
  store i32* %215, i32** %3, align 8
  br label %218

216:                                              ; preds = %204
  store i32* null, i32** %3, align 8
  br label %218

217:                                              ; preds = %192
  store i32* null, i32** %3, align 8
  br label %218

218:                                              ; preds = %217, %216, %214, %203, %191, %189, %177, %169, %146, %144, %135, %113, %98, %97, %85, %79, %68, %37, %22
  %219 = load i32*, i32** %3, align 8
  ret i32* %219
}

declare dso_local i64 @TREE_CONSTANT(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @SSA_NAME_DEF_STMT(i32*) #1

declare dso_local i64 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i32*) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @PHI_NUM_ARGS(i32*) #1

declare dso_local i32* @PHI_ARG_DEF(i32*, i32) #1

declare dso_local i32* @PHI_RESULT(i32*) #1

declare dso_local i32 @operand_equal_p(i32*, i32*, i32) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32* @get_callee_fndecl(i32*) #1

declare dso_local i64 @DECL_BUILT_IN_CLASS(i32*) #1

declare dso_local i64 @DECL_FUNCTION_CODE(i32*) #1

declare dso_local i32* @TREE_CHAIN(i32*) #1

declare dso_local i32* @TREE_VALUE(i32*) #1

declare dso_local i64 @BINARY_CLASS_P(i32*) #1

declare dso_local i64 @COMPARISON_CLASS_P(i32*) #1

declare dso_local i32* @fold_build2(i64, i32, i32*, i32*) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i64 @UNARY_CLASS_P(i32*) #1

declare dso_local i32* @fold_build1(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
