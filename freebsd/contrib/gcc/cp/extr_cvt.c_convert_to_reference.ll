; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_convert_to_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_convert_to_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@unknown_type_node = common dso_local global i64 0, align 8
@LOOKUP_COMPLAIN = common dso_local global i32 0, align 4
@tf_warning_or_error = common dso_local global i32 0, align 4
@tf_none = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@CONV_IMPLICIT = common dso_local global i32 0, align 4
@LOOKUP_NO_CONVERSION = common dso_local global i32 0, align 4
@CONV_STATIC = common dso_local global i32 0, align 4
@CONV_CONST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"conversion from %qT to %qT discards qualifiers\00", align 1
@CONV_REINTERPRET = common dso_local global i32 0, align 4
@POINTER_TYPE = common dso_local global i64 0, align 8
@COMPARE_BASE = common dso_local global i32 0, align 4
@COMPARE_DERIVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"casting %qT to %qT does not dereference pointer\00", align 1
@ADDR_EXPR = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"converting\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cannot convert type %qT to type %qT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_to_reference(i64 %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @TREE_TYPE(i64 %19)
  %21 = call i64 @TYPE_MAIN_VARIANT(i64 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* @NULL_TREE, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* @NULL_TREE, align 8
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @FUNCTION_TYPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %5
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @TREE_TYPE(i64 %29)
  %31 = load i64, i64* @unknown_type_node, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @LOOKUP_COMPLAIN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @tf_warning_or_error, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @tf_none, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i64 @instantiate_type(i64 %34, i64 %35, i32 %45)
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %44, %28, %5
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @error_mark_node, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @error_mark_node, align 8
  store i64 %52, i64* %6, align 8
  br label %257

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @TREE_TYPE(i64 %54)
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i64 @TREE_CODE(i64 %56)
  %58 = load i64, i64* @REFERENCE_TYPE, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @gcc_assert(i32 %60)
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @TREE_CODE(i64 %62)
  %64 = load i64, i64* @REFERENCE_TYPE, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @gcc_assert(i32 %66)
  %68 = load i64, i64* %13, align 8
  %69 = call i64 @TYPE_MAIN_VARIANT(i64 %68)
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @can_convert(i64 %70, i64 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %108, label %75

75:                                               ; preds = %53
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @CONV_IMPLICIT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %75
  %81 = load i64, i64* %13, align 8
  %82 = call i64 @IS_AGGR_TYPE(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @LOOKUP_NO_CONVERSION, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %108, label %89

89:                                               ; preds = %84
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i64 @build_type_conversion(i64 %90, i64 %91)
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* @error_mark_node, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i64, i64* %15, align 8
  %101 = call i64 @real_lvalue_p(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i64, i64* %15, align 8
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* @NULL_TREE, align 8
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %12, align 8
  store i64 %106, i64* %13, align 8
  store i32 1, i32* %16, align 4
  br label %107

107:                                              ; preds = %103, %99, %95, %89
  br label %108

108:                                              ; preds = %107, %84, %80, %75, %53
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @CONV_STATIC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @can_convert(i64 %114, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @CONV_IMPLICIT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %165

123:                                              ; preds = %118
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %165

126:                                              ; preds = %123, %113
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @LOOKUP_COMPLAIN, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %126
  %132 = load i64, i64* %7, align 8
  %133 = call i64 @TREE_TYPE(i64 %132)
  store i64 %133, i64* %17, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i64 @lvalue_type(i64 %134)
  store i64 %135, i64* %18, align 8
  %136 = load i64, i64* %8, align 8
  %137 = call i64 @real_lvalue_p(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %131
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @warn_ref_binding(i64 %140, i64 %141, i64 %142)
  br label %144

144:                                              ; preds = %139, %131
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @CONV_CONST, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %144
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* %18, align 8
  %152 = call i32 @at_least_as_qualified_p(i64 %150, i64 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @pedwarn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %155, i64 %156)
  br label %158

158:                                              ; preds = %154, %149, %144
  br label %159

159:                                              ; preds = %158, %126
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* %8, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load i64, i64* %11, align 8
  %164 = call i64 @build_up_reference(i64 %160, i64 %161, i32 %162, i64 %163)
  store i64 %164, i64* %6, align 8
  br label %257

165:                                              ; preds = %123, %118
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @CONV_REINTERPRET, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %215

170:                                              ; preds = %165
  %171 = load i64, i64* %8, align 8
  %172 = call i64 @lvalue_p(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %215

174:                                              ; preds = %170
  %175 = load i64, i64* %13, align 8
  %176 = call i64 @TREE_CODE(i64 %175)
  %177 = load i64, i64* @POINTER_TYPE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %174
  %180 = load i64, i64* %13, align 8
  %181 = call i64 @TREE_TYPE(i64 %180)
  %182 = load i64, i64* %12, align 8
  %183 = load i32, i32* @COMPARE_BASE, align 4
  %184 = load i32, i32* @COMPARE_DERIVED, align 4
  %185 = or i32 %183, %184
  %186 = call i64 @comptypes(i64 %181, i64 %182, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %179
  %189 = load i64, i64* %13, align 8
  %190 = load i64, i64* %7, align 8
  %191 = call i32 @warning(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %189, i64 %190)
  br label %192

192:                                              ; preds = %188, %179, %174
  %193 = load i32, i32* @ADDR_EXPR, align 4
  %194 = load i64, i64* %8, align 8
  %195 = call i64 @build_unary_op(i32 %193, i64 %194, i32 0)
  store i64 %195, i64* %14, align 8
  %196 = load i64, i64* %14, align 8
  %197 = load i64, i64* @error_mark_node, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load i64, i64* %7, align 8
  %201 = call i64 @TREE_TYPE(i64 %200)
  %202 = call i32 @build_pointer_type(i64 %201)
  %203 = load i64, i64* %14, align 8
  %204 = call i64 @convert_force(i32 %202, i64 %203, i32 0)
  store i64 %204, i64* %14, align 8
  br label %205

205:                                              ; preds = %199, %192
  %206 = load i64, i64* %14, align 8
  %207 = load i64, i64* @error_mark_node, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load i32, i32* @NOP_EXPR, align 4
  %211 = load i64, i64* %7, align 8
  %212 = load i64, i64* %14, align 8
  %213 = call i64 @build1(i32 %210, i64 %211, i64 %212)
  store i64 %213, i64* %14, align 8
  br label %214

214:                                              ; preds = %209, %205
  br label %240

215:                                              ; preds = %170, %165
  %216 = load i64, i64* @NULL_TREE, align 8
  %217 = load i64, i64* %12, align 8
  %218 = load i64, i64* %8, align 8
  %219 = load i32, i32* %10, align 4
  %220 = call i64 @convert_for_initialization(i64 %216, i64 %217, i64 %218, i32 %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  store i64 %220, i64* %14, align 8
  %221 = load i64, i64* %14, align 8
  %222 = load i64, i64* @NULL_TREE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %228, label %224

224:                                              ; preds = %215
  %225 = load i64, i64* %14, align 8
  %226 = load i64, i64* @error_mark_node, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %224, %215
  %229 = load i64, i64* %14, align 8
  store i64 %229, i64* %6, align 8
  br label %257

230:                                              ; preds = %224
  %231 = load i64, i64* %7, align 8
  %232 = load i64, i64* %13, align 8
  %233 = load i64, i64* %11, align 8
  %234 = call i32 @warn_ref_binding(i64 %231, i64 %232, i64 %233)
  %235 = load i64, i64* %7, align 8
  %236 = load i64, i64* %14, align 8
  %237 = load i32, i32* %10, align 4
  %238 = load i64, i64* %11, align 8
  %239 = call i64 @build_up_reference(i64 %235, i64 %236, i32 %237, i64 %238)
  store i64 %239, i64* %14, align 8
  br label %240

240:                                              ; preds = %230, %214
  br label %241

241:                                              ; preds = %240
  %242 = load i64, i64* %14, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = load i64, i64* %14, align 8
  store i64 %245, i64* %6, align 8
  br label %257

246:                                              ; preds = %241
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* @LOOKUP_COMPLAIN, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load i64, i64* %13, align 8
  %253 = load i64, i64* %7, align 8
  %254 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %252, i64 %253)
  br label %255

255:                                              ; preds = %251, %246
  %256 = load i64, i64* @error_mark_node, align 8
  store i64 %256, i64* %6, align 8
  br label %257

257:                                              ; preds = %255, %244, %228, %159, %51
  %258 = load i64, i64* %6, align 8
  ret i64 %258
}

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @instantiate_type(i64, i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @can_convert(i64, i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @build_type_conversion(i64, i64) #1

declare dso_local i64 @real_lvalue_p(i64) #1

declare dso_local i64 @lvalue_type(i64) #1

declare dso_local i32 @warn_ref_binding(i64, i64, i64) #1

declare dso_local i32 @at_least_as_qualified_p(i64, i64) #1

declare dso_local i32 @pedwarn(i8*, i64, i64) #1

declare dso_local i64 @build_up_reference(i64, i64, i32, i64) #1

declare dso_local i64 @lvalue_p(i64) #1

declare dso_local i64 @comptypes(i64, i64, i32) #1

declare dso_local i32 @warning(i32, i8*, i64, i64) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i64 @convert_force(i32, i64, i32) #1

declare dso_local i32 @build_pointer_type(i64) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i64 @convert_for_initialization(i64, i64, i64, i32, i8*, i32, i32) #1

declare dso_local i32 @error(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
