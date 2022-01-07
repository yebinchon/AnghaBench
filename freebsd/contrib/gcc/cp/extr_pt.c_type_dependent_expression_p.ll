; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_type_dependent_expression_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_type_dependent_expression_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@USING_DECL = common dso_local global i64 0, align 8
@PSEUDO_DTOR_EXPR = common dso_local global i64 0, align 8
@SIZEOF_EXPR = common dso_local global i64 0, align 8
@ALIGNOF_EXPR = common dso_local global i64 0, align 8
@TYPEID_EXPR = common dso_local global i64 0, align 8
@DELETE_EXPR = common dso_local global i64 0, align 8
@VEC_DELETE_EXPR = common dso_local global i64 0, align 8
@THROW_EXPR = common dso_local global i64 0, align 8
@DYNAMIC_CAST_EXPR = common dso_local global i64 0, align 8
@STATIC_CAST_EXPR = common dso_local global i64 0, align 8
@CONST_CAST_EXPR = common dso_local global i64 0, align 8
@REINTERPRET_CAST_EXPR = common dso_local global i64 0, align 8
@CAST_EXPR = common dso_local global i64 0, align 8
@NEW_EXPR = common dso_local global i64 0, align 8
@VEC_NEW_EXPR = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@SCOPE_REF = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@unknown_type_node = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i64 0, align 8
@OFFSET_REF = common dso_local global i64 0, align 8
@BASELINK = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @type_dependent_expression_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @processing_template_decl, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %268

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @error_mark_node, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %268

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @IDENTIFIER_NODE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @USING_DECL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13
  store i32 1, i32* %2, align 4
  br label %268

24:                                               ; preds = %18
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @PSEUDO_DTOR_EXPR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %59, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @SIZEOF_EXPR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %59, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @TREE_CODE(i64 %35)
  %37 = load i64, i64* @ALIGNOF_EXPR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %59, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @TREE_CODE(i64 %40)
  %42 = load i64, i64* @TYPEID_EXPR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @DELETE_EXPR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @VEC_DELETE_EXPR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %3, align 8
  %56 = call i64 @TREE_CODE(i64 %55)
  %57 = load i64, i64* @THROW_EXPR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49, %44, %39, %34, %29, %24
  store i32 0, i32* %2, align 4
  br label %268

60:                                               ; preds = %54
  %61 = load i64, i64* %3, align 8
  %62 = call i64 @TREE_CODE(i64 %61)
  %63 = load i64, i64* @DYNAMIC_CAST_EXPR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %85, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %3, align 8
  %67 = call i64 @TREE_CODE(i64 %66)
  %68 = load i64, i64* @STATIC_CAST_EXPR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %85, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %3, align 8
  %72 = call i64 @TREE_CODE(i64 %71)
  %73 = load i64, i64* @CONST_CAST_EXPR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %3, align 8
  %77 = call i64 @TREE_CODE(i64 %76)
  %78 = load i64, i64* @REINTERPRET_CAST_EXPR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* %3, align 8
  %82 = call i64 @TREE_CODE(i64 %81)
  %83 = load i64, i64* @CAST_EXPR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80, %75, %70, %65, %60
  %86 = load i64, i64* %3, align 8
  %87 = call i64 @TREE_TYPE(i64 %86)
  %88 = call i32 @dependent_type_p(i64 %87)
  store i32 %88, i32* %2, align 4
  br label %268

