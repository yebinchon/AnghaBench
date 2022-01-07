; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@TFF_DECL_SPECIFIERS = common dso_local global i32 0, align 4
@cxx_pp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"vtable for \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"<return value> \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<unnamed>\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@TEMPLATE_PARM_INDEX = common dso_local global i32 0, align 4
@TFF_EXPR_IN_PARENS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"<enumerator>\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"using\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"<declaration error>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @dump_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_decl(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %354

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @TREE_CODE(i64 %11)
  switch i32 %12, label %347 [
    i32 133, label %13
    i32 128, label %58
    i32 147, label %79
    i32 140, label %79
    i32 138, label %85
    i32 143, label %93
    i32 137, label %121
    i32 153, label %125
    i32 139, label %136
    i32 130, label %136
    i32 149, label %136
    i32 151, label %140
    i32 132, label %147
    i32 145, label %149
    i32 141, label %165
    i32 146, label %200
    i32 136, label %224
    i32 135, label %228
    i32 144, label %254
    i32 150, label %259
    i32 129, label %309
    i32 152, label %321
    i32 142, label %325
    i32 134, label %329
    i32 131, label %343
    i32 148, label %351
  ]

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @DECL_ARTIFICIAL(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @TREE_TYPE(i64 %23)
  %25 = call i32 @TREE_CODE(i64 %24)
  %26 = icmp eq i32 %25, 134
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @cxx_pp, align 4
  %29 = call i32 @pp_cxx_identifier(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22, %17
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @TREE_TYPE(i64 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dump_type(i64 %32, i32 %33)
  br label %354

35:                                               ; preds = %13
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @cxx_pp, align 4
  %42 = call i32 @pp_cxx_identifier(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @DECL_ORIGINAL_TYPE(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @DECL_ORIGINAL_TYPE(i64 %49)
  br label %54

51:                                               ; preds = %43
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i64 [ %50, %48 ], [ %53, %51 ]
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @dump_simple_decl(i64 %44, i64 %55, i32 %56)
  br label %354

58:                                               ; preds = %10
  %59 = load i64, i64* %3, align 8
  %60 = call i64 @DECL_NAME(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i64, i64* %3, align 8
  %64 = call i64 @DECL_NAME(i64 %63)
  %65 = call i32 @VTABLE_NAME_P(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i32, i32* @cxx_pp, align 4
  %69 = call i32 @pp_string(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i64, i64* %3, align 8
  %71 = call i64 @DECL_CONTEXT(i64 %70)
  %72 = call i32 @TYPE_P(i64 %71)
  %73 = call i32 @gcc_assert(i32 %72)
  %74 = load i64, i64* %3, align 8
  %75 = call i64 @DECL_CONTEXT(i64 %74)
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @dump_type(i64 %75, i32 %76)
  br label %354

78:                                               ; preds = %62, %58
  br label %79

79:                                               ; preds = %10, %10, %78
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = call i64 @TREE_TYPE(i64 %81)
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @dump_simple_decl(i64 %80, i64 %82, i32 %83)
  br label %354

85:                                               ; preds = %10
  %86 = load i32, i32* @cxx_pp, align 4
  %87 = call i32 @pp_string(i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* %3, align 8
  %90 = call i64 @TREE_TYPE(i64 %89)
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @dump_simple_decl(i64 %88, i64 %90, i32 %91)
  br label %354

93:                                               ; preds = %10
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @cxx_pp, align 4
  %100 = load i64, i64* %3, align 8
  %101 = call i32 @pp_cxx_declaration(i32 %99, i64 %100)
  br label %120

102:                                              ; preds = %93
  %103 = load i64, i64* %3, align 8
  %104 = call i32 @CP_DECL_CONTEXT(i64 %103)
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @dump_scope(i32 %104, i32 %105)
  %107 = load i64, i64* %3, align 8
  %108 = call i64 @DECL_NAME(i64 %107)
  %109 = load i64, i64* @NULL_TREE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* @cxx_pp, align 4
  %113 = call i32 @pp_identifier(i32 %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %119

114:                                              ; preds = %102
  %115 = load i32, i32* @cxx_pp, align 4
  %116 = load i64, i64* %3, align 8
  %117 = call i64 @DECL_NAME(i64 %116)
  %118 = call i32 @pp_cxx_tree_identifier(i32 %115, i64 %117)
  br label %119

119:                                              ; preds = %114, %111
  br label %120

120:                                              ; preds = %119, %98
  br label %354

121:                                              ; preds = %10
  %122 = load i32, i32* @cxx_pp, align 4
  %123 = load i64, i64* %3, align 8
  %124 = call i32 @pp_expression(i32 %122, i64 %123)
  br label %354

125:                                              ; preds = %10
  %126 = load i64, i64* %3, align 8
  %127 = call i64 @TREE_OPERAND(i64 %126, i32 0)
  %128 = load i32, i32* %4, align 4
  call void @dump_decl(i64 %127, i32 %128)
  %129 = load i32, i32* @cxx_pp, align 4
  %130 = call i32 @pp_cxx_left_bracket(i32 %129)
  %131 = load i64, i64* %3, align 8
  %132 = call i64 @TREE_OPERAND(i64 %131, i32 1)
  %133 = load i32, i32* %4, align 4
  call void @dump_decl(i64 %132, i32 %133)
  %134 = load i32, i32* @cxx_pp, align 4
  %135 = call i32 @pp_cxx_right_bracket(i32 %134)
  br label %354

136:                                              ; preds = %10, %10, %10
  %137 = load i64, i64* %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @dump_type(i64 %137, i32 %138)
  br label %354

140:                                              ; preds = %10
  %141 = load i32, i32* @cxx_pp, align 4
  %142 = call i32 @pp_cxx_complement(i32 %141)
  %143 = load i64, i64* %3, align 8
  %144 = call i64 @TREE_OPERAND(i64 %143, i32 0)
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @dump_type(i64 %144, i32 %145)
  br label %354

147:                                              ; preds = %10
  %148 = call i32 (...) @gcc_unreachable()
  br label %354

149:                                              ; preds = %10
  %150 = load i64, i64* %3, align 8
  %151 = call i32 @IDENTIFIER_TYPENAME_P(i64 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i32, i32* @cxx_pp, align 4
  %155 = call i32 @pp_cxx_identifier(i32 %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i64, i64* %3, align 8
  %157 = call i64 @TREE_TYPE(i64 %156)
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @dump_type(i64 %157, i32 %158)
  br label %354

160:                                              ; preds = %149
  %161 = load i32, i32* @cxx_pp, align 4
  %162 = load i64, i64* %3, align 8
  %163 = call i32 @pp_cxx_tree_identifier(i32 %161, i64 %162)
  br label %164

164:                                              ; preds = %160
  br label %354

165:                                              ; preds = %10
  %166 = load i64, i64* %3, align 8
  %167 = call i32 @OVL_CHAIN(i64 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %197

169:                                              ; preds = %165
  %170 = load i64, i64* %3, align 8
  %171 = call i64 @OVL_CURRENT(i64 %170)
  store i64 %171, i64* %3, align 8
  %172 = load i64, i64* %3, align 8
  %173 = call i32 @DECL_CLASS_SCOPE_P(i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = load i64, i64* %3, align 8
  %177 = call i64 @DECL_CONTEXT(i64 %176)
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @dump_type(i64 %177, i32 %178)
  %180 = load i32, i32* @cxx_pp, align 4
  %181 = call i32 @pp_cxx_colon_colon(i32 %180)
  br label %193

182:                                              ; preds = %169
  %183 = load i64, i64* %3, align 8
  %184 = call i64 @DECL_CONTEXT(i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i64, i64* %3, align 8
  %188 = call i64 @DECL_CONTEXT(i64 %187)
  %189 = load i32, i32* %4, align 4
  call void @dump_decl(i64 %188, i32 %189)
  %190 = load i32, i32* @cxx_pp, align 4
  %191 = call i32 @pp_cxx_colon_colon(i32 %190)
  br label %192

192:                                              ; preds = %186, %182
  br label %193

193:                                              ; preds = %192, %175
  %194 = load i64, i64* %3, align 8
  %195 = call i64 @DECL_NAME(i64 %194)
  %196 = load i32, i32* %4, align 4
  call void @dump_decl(i64 %195, i32 %196)
  br label %354

197:                                              ; preds = %165
  %198 = load i64, i64* %3, align 8
  %199 = call i64 @OVL_CURRENT(i64 %198)
  store i64 %199, i64* %3, align 8
  br label %200

200:                                              ; preds = %10, %197
  %201 = load i64, i64* %3, align 8
  %202 = call i32 @DECL_LANG_SPECIFIC(i64 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* @cxx_pp, align 4
  %206 = call i32 @pp_identifier(i32 %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %223

207:                                              ; preds = %200
  %208 = load i64, i64* %3, align 8
  %209 = call i32 @DECL_GLOBAL_CTOR_P(i64 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = load i64, i64* %3, align 8
  %213 = call i32 @DECL_GLOBAL_DTOR_P(i64 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211, %207
  %216 = load i64, i64* %3, align 8
  %217 = call i32 @dump_global_iord(i64 %216)
  br label %222

218:                                              ; preds = %211
  %219 = load i64, i64* %3, align 8
  %220 = load i32, i32* %4, align 4
  %221 = call i32 @dump_function_decl(i64 %219, i32 %220)
  br label %222

222:                                              ; preds = %218, %215
  br label %223

223:                                              ; preds = %222, %204
  br label %354

224:                                              ; preds = %10
  %225 = load i64, i64* %3, align 8
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @dump_template_decl(i64 %225, i32 %226)
  br label %354

228:                                              ; preds = %10
  %229 = load i64, i64* %3, align 8
  %230 = call i64 @TREE_OPERAND(i64 %229, i32 0)
  store i64 %230, i64* %5, align 8
  %231 = load i64, i64* %5, align 8
  %232 = call i32 @is_overloaded_fn(i64 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %228
  %235 = load i64, i64* %5, align 8
  %236 = call i64 @get_first_fn(i64 %235)
  %237 = call i64 @DECL_NAME(i64 %236)
  store i64 %237, i64* %5, align 8
  br label %238

238:                                              ; preds = %234, %228
  %239 = load i64, i64* %5, align 8
  %240 = load i32, i32* %4, align 4
  call void @dump_decl(i64 %239, i32 %240)
  %241 = load i32, i32* @cxx_pp, align 4
  %242 = call i32 @pp_cxx_begin_template_argument_list(i32 %241)
  %243 = load i64, i64* %3, align 8
  %244 = call i64 @TREE_OPERAND(i64 %243, i32 1)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %238
  %247 = load i64, i64* %3, align 8
  %248 = call i64 @TREE_OPERAND(i64 %247, i32 1)
  %249 = load i32, i32* %4, align 4
  %250 = call i32 @dump_template_argument_list(i64 %248, i32 %249)
  br label %251

251:                                              ; preds = %246, %238
  %252 = load i32, i32* @cxx_pp, align 4
  %253 = call i32 @pp_cxx_end_template_argument_list(i32 %252)
  br label %354

254:                                              ; preds = %10
  %255 = load i32, i32* @cxx_pp, align 4
  %256 = load i64, i64* %3, align 8
  %257 = call i64 @DECL_NAME(i64 %256)
  %258 = call i32 @pp_cxx_tree_identifier(i32 %255, i64 %257)
  br label %354

259:                                              ; preds = %10
  %260 = load i64, i64* %3, align 8
  %261 = call i64 @TREE_TYPE(i64 %260)
  %262 = load i64, i64* @NULL_TREE, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load i64, i64* %3, align 8
  %266 = call i32 @NEXT_CODE(i64 %265)
  %267 = icmp eq i32 %266, 149
  br i1 %267, label %278, label %268

268:                                              ; preds = %264, %259
  %269 = load i64, i64* %3, align 8
  %270 = call i64 @DECL_INITIAL(i64 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %284

272:                                              ; preds = %268
  %273 = load i64, i64* %3, align 8
  %274 = call i64 @DECL_INITIAL(i64 %273)
  %275 = call i32 @TREE_CODE(i64 %274)
  %276 = load i32, i32* @TEMPLATE_PARM_INDEX, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %272, %264
  %279 = load i64, i64* %3, align 8
  %280 = load i64, i64* %3, align 8
  %281 = call i64 @TREE_TYPE(i64 %280)
  %282 = load i32, i32* %4, align 4
  %283 = call i32 @dump_simple_decl(i64 %279, i64 %281, i32 %282)
  br label %308

284:                                              ; preds = %272, %268
  %285 = load i64, i64* %3, align 8
  %286 = call i64 @DECL_NAME(i64 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load i64, i64* %3, align 8
  %290 = call i64 @DECL_NAME(i64 %289)
  %291 = load i32, i32* %4, align 4
  call void @dump_decl(i64 %290, i32 %291)
  br label %307

292:                                              ; preds = %284
  %293 = load i64, i64* %3, align 8
  %294 = call i64 @DECL_INITIAL(i64 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %292
  %297 = load i64, i64* %3, align 8
  %298 = call i64 @DECL_INITIAL(i64 %297)
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @TFF_EXPR_IN_PARENS, align 4
  %301 = or i32 %299, %300
  %302 = call i32 @dump_expr(i64 %298, i32 %301)
  br label %306

303:                                              ; preds = %292
  %304 = load i32, i32* @cxx_pp, align 4
  %305 = call i32 @pp_identifier(i32 %304, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %306

306:                                              ; preds = %303, %296
  br label %307

307:                                              ; preds = %306, %288
  br label %308

308:                                              ; preds = %307, %278
  br label %354

309:                                              ; preds = %10
  %310 = load i32, i32* @cxx_pp, align 4
  %311 = call i32 @pp_cxx_identifier(i32 %310, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %312 = load i64, i64* %3, align 8
  %313 = call i64 @USING_DECL_SCOPE(i64 %312)
  %314 = load i32, i32* %4, align 4
  %315 = call i32 @dump_type(i64 %313, i32 %314)
  %316 = load i32, i32* @cxx_pp, align 4
  %317 = call i32 @pp_cxx_colon_colon(i32 %316)
  %318 = load i64, i64* %3, align 8
  %319 = call i64 @DECL_NAME(i64 %318)
  %320 = load i32, i32* %4, align 4
  call void @dump_decl(i64 %319, i32 %320)
  br label %354

321:                                              ; preds = %10
  %322 = load i64, i64* %3, align 8
  %323 = call i64 @BASELINK_FUNCTIONS(i64 %322)
  %324 = load i32, i32* %4, align 4
  call void @dump_decl(i64 %323, i32 %324)
  br label %354

325:                                              ; preds = %10
  %326 = load i64, i64* %3, align 8
  %327 = load i32, i32* %4, align 4
  %328 = call i32 @dump_expr(i64 %326, i32 %327)
  br label %354

329:                                              ; preds = %10
  %330 = load i32, i32* %4, align 4
  %331 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %329
  %335 = load i32, i32* @cxx_pp, align 4
  %336 = load i64, i64* %3, align 8
  %337 = call i32 @pp_cxx_declaration(i32 %335, i64 %336)
  br label %342

338:                                              ; preds = %329
  %339 = load i32, i32* @cxx_pp, align 4
  %340 = load i64, i64* %3, align 8
  %341 = call i32 @pp_type_id(i32 %339, i64 %340)
  br label %342

342:                                              ; preds = %338, %334
  br label %354

343:                                              ; preds = %10
  %344 = load i64, i64* %3, align 8
  %345 = load i32, i32* %4, align 4
  %346 = call i32 @dump_type(i64 %344, i32 %345)
  br label %354

347:                                              ; preds = %10
  %348 = load i32, i32* @cxx_pp, align 4
  %349 = load i64, i64* %3, align 8
  %350 = call i32 @pp_unsupported_tree(i32 %348, i64 %349)
  br label %351

351:                                              ; preds = %10, %347
  %352 = load i32, i32* @cxx_pp, align 4
  %353 = call i32 @pp_identifier(i32 %352, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %354

354:                                              ; preds = %9, %351, %343, %342, %325, %321, %309, %308, %254, %251, %224, %223, %193, %164, %153, %147, %140, %136, %125, %121, %120, %85, %79, %67, %54, %30
  ret void
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @pp_cxx_identifier(i32, i8*) #1

declare dso_local i32 @dump_type(i64, i32) #1

declare dso_local i32 @dump_simple_decl(i64, i64, i32) #1

declare dso_local i64 @DECL_ORIGINAL_TYPE(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i32 @VTABLE_NAME_P(i64) #1

declare dso_local i32 @pp_string(i32, i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TYPE_P(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i32 @pp_cxx_declaration(i32, i64) #1

declare dso_local i32 @dump_scope(i32, i32) #1

declare dso_local i32 @CP_DECL_CONTEXT(i64) #1

declare dso_local i32 @pp_identifier(i32, i8*) #1

declare dso_local i32 @pp_cxx_tree_identifier(i32, i64) #1

declare dso_local i32 @pp_expression(i32, i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @pp_cxx_left_bracket(i32) #1

declare dso_local i32 @pp_cxx_right_bracket(i32) #1

declare dso_local i32 @pp_cxx_complement(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @IDENTIFIER_TYPENAME_P(i64) #1

declare dso_local i32 @OVL_CHAIN(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i32 @DECL_CLASS_SCOPE_P(i64) #1

declare dso_local i32 @pp_cxx_colon_colon(i32) #1

declare dso_local i32 @DECL_LANG_SPECIFIC(i64) #1

declare dso_local i32 @DECL_GLOBAL_CTOR_P(i64) #1

declare dso_local i32 @DECL_GLOBAL_DTOR_P(i64) #1

declare dso_local i32 @dump_global_iord(i64) #1

declare dso_local i32 @dump_function_decl(i64, i32) #1

declare dso_local i32 @dump_template_decl(i64, i32) #1

declare dso_local i32 @is_overloaded_fn(i64) #1

declare dso_local i64 @get_first_fn(i64) #1

declare dso_local i32 @pp_cxx_begin_template_argument_list(i32) #1

declare dso_local i32 @dump_template_argument_list(i64, i32) #1

declare dso_local i32 @pp_cxx_end_template_argument_list(i32) #1

declare dso_local i32 @NEXT_CODE(i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i32 @dump_expr(i64, i32) #1

declare dso_local i64 @USING_DECL_SCOPE(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i32 @pp_type_id(i32, i64) #1

declare dso_local i32 @pp_unsupported_tree(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
