; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-patterns.c_vect_recog_dot_prod_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-patterns.c_vect_recog_dot_prod_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODIFY_EXPR = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@WIDEN_SUM_EXPR = common dso_local global i64 0, align 8
@vect_reduction_def = common dso_local global i64 0, align 8
@vect_loop_def = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i64 0, align 8
@WIDEN_MULT_EXPR = common dso_local global i64 0, align 8
@DOT_PROD_EXPR = common dso_local global i32 0, align 4
@REPORT_DETAILS = common dso_local global i32 0, align 4
@vect_dump = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"vect_recog_dot_prod_pattern: detected: \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32**, i32**)* @vect_recog_dot_prod_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vect_recog_dot_prod_pattern(i32* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @vinfo_for_stmt(i32* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @TREE_CODE(i32* %27)
  %29 = load i64, i64* @MODIFY_EXPR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %236

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = call i32* @TREE_OPERAND(i32* %33, i32 1)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32* @TREE_TYPE(i32* %35)
  store i32* %36, i32** %15, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @TREE_CODE(i32* %37)
  %39 = load i64, i64* @PLUS_EXPR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32* null, i32** %4, align 8
  br label %236

42:                                               ; preds = %32
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @STMT_VINFO_IN_PATTERN_P(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = call i32* @STMT_VINFO_RELATED_STMT(i32 %47)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32* @TREE_OPERAND(i32* %49, i32 1)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32* @TREE_TYPE(i32* %51)
  store i32* %52, i32** %15, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @TREE_CODE(i32* %53)
  %55 = load i64, i64* @WIDEN_SUM_EXPR, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32* null, i32** %4, align 8
  br label %236

58:                                               ; preds = %46
  %59 = load i32*, i32** %9, align 8
  %60 = call i32* @TREE_OPERAND(i32* %59, i32 0)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32* @TREE_OPERAND(i32* %61, i32 1)
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32* @TREE_TYPE(i32* %63)
  store i32* %64, i32** %16, align 8
  br label %105

65:                                               ; preds = %42
  %66 = load i32, i32* %14, align 4
  %67 = call i64 @STMT_VINFO_DEF_TYPE(i32 %66)
  %68 = load i64, i64* @vect_reduction_def, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32* null, i32** %4, align 8
  br label %236

71:                                               ; preds = %65
  %72 = load i32*, i32** %9, align 8
  %73 = call i32* @TREE_OPERAND(i32* %72, i32 0)
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32* @TREE_OPERAND(i32* %74, i32 1)
  store i32* %75, i32** %11, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32* @TREE_TYPE(i32* %76)
  %78 = call i64 @TYPE_MAIN_VARIANT(i32* %77)
  %79 = load i32*, i32** %15, align 8
  %80 = call i64 @TYPE_MAIN_VARIANT(i32* %79)
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %71
  %83 = load i32*, i32** %11, align 8
  %84 = call i32* @TREE_TYPE(i32* %83)
  %85 = call i64 @TYPE_MAIN_VARIANT(i32* %84)
  %86 = load i32*, i32** %15, align 8
  %87 = call i64 @TYPE_MAIN_VARIANT(i32* %86)
  %88 = icmp ne i64 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82, %71
  store i32* null, i32** %4, align 8
  br label %236

90:                                               ; preds = %82
  %91 = load i32*, i32** %5, align 8
  store i32* %91, i32** %8, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = call i64 @widened_name_p(i32* %92, i32* %93, i32** %16, i32** %19)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32*, i32** %19, align 8
  store i32* %97, i32** %8, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32* @TREE_OPERAND(i32* %98, i32 1)
  store i32* %99, i32** %9, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i32* @TREE_OPERAND(i32* %100, i32 0)
  store i32* %101, i32** %10, align 8
  br label %104

102:                                              ; preds = %90
  %103 = load i32*, i32** %15, align 8
  store i32* %103, i32** %16, align 8
  br label %104

104:                                              ; preds = %102, %96
  br label %105

105:                                              ; preds = %104, %58
  %106 = load i32*, i32** %16, align 8
  store i32* %106, i32** %18, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = call i32* @SSA_NAME_DEF_STMT(i32* %107)
  store i32* %108, i32** %8, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = ptrtoint i32* %109 to i32
  %111 = call i32 @gcc_assert(i32 %110)
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @vinfo_for_stmt(i32* %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @gcc_assert(i32 %114)
  %116 = load i32, i32* %14, align 4
  %117 = call i64 @STMT_VINFO_DEF_TYPE(i32 %116)
  %118 = load i64, i64* @vect_loop_def, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  store i32* null, i32** %4, align 8
  br label %236

121:                                              ; preds = %105
  %122 = load i32*, i32** %8, align 8
  %123 = call i32* @TREE_OPERAND(i32* %122, i32 1)
  store i32* %123, i32** %9, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = call i64 @TREE_CODE(i32* %124)
  %126 = load i64, i64* @MULT_EXPR, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i32* null, i32** %4, align 8
  br label %236

129:                                              ; preds = %121
  %130 = load i32, i32* %14, align 4
  %131 = call i64 @STMT_VINFO_IN_PATTERN_P(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %129
  %134 = load i32, i32* %14, align 4
  %135 = call i32* @STMT_VINFO_RELATED_STMT(i32 %134)
  store i32* %135, i32** %8, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = call i32* @TREE_OPERAND(i32* %136, i32 1)
  store i32* %137, i32** %9, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = call i64 @TREE_CODE(i32* %138)
  %140 = load i64, i64* @WIDEN_MULT_EXPR, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i32* null, i32** %4, align 8
  br label %236

143:                                              ; preds = %133
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @vinfo_for_stmt(i32* %144)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @gcc_assert(i32 %146)
  %148 = load i32, i32* %14, align 4
  %149 = call i64 @STMT_VINFO_DEF_TYPE(i32 %148)
  %150 = load i64, i64* @vect_loop_def, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @gcc_assert(i32 %152)
  %154 = load i32*, i32** %9, align 8
  %155 = call i32* @TREE_OPERAND(i32* %154, i32 0)
  store i32* %155, i32** %12, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = call i32* @TREE_OPERAND(i32* %156, i32 1)
  store i32* %157, i32** %13, align 8
  br label %211

158:                                              ; preds = %129
  %159 = load i32*, i32** %9, align 8
  %160 = call i32* @TREE_OPERAND(i32* %159, i32 0)
  store i32* %160, i32** %23, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = call i32* @TREE_OPERAND(i32* %161, i32 1)
  store i32* %162, i32** %24, align 8
  %163 = load i32*, i32** %23, align 8
  %164 = call i32* @TREE_TYPE(i32* %163)
  %165 = call i64 @TYPE_MAIN_VARIANT(i32* %164)
  %166 = load i32*, i32** %18, align 8
  %167 = call i64 @TYPE_MAIN_VARIANT(i32* %166)
  %168 = icmp ne i64 %165, %167
  br i1 %168, label %176, label %169

169:                                              ; preds = %158
  %170 = load i32*, i32** %24, align 8
  %171 = call i32* @TREE_TYPE(i32* %170)
  %172 = call i64 @TYPE_MAIN_VARIANT(i32* %171)
  %173 = load i32*, i32** %18, align 8
  %174 = call i64 @TYPE_MAIN_VARIANT(i32* %173)
  %175 = icmp ne i64 %172, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %169, %158
  store i32* null, i32** %4, align 8
  br label %236

177:                                              ; preds = %169
  %178 = load i32*, i32** %23, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = call i64 @widened_name_p(i32* %178, i32* %179, i32** %20, i32** %22)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  store i32* null, i32** %4, align 8
  br label %236

183:                                              ; preds = %177
  %184 = load i32*, i32** %22, align 8
  %185 = call i32* @TREE_OPERAND(i32* %184, i32 1)
  %186 = call i32* @TREE_OPERAND(i32* %185, i32 0)
  store i32* %186, i32** %12, align 8
  %187 = load i32*, i32** %24, align 8
  %188 = load i32*, i32** %8, align 8
  %189 = call i64 @widened_name_p(i32* %187, i32* %188, i32** %21, i32** %22)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %183
  store i32* null, i32** %4, align 8
  br label %236

192:                                              ; preds = %183
  %193 = load i32*, i32** %22, align 8
  %194 = call i32* @TREE_OPERAND(i32* %193, i32 1)
  %195 = call i32* @TREE_OPERAND(i32* %194, i32 0)
  store i32* %195, i32** %13, align 8
  %196 = load i32*, i32** %20, align 8
  %197 = call i64 @TYPE_MAIN_VARIANT(i32* %196)
  %198 = load i32*, i32** %21, align 8
  %199 = call i64 @TYPE_MAIN_VARIANT(i32* %198)
  %200 = icmp ne i64 %197, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %192
  store i32* null, i32** %4, align 8
  br label %236

202:                                              ; preds = %192
  %203 = load i32*, i32** %18, align 8
  %204 = call i32 @TYPE_PRECISION(i32* %203)
  %205 = load i32*, i32** %20, align 8
  %206 = call i32 @TYPE_PRECISION(i32* %205)
  %207 = mul nsw i32 %206, 2
  %208 = icmp ne i32 %204, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  store i32* null, i32** %4, align 8
  br label %236

210:                                              ; preds = %202
  br label %211

211:                                              ; preds = %210, %143
  %212 = load i32*, i32** %12, align 8
  %213 = call i32* @TREE_TYPE(i32* %212)
  store i32* %213, i32** %16, align 8
  %214 = load i32*, i32** %16, align 8
  %215 = load i32**, i32*** %6, align 8
  store i32* %214, i32** %215, align 8
  %216 = load i32*, i32** %15, align 8
  %217 = load i32**, i32*** %7, align 8
  store i32* %216, i32** %217, align 8
  %218 = load i32, i32* @DOT_PROD_EXPR, align 4
  %219 = load i32*, i32** %15, align 8
  %220 = load i32*, i32** %12, align 8
  %221 = load i32*, i32** %13, align 8
  %222 = load i32*, i32** %11, align 8
  %223 = call i32* @build3(i32 %218, i32* %219, i32* %220, i32* %221, i32* %222)
  store i32* %223, i32** %17, align 8
  %224 = load i32, i32* @REPORT_DETAILS, align 4
  %225 = call i64 @vect_print_dump_info(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %211
  %228 = load i32, i32* @vect_dump, align 4
  %229 = call i32 @fprintf(i32 %228, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %230 = load i32, i32* @vect_dump, align 4
  %231 = load i32*, i32** %17, align 8
  %232 = load i32, i32* @TDF_SLIM, align 4
  %233 = call i32 @print_generic_expr(i32 %230, i32* %231, i32 %232)
  br label %234

234:                                              ; preds = %227, %211
  %235 = load i32*, i32** %17, align 8
  store i32* %235, i32** %4, align 8
  br label %236

236:                                              ; preds = %234, %209, %201, %191, %182, %176, %142, %128, %120, %89, %70, %57, %41, %31
  %237 = load i32*, i32** %4, align 8
  ret i32* %237
}

declare dso_local i32 @vinfo_for_stmt(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i64 @STMT_VINFO_IN_PATTERN_P(i32) #1

declare dso_local i32* @STMT_VINFO_RELATED_STMT(i32) #1

declare dso_local i64 @STMT_VINFO_DEF_TYPE(i32) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i32*) #1

declare dso_local i64 @widened_name_p(i32*, i32*, i32**, i32**) #1

declare dso_local i32* @SSA_NAME_DEF_STMT(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TYPE_PRECISION(i32*) #1

declare dso_local i32* @build3(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @vect_print_dump_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @print_generic_expr(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