89:                                               ; preds = %80
  %90 = load i64, i64* %3, align 8
  %91 = call i64 @TREE_CODE(i64 %90)
  %92 = load i64, i64* @NEW_EXPR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %3, align 8
  %96 = call i64 @TREE_CODE(i64 %95)
  %97 = load i64, i64* @VEC_NEW_EXPR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %94, %89
  %100 = load i64, i64* %3, align 8
  %101 = call i64 @TREE_OPERAND(i64 %100, i32 1)
  store i64 %101, i64* %4, align 8
  %102 = load i64, i64* %4, align 8
  %103 = call i64 @TREE_CODE(i64 %102)
  %104 = load i64, i64* @TREE_LIST, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %99
  %107 = load i64, i64* %4, align 8
  %108 = call i64 @TREE_PURPOSE(i64 %107)
  %109 = call i64 @TREE_VALUE(i64 %108)
  %110 = call i32 @dependent_type_p(i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load i64, i64* %4, align 8
  %114 = call i64 @TREE_VALUE(i64 %113)
  %115 = call i64 @TREE_OPERAND(i64 %114, i32 1)
  %116 = call i64 @value_dependent_expression_p(i64 %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %112, %106
  %119 = phi i1 [ true, %106 ], [ %117, %112 ]
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %2, align 4
  br label %268

121:                                              ; preds = %99
  %122 = load i64, i64* %4, align 8
  %123 = call i32 @dependent_type_p(i64 %122)
  store i32 %123, i32* %2, align 4
  br label %268

124:                                              ; preds = %94
  %125 = load i64, i64* %3, align 8
  %126 = call i64 @TREE_CODE(i64 %125)
  %127 = load i64, i64* @SCOPE_REF, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i64, i64* %3, align 8
  %131 = call i64 @dependent_scope_ref_p(i64 %130, i32 (i64)* @type_dependent_expression_p)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 1, i32* %2, align 4
  br label %268

134:                                              ; preds = %129, %124
  %135 = load i64, i64* %3, align 8
  %136 = call i64 @TREE_CODE(i64 %135)
  %137 = load i64, i64* @FUNCTION_DECL, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %134
  %140 = load i64, i64* %3, align 8
  %141 = call i64 @DECL_LANG_SPECIFIC(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load i64, i64* %3, align 8
  %145 = call i64 @DECL_TEMPLATE_INFO(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i64, i64* %3, align 8
  %149 = call i32 @DECL_TI_ARGS(i64 %148)
  %150 = call i64 @INNERMOST_TEMPLATE_ARGS(i32 %149)
  %151 = call i64 @any_dependent_template_arguments_p(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 1, i32* %2, align 4
  br label %268

154:                                              ; preds = %147, %143, %139, %134
  %155 = load i64, i64* %3, align 8
  %156 = call i64 @TREE_CODE(i64 %155)
  %157 = load i64, i64* @TEMPLATE_DECL, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i64, i64* %3, align 8
  %161 = call i32 @DECL_TEMPLATE_TEMPLATE_PARM_P(i64 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %268

164:                                              ; preds = %159, %154
  %165 = load i64, i64* %3, align 8
  %166 = call i64 @TREE_TYPE(i64 %165)
  %167 = load i64, i64* @unknown_type_node, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %258

169:                                              ; preds = %164
  %170 = load i64, i64* %3, align 8
  %171 = call i64 @TREE_CODE(i64 %170)
  %172 = load i64, i64* @ADDR_EXPR, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i64, i64* %3, align 8
  %176 = call i64 @TREE_OPERAND(i64 %175, i32 0)
  %177 = call i32 @type_dependent_expression_p(i64 %176)
  store i32 %177, i32* %2, align 4
  br label %268

178:                                              ; preds = %169
  %179 = load i64, i64* %3, align 8
  %180 = call i64 @TREE_CODE(i64 %179)
  %181 = load i64, i64* @COMPONENT_REF, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load i64, i64* %3, align 8
  %185 = call i64 @TREE_CODE(i64 %184)
  %186 = load i64, i64* @OFFSET_REF, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %183, %178
  %189 = load i64, i64* %3, align 8
  %190 = call i64 @TREE_OPERAND(i64 %189, i32 0)
  %191 = call i32 @type_dependent_expression_p(i64 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32 1, i32* %2, align 4
  br label %268

194:                                              ; preds = %188
  %195 = load i64, i64* %3, align 8
  %196 = call i64 @TREE_OPERAND(i64 %195, i32 1)
  store i64 %196, i64* %3, align 8
  %197 = load i64, i64* %3, align 8
  %198 = call i64 @TREE_CODE(i64 %197)
  %199 = load i64, i64* @IDENTIFIER_NODE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  store i32 0, i32* %2, align 4
  br label %268

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %202, %183
  %204 = load i64, i64* %3, align 8
  %205 = call i64 @TREE_CODE(i64 %204)
  %206 = load i64, i64* @SCOPE_REF, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 0, i32* %2, align 4
  br label %268

209:                                              ; preds = %203
  %210 = load i64, i64* %3, align 8
  %211 = call i64 @TREE_CODE(i64 %210)
  %212 = load i64, i64* @BASELINK, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i64, i64* %3, align 8
  %216 = call i64 @BASELINK_FUNCTIONS(i64 %215)
  store i64 %216, i64* %3, align 8
  br label %217

217:                                              ; preds = %214, %209
  %218 = load i64, i64* %3, align 8
  %219 = call i64 @TREE_CODE(i64 %218)
  %220 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %231

222:                                              ; preds = %217
  %223 = load i64, i64* %3, align 8
  %224 = call i64 @TREE_OPERAND(i64 %223, i32 1)
  %225 = call i64 @any_dependent_template_arguments_p(i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  store i32 1, i32* %2, align 4
  br label %268

228:                                              ; preds = %222
  %229 = load i64, i64* %3, align 8
  %230 = call i64 @TREE_OPERAND(i64 %229, i32 0)
  store i64 %230, i64* %3, align 8
  br label %231

231:                                              ; preds = %228, %217
  %232 = load i64, i64* %3, align 8
  %233 = call i64 @TREE_CODE(i64 %232)
  %234 = load i64, i64* @OVERLOAD, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %241, label %236

236:                                              ; preds = %231
  %237 = load i64, i64* %3, align 8
  %238 = call i64 @TREE_CODE(i64 %237)
  %239 = load i64, i64* @FUNCTION_DECL, align 8
  %240 = icmp eq i64 %238, %239
  br label %241

241:                                              ; preds = %236, %231
  %242 = phi i1 [ true, %231 ], [ %240, %236 ]
  %243 = zext i1 %242 to i32
  %244 = call i32 @gcc_assert(i32 %243)
  br label %245

245:                                              ; preds = %254, %241
  %246 = load i64, i64* %3, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %245
  %249 = load i64, i64* %3, align 8
  %250 = call i64 @OVL_CURRENT(i64 %249)
  %251 = call i32 @type_dependent_expression_p(i64 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store i32 1, i32* %2, align 4
  br label %268

254:                                              ; preds = %248
  %255 = load i64, i64* %3, align 8
  %256 = call i64 @OVL_NEXT(i64 %255)
  store i64 %256, i64* %3, align 8
  br label %245

257:                                              ; preds = %245
  store i32 0, i32* %2, align 4
  br label %268

258:                                              ; preds = %164
  %259 = load i64, i64* %3, align 8
  %260 = call i64 @TREE_CODE(i64 %259)
  %261 = load i64, i64* @TYPE_DECL, align 8
  %262 = icmp ne i64 %260, %261
  %263 = zext i1 %262 to i32
  %264 = call i32 @gcc_assert(i32 %263)
  %265 = load i64, i64* %3, align 8
  %266 = call i64 @TREE_TYPE(i64 %265)
  %267 = call i32 @dependent_type_p(i64 %266)
  store i32 %267, i32* %2, align 4
  br label %268

268:                                              ; preds = %258, %257, %253, %227, %208, %201, %193, %174, %163, %153, %133, %121, %118, %85, %59, %23, %12, %7
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @dependent_type_p(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i64 @value_dependent_expression_p(i64) #1

declare dso_local i64 @dependent_scope_ref_p(i64, i32 (i64)*) #1

declare dso_local i64 @DECL_LANG_SPECIFIC(i64) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i64 @any_dependent_template_arguments_p(i64) #1

declare dso_local i64 @INNERMOST_TEMPLATE_ARGS(i32) #1

declare dso_local i32 @DECL_TI_ARGS(i64) #1

declare dso_local i32 @DECL_TEMPLATE_TEMPLATE_PARM_P(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
