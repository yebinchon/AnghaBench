; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_range_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_range_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (...)* }

@TRUTH_ORIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_OR_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"assuming signed overflow does not occur when simplifying range test\00", align 1
@integer_zero_node = common dso_local global i64 0, align 8
@WARN_STRICT_OVERFLOW_COMPARISON = common dso_local global i32 0, align 4
@LOGICAL_OP_NON_SHORT_CIRCUIT = common dso_local global i64 0, align 8
@TRUTH_ANDIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64)* @fold_range_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_range_test(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %32 = icmp eq i32 %30, %31
  br label %33

33:                                               ; preds = %29, %4
  %34 = phi i1 [ true, %4 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %20, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @make_range(i64 %36, i32* %11, i64* %14, i64* %17, i32* %20)
  store i64 %37, i64* %21, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @make_range(i64 %38, i32* %12, i64* %15, i64* %18, i32* %20)
  store i64 %39, i64* %22, align 8
  %40 = call i8* @G_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %24, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %43, %33
  %53 = load i64, i64* %21, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %22, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %21, align 8
  %60 = load i64, i64* %22, align 8
  %61 = call i64 @operand_equal_p(i64 %59, i64 %60, i32 0)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %111

63:                                               ; preds = %58, %55, %52
  %64 = load i32, i32* %11, align 4
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %18, align 8
  %70 = call i64 @merge_ranges(i32* %13, i64* %16, i64* %19, i32 %64, i64 %65, i64 %66, i32 %67, i64 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %63
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %21, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* %21, align 8
  br label %87

78:                                               ; preds = %72
  %79 = load i64, i64* %22, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i64, i64* %22, align 8
  br label %85

83:                                               ; preds = %78
  %84 = load i64, i64* @integer_zero_node, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i64 [ %82, %81 ], [ %84, %83 ]
  br label %87

87:                                               ; preds = %85, %76
  %88 = phi i64 [ %77, %76 ], [ %86, %85 ]
  %89 = load i32, i32* %13, align 4
  %90 = load i64, i64* %16, align 8
  %91 = load i64, i64* %19, align 8
  %92 = call i64 @build_range_check(i64 %73, i64 %88, i32 %89, i64 %90, i64 %91)
  store i64 %92, i64* %23, align 8
  %93 = icmp ne i64 0, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %87
  %95 = load i32, i32* %20, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i8*, i8** %24, align 8
  %99 = load i32, i32* @WARN_STRICT_OVERFLOW_COMPARISON, align 4
  %100 = call i32 @fold_overflow_warning(i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i64, i64* %23, align 8
  %106 = call i64 @invert_truthvalue(i64 %105)
  br label %109

107:                                              ; preds = %101
  %108 = load i64, i64* %23, align 8
  br label %109

109:                                              ; preds = %107, %104
  %110 = phi i64 [ %106, %104 ], [ %108, %107 ]
  store i64 %110, i64* %5, align 8
  br label %223

111:                                              ; preds = %87, %63, %58
  %112 = load i64, i64* @LOGICAL_OP_NON_SHORT_CIRCUIT, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %221

114:                                              ; preds = %111
  %115 = load i64, i64* %21, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %221

117:                                              ; preds = %114
  %118 = load i64, i64* %22, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %221

120:                                              ; preds = %117
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %221

128:                                              ; preds = %124, %120
  %129 = load i64, i64* %21, align 8
  %130 = load i64, i64* %22, align 8
  %131 = call i64 @operand_equal_p(i64 %129, i64 %130, i32 0)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %221

133:                                              ; preds = %128
  %134 = load i64, i64* %21, align 8
  %135 = call i64 @simple_operand_p(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* @TRUTH_AND_EXPR, align 4
  br label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @TRUTH_OR_EXPR, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i64 @build2(i32 %146, i64 %147, i64 %148, i64 %149)
  store i64 %150, i64* %5, align 8
  br label %223

151:                                              ; preds = %133
  %152 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %153 = call i64 (...) %152()
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %219

155:                                              ; preds = %151
  %156 = load i64, i64* %21, align 8
  %157 = call i32 @CONTAINS_PLACEHOLDER_P(i64 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %219, label %159

159:                                              ; preds = %155
  %160 = load i64, i64* %21, align 8
  %161 = call i64 @save_expr(i64 %160)
  store i64 %161, i64* %25, align 8
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* %25, align 8
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  br label %173

171:                                              ; preds = %159
  %172 = load i32, i32* %11, align 4
  br label %173

173:                                              ; preds = %171, %166
  %174 = phi i32 [ %170, %166 ], [ %172, %171 ]
  %175 = load i64, i64* %14, align 8
  %176 = load i64, i64* %17, align 8
  %177 = call i64 @build_range_check(i64 %162, i64 %163, i32 %174, i64 %175, i64 %176)
  store i64 %177, i64* %21, align 8
  %178 = icmp ne i64 0, %177
  br i1 %178, label %179, label %218

179:                                              ; preds = %173
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* %25, align 8
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  br label %191

189:                                              ; preds = %179
  %190 = load i32, i32* %12, align 4
  br label %191

191:                                              ; preds = %189, %184
  %192 = phi i32 [ %188, %184 ], [ %190, %189 ]
  %193 = load i64, i64* %15, align 8
  %194 = load i64, i64* %18, align 8
  %195 = call i64 @build_range_check(i64 %180, i64 %181, i32 %192, i64 %193, i64 %194)
  store i64 %195, i64* %22, align 8
  %196 = icmp ne i64 0, %195
  br i1 %196, label %197, label %218

197:                                              ; preds = %191
  %198 = load i32, i32* %20, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i8*, i8** %24, align 8
  %202 = load i32, i32* @WARN_STRICT_OVERFLOW_COMPARISON, align 4
  %203 = call i32 @fold_overflow_warning(i8* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %197
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i32, i32* @TRUTH_AND_EXPR, align 4
  br label %212

210:                                              ; preds = %204
  %211 = load i32, i32* @TRUTH_OR_EXPR, align 4
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi i32 [ %209, %208 ], [ %211, %210 ]
  %214 = load i64, i64* %7, align 8
  %215 = load i64, i64* %21, align 8
  %216 = load i64, i64* %22, align 8
  %217 = call i64 @build2(i32 %213, i64 %214, i64 %215, i64 %216)
  store i64 %217, i64* %5, align 8
  br label %223

218:                                              ; preds = %191, %173
  br label %219

219:                                              ; preds = %218, %155, %151
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220, %128, %124, %117, %114, %111
  br label %222

222:                                              ; preds = %221
  store i64 0, i64* %5, align 8
  br label %223

223:                                              ; preds = %222, %212, %145, %109
  %224 = load i64, i64* %5, align 8
  ret i64 %224
}

declare dso_local i64 @make_range(i64, i32*, i64*, i64*, i32*) #1

declare dso_local i8* @G_(i8*) #1

declare dso_local i64 @operand_equal_p(i64, i64, i32) #1

declare dso_local i64 @merge_ranges(i32*, i64*, i64*, i32, i64, i64, i32, i64, i64) #1

declare dso_local i64 @build_range_check(i64, i64, i32, i64, i64) #1

declare dso_local i32 @fold_overflow_warning(i8*, i32) #1

declare dso_local i64 @invert_truthvalue(i64) #1

declare dso_local i64 @simple_operand_p(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i32 @CONTAINS_PLACEHOLDER_P(i64) #1

declare dso_local i64 @save_expr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
