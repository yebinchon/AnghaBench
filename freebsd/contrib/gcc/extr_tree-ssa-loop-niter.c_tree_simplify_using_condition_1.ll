; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_tree_simplify_using_condition_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_tree_simplify_using_condition_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_CST = common dso_local global i32 0, align 4
@TRUTH_OR_EXPR = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i64 0, align 8
@NE_EXPR = common dso_local global i64 0, align 8
@boolean_true_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @tree_simplify_using_condition_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tree_simplify_using_condition_1(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @INTEGER_CST, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %3, align 8
  br label %223

22:                                               ; preds = %2
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @COND_EXPR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %94

34:                                               ; preds = %30, %26, %22
  store i32 0, i32* %6, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @TREE_OPERAND(i64 %36, i32 0)
  %38 = call i64 @tree_simplify_using_condition_1(i64 %35, i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @TREE_OPERAND(i64 %39, i32 0)
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @TREE_OPERAND(i64 %46, i32 1)
  %48 = call i64 @tree_simplify_using_condition_1(i64 %45, i64 %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @TREE_OPERAND(i64 %49, i32 1)
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @COND_EXPR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @TREE_OPERAND(i64 %60, i32 2)
  %62 = call i64 @tree_simplify_using_condition_1(i64 %59, i64 %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @TREE_OPERAND(i64 %63, i32 2)
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %58
  br label %71

69:                                               ; preds = %54
  %70 = load i64, i64* @NULL_TREE, align 8
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %69, %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @COND_EXPR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @boolean_type_node, align 4
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @fold_build3(i32 %79, i32 %80, i64 %81, i64 %82, i64 %83)
  store i64 %84, i64* %5, align 8
  br label %91

85:                                               ; preds = %74
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @boolean_type_node, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @fold_build2(i32 %86, i32 %87, i64 %88, i64 %89)
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %85, %78
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i64, i64* %5, align 8
  store i64 %93, i64* %3, align 8
  br label %223

94:                                               ; preds = %30
  %95 = load i64, i64* %4, align 8
  %96 = call i64 @TREE_CODE(i64 %95)
  %97 = load i64, i64* @EQ_EXPR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %132

99:                                               ; preds = %94
  %100 = load i64, i64* %4, align 8
  %101 = call i64 @TREE_OPERAND(i64 %100, i32 0)
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %4, align 8
  %103 = call i64 @TREE_OPERAND(i64 %102, i32 1)
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i64 @simplify_replace_tree(i64 %104, i64 %105, i64 %106)
  store i64 %107, i64* %7, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @zero_p(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %99
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @nonzero_p(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111, %99
  %116 = load i64, i64* %7, align 8
  store i64 %116, i64* %3, align 8
  br label %223

117:                                              ; preds = %111
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i64 @simplify_replace_tree(i64 %118, i64 %119, i64 %120)
  store i64 %121, i64* %7, align 8
  %122 = load i64, i64* %7, align 8
  %123 = call i64 @zero_p(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %117
  %126 = load i64, i64* %7, align 8
  %127 = call i64 @nonzero_p(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125, %117
  %130 = load i64, i64* %7, align 8
  store i64 %130, i64* %3, align 8
  br label %223

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %94
  %133 = load i64, i64* %5, align 8
  %134 = call i64 @TREE_CODE(i64 %133)
  %135 = load i64, i64* @EQ_EXPR, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %132
  %138 = load i64, i64* %5, align 8
  %139 = call i64 @TREE_OPERAND(i64 %138, i32 0)
  store i64 %139, i64* %9, align 8
  %140 = load i64, i64* %5, align 8
  %141 = call i64 @TREE_OPERAND(i64 %140, i32 1)
  store i64 %141, i64* %10, align 8
  %142 = load i64, i64* %4, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i64 @simplify_replace_tree(i64 %142, i64 %143, i64 %144)
  store i64 %145, i64* %7, align 8
  %146 = load i64, i64* %7, align 8
  %147 = call i64 @zero_p(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = load i64, i64* %7, align 8
  store i64 %150, i64* %3, align 8
  br label %223

151:                                              ; preds = %137
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i64 @simplify_replace_tree(i64 %152, i64 %153, i64 %154)
  store i64 %155, i64* %7, align 8
  %156 = load i64, i64* %7, align 8
  %157 = call i64 @zero_p(i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = load i64, i64* %7, align 8
  store i64 %160, i64* %3, align 8
  br label %223

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161, %132
  %163 = load i64, i64* %5, align 8
  %164 = call i64 @TREE_CODE(i64 %163)
  %165 = load i64, i64* @NE_EXPR, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %192

167:                                              ; preds = %162
  %168 = load i64, i64* %5, align 8
  %169 = call i64 @TREE_OPERAND(i64 %168, i32 0)
  store i64 %169, i64* %9, align 8
  %170 = load i64, i64* %5, align 8
  %171 = call i64 @TREE_OPERAND(i64 %170, i32 1)
  store i64 %171, i64* %10, align 8
  %172 = load i64, i64* %4, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* %10, align 8
  %175 = call i64 @simplify_replace_tree(i64 %172, i64 %173, i64 %174)
  store i64 %175, i64* %7, align 8
  %176 = load i64, i64* %7, align 8
  %177 = call i64 @zero_p(i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %167
  %180 = load i64, i64* @boolean_true_node, align 8
  store i64 %180, i64* %3, align 8
  br label %223

181:                                              ; preds = %167
  %182 = load i64, i64* %4, align 8
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* %9, align 8
  %185 = call i64 @simplify_replace_tree(i64 %182, i64 %183, i64 %184)
  store i64 %185, i64* %7, align 8
  %186 = load i64, i64* %7, align 8
  %187 = call i64 @zero_p(i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = load i64, i64* @boolean_true_node, align 8
  store i64 %190, i64* %3, align 8
  br label %223

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191, %162
  %193 = load i64, i64* %5, align 8
  %194 = call i64 @expand_simple_operations(i64 %193)
  store i64 %194, i64* %8, align 8
  %195 = load i64, i64* %4, align 8
  %196 = call i64 @invert_truthvalue(i64 %195)
  store i64 %196, i64* %12, align 8
  %197 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %198 = load i32, i32* @boolean_type_node, align 4
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* %8, align 8
  %201 = call i64 @fold_binary(i32 %197, i32 %198, i64 %199, i64 %200)
  store i64 %201, i64* %7, align 8
  %202 = load i64, i64* %7, align 8
  %203 = call i64 @nonzero_p(i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %192
  %206 = load i64, i64* %7, align 8
  store i64 %206, i64* %3, align 8
  br label %223

207:                                              ; preds = %192
  %208 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %209 = load i32, i32* @boolean_type_node, align 4
  %210 = load i64, i64* %4, align 8
  %211 = load i64, i64* %8, align 8
  %212 = call i64 @fold_binary(i32 %208, i32 %209, i64 %210, i64 %211)
  store i64 %212, i64* %7, align 8
  %213 = load i64, i64* %7, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %207
  %216 = load i64, i64* %7, align 8
  %217 = call i64 @zero_p(i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i64, i64* %7, align 8
  store i64 %220, i64* %3, align 8
  br label %223

221:                                              ; preds = %215, %207
  %222 = load i64, i64* %5, align 8
  store i64 %222, i64* %3, align 8
  br label %223

223:                                              ; preds = %221, %219, %205, %189, %179, %159, %149, %129, %115, %92, %20
  %224 = load i64, i64* %3, align 8
  ret i64 %224
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @fold_build3(i32, i32, i64, i64, i64) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i64) #1

declare dso_local i64 @simplify_replace_tree(i64, i64, i64) #1

declare dso_local i64 @zero_p(i64) #1

declare dso_local i64 @nonzero_p(i64) #1

declare dso_local i64 @expand_simple_operations(i64) #1

declare dso_local i64 @invert_truthvalue(i64) #1

declare dso_local i64 @fold_binary(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
