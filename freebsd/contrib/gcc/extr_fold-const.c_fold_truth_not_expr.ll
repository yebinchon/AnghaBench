; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_truth_not_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_truth_not_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcc_comparison = common dso_local global i64 0, align 8
@flag_trapping_math = common dso_local global i64 0, align 8
@ORDERED_EXPR = common dso_local global i32 0, align 4
@UNORDERED_EXPR = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i32 0, align 4
@BOOLEAN_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fold_truth_not_expr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_TYPE(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TREE_CODE(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @TREE_CODE_CLASS(i32 %13)
  %15 = load i64, i64* @tcc_comparison, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @TREE_OPERAND(i32 %18, i32 0)
  %20 = call i32 @TREE_TYPE(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @FLOAT_TYPE_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load i64, i64* @flag_trapping_math, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ORDERED_EXPR, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @UNORDERED_EXPR, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @NE_EXPR, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @EQ_EXPR, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @NULL_TREE, align 4
  store i32 %44, i32* %2, align 4
  br label %219

45:                                               ; preds = %39, %35, %31, %27, %24, %17
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @TYPE_MODE(i32 %47)
  %49 = call i32 @HONOR_NANS(i32 %48)
  %50 = call i32 @invert_tree_comparison(i32 %46, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ERROR_MARK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @NULL_TREE, align 4
  store i32 %55, i32* %2, align 4
  br label %219

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @TREE_OPERAND(i32 %59, i32 0)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @TREE_OPERAND(i32 %61, i32 1)
  %63 = call i32 @build2(i32 %57, i32 %58, i32 %60, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %219

64:                                               ; preds = %1
  %65 = load i32, i32* %5, align 4
  switch i32 %65, label %216 [
    i32 137, label %66
    i32 132, label %71
    i32 129, label %80
    i32 128, label %89
    i32 133, label %110
    i32 130, label %119
    i32 131, label %128
    i32 140, label %131
    i32 141, label %162
    i32 136, label %170
    i32 135, label %174
    i32 139, label %185
    i32 138, label %185
    i32 143, label %193
    i32 134, label %206
    i32 142, label %210
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @integer_zerop(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @constant_boolean_node(i32 %68, i32 %69)
  store i32 %70, i32* %2, align 4
  br label %219

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @TREE_OPERAND(i32 %73, i32 0)
  %75 = call i32 @invert_truthvalue(i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @TREE_OPERAND(i32 %76, i32 1)
  %78 = call i32 @invert_truthvalue(i32 %77)
  %79 = call i32 @build2(i32 129, i32 %72, i32 %75, i32 %78)
  store i32 %79, i32* %2, align 4
  br label %219

80:                                               ; preds = %64
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @TREE_OPERAND(i32 %82, i32 0)
  %84 = call i32 @invert_truthvalue(i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @TREE_OPERAND(i32 %85, i32 1)
  %87 = call i32 @invert_truthvalue(i32 %86)
  %88 = call i32 @build2(i32 132, i32 %81, i32 %84, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %219

89:                                               ; preds = %64
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @TREE_OPERAND(i32 %90, i32 1)
  %92 = call i32 @TREE_CODE(i32 %91)
  %93 = icmp eq i32 %92, 131
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @TREE_OPERAND(i32 %96, i32 0)
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @TREE_OPERAND(i32 %98, i32 1)
  %100 = call i32 @TREE_OPERAND(i32 %99, i32 0)
  %101 = call i32 @build2(i32 128, i32 %95, i32 %97, i32 %100)
  store i32 %101, i32* %2, align 4
  br label %219

102:                                              ; preds = %89
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @TREE_OPERAND(i32 %104, i32 0)
  %106 = call i32 @invert_truthvalue(i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @TREE_OPERAND(i32 %107, i32 1)
  %109 = call i32 @build2(i32 128, i32 %103, i32 %106, i32 %108)
  store i32 %109, i32* %2, align 4
  br label %219

110:                                              ; preds = %64
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @TREE_OPERAND(i32 %112, i32 0)
  %114 = call i32 @invert_truthvalue(i32 %113)
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @TREE_OPERAND(i32 %115, i32 1)
  %117 = call i32 @invert_truthvalue(i32 %116)
  %118 = call i32 @build2(i32 130, i32 %111, i32 %114, i32 %117)
  store i32 %118, i32* %2, align 4
  br label %219

119:                                              ; preds = %64
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @TREE_OPERAND(i32 %121, i32 0)
  %123 = call i32 @invert_truthvalue(i32 %122)
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @TREE_OPERAND(i32 %124, i32 1)
  %126 = call i32 @invert_truthvalue(i32 %125)
  %127 = call i32 @build2(i32 133, i32 %120, i32 %123, i32 %126)
  store i32 %127, i32* %2, align 4
  br label %219

128:                                              ; preds = %64
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @TREE_OPERAND(i32 %129, i32 0)
  store i32 %130, i32* %2, align 4
  br label %219

131:                                              ; preds = %64
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @TREE_OPERAND(i32 %132, i32 1)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @TREE_OPERAND(i32 %134, i32 2)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @TREE_OPERAND(i32 %137, i32 0)
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @TREE_TYPE(i32 %139)
  %141 = call i32 @VOID_TYPE_P(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %131
  %144 = load i32, i32* %7, align 4
  br label %148

145:                                              ; preds = %131
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @invert_truthvalue(i32 %146)
  br label %148

148:                                              ; preds = %145, %143
  %149 = phi i32 [ %144, %143 ], [ %147, %145 ]
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @TREE_TYPE(i32 %150)
  %152 = call i32 @VOID_TYPE_P(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* %8, align 4
  br label %159

156:                                              ; preds = %148
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @invert_truthvalue(i32 %157)
  br label %159

159:                                              ; preds = %156, %154
  %160 = phi i32 [ %155, %154 ], [ %158, %156 ]
  %161 = call i32 @build3(i32 140, i32 %136, i32 %138, i32 %149, i32 %160)
  store i32 %161, i32* %2, align 4
  br label %219

162:                                              ; preds = %64
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @TREE_OPERAND(i32 %164, i32 0)
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @TREE_OPERAND(i32 %166, i32 1)
  %168 = call i32 @invert_truthvalue(i32 %167)
  %169 = call i32 @build2(i32 141, i32 %163, i32 %165, i32 %168)
  store i32 %169, i32* %2, align 4
  br label %219

170:                                              ; preds = %64
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @TREE_OPERAND(i32 %171, i32 0)
  %173 = call i32 @invert_truthvalue(i32 %172)
  store i32 %173, i32* %2, align 4
  br label %219

174:                                              ; preds = %64
  %175 = load i32, i32* %3, align 4
  %176 = call i32 @TREE_TYPE(i32 %175)
  %177 = call i32 @TREE_CODE(i32 %176)
  %178 = load i32, i32* @BOOLEAN_TYPE, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @build1(i32 131, i32 %181, i32 %182)
  store i32 %183, i32* %2, align 4
  br label %219

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %64, %64, %184
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @TREE_CODE(i32 %186)
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @TREE_OPERAND(i32 %189, i32 0)
  %191 = call i32 @invert_truthvalue(i32 %190)
  %192 = call i32 @build1(i32 %187, i32 %188, i32 %191)
  store i32 %192, i32* %2, align 4
  br label %219

193:                                              ; preds = %64
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @TREE_OPERAND(i32 %194, i32 1)
  %196 = call i32 @integer_onep(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %193
  br label %217

199:                                              ; preds = %193
  %200 = load i32, i32* @EQ_EXPR, align 4
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* %3, align 4
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @build_int_cst(i32 %203, i32 0)
  %205 = call i32 @build2(i32 %200, i32 %201, i32 %202, i32 %204)
  store i32 %205, i32* %2, align 4
  br label %219

206:                                              ; preds = %64
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* %3, align 4
  %209 = call i32 @build1(i32 131, i32 %207, i32 %208)
  store i32 %209, i32* %2, align 4
  br label %219

210:                                              ; preds = %64
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @TREE_OPERAND(i32 %212, i32 0)
  %214 = call i32 @invert_truthvalue(i32 %213)
  %215 = call i32 @build1(i32 142, i32 %211, i32 %214)
  store i32 %215, i32* %2, align 4
  br label %219

216:                                              ; preds = %64
  br label %217

217:                                              ; preds = %216, %198
  %218 = load i32, i32* @NULL_TREE, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %217, %210, %206, %199, %185, %180, %170, %162, %159, %128, %119, %110, %102, %94, %80, %71, %66, %56, %54, %43
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @FLOAT_TYPE_P(i32) #1

declare dso_local i32 @invert_tree_comparison(i32, i32) #1

declare dso_local i32 @HONOR_NANS(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @constant_boolean_node(i32, i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @invert_truthvalue(i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @VOID_TYPE_P(i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @integer_onep(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
