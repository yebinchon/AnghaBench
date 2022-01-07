; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i8* }
%struct.TYPE_5__ = type { i64, i8* }

@NOP_EXPR = common dso_local global i64 0, align 8
@NON_LVALUE_EXPR = common dso_local global i64 0, align 8
@BASELINK = common dso_local global i32 0, align 4
@PTRMEM_CST = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@TEMPLATE_TYPE_PARM = common dso_local global i32 0, align 4
@TEMPLATE_TEMPLATE_PARM = common dso_local global i32 0, align 4
@BOUND_TEMPLATE_TEMPLATE_PARM = common dso_local global i32 0, align 4
@TEMPLATE_PARM_INDEX = common dso_local global i32 0, align 4
@tcc_constant = common dso_local global i64 0, align 8
@CONST_DECL = common dso_local global i32 0, align 4
@G = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SIZEOF_EXPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@LAST_CPLUS_TREE_CODE = common dso_local global i32 0, align 4
@operator_name_info = common dso_local global %struct.TYPE_4__* null, align 8
@assignment_operator_name_info = common dso_local global %struct.TYPE_5__* null, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"call_expr cannot be mangled due to a defect in the C++ ABI\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"zero-operand casts cannot be mangled due to a defect in the C++ ABI\00", align 1
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"omitted middle operand to %<?:%> operand cannot be mangled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @write_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_expression(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @NOP_EXPR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ true, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = load i64, i64* %2, align 8
  %30 = call i64 @TREE_OPERAND(i64 %29, i32 0)
  store i64 %30, i64* %2, align 8
  %31 = load i64, i64* %2, align 8
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %16

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @BASELINK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* %2, align 8
  %40 = call i64 @BASELINK_FUNCTIONS(i64 %39)
  store i64 %40, i64* %2, align 8
  %41 = load i64, i64* %2, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @PTRMEM_CST, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i64, i64* @ADDR_EXPR, align 8
  %50 = load i64, i64* @NULL_TREE, align 8
  %51 = load i64, i64* %2, align 8
  %52 = call i32 @PTRMEM_CST_CLASS(i64 %51)
  %53 = load i64, i64* %2, align 8
  %54 = call i32 @PTRMEM_CST_MEMBER(i64 %53)
  %55 = call i32 @build_qualified_name(i64 %50, i32 %52, i32 %54, i32 0)
  %56 = call i64 @build_nt(i64 %49, i32 %55)
  store i64 %56, i64* %2, align 8
  %57 = load i64, i64* %2, align 8
  %58 = call i64 @TREE_CODE(i64 %57)
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %48, %44
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @TEMPLATE_TYPE_PARM, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @TEMPLATE_TEMPLATE_PARM, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @BOUND_TEMPLATE_TEMPLATE_PARM, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @TEMPLATE_PARM_INDEX, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %68, %64, %60
  %77 = load i64, i64* %2, align 8
  %78 = call i32 @write_template_param(i64 %77)
  br label %376

79:                                               ; preds = %72
  %80 = load i32, i32* %3, align 4
  %81 = call i64 @TREE_CODE_CLASS(i32 %80)
  %82 = load i64, i64* @tcc_constant, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = call i64 @abi_version_at_least(i32 2)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @CONST_DECL, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87, %79
  %92 = load i64, i64* %2, align 8
  %93 = call i32 @write_template_arg_literal(i64 %92)
  br label %375

94:                                               ; preds = %87, %84
  %95 = load i64, i64* %2, align 8
  %96 = call i64 @DECL_P(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @CONST_DECL, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @G, i32 0, i32 0), align 4
  br label %103

103:                                              ; preds = %102, %98
  %104 = call i32 @write_char(i8 signext 76)
  %105 = load i64, i64* %2, align 8
  %106 = call i32 @write_mangled_name(i64 %105, i32 0)
  %107 = call i32 @write_char(i8 signext 69)
  br label %374

108:                                              ; preds = %94
  %109 = load i64, i64* %2, align 8
  %110 = call i64 @TREE_CODE(i64 %109)
  %111 = load i64, i64* @SIZEOF_EXPR, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i64, i64* %2, align 8
  %115 = call i64 @TREE_OPERAND(i64 %114, i32 0)
  %116 = call i64 @TYPE_P(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = call i32 @write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %120 = load i64, i64* %2, align 8
  %121 = call i64 @TREE_OPERAND(i64 %120, i32 0)
  %122 = call i32 @write_type(i64 %121)
  br label %373

123:                                              ; preds = %113, %108
  %124 = call i64 @abi_version_at_least(i32 2)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %244

126:                                              ; preds = %123
  %127 = load i64, i64* %2, align 8
  %128 = call i64 @TREE_CODE(i64 %127)
  %129 = icmp eq i64 %128, 129
  br i1 %129, label %130, label %244

130:                                              ; preds = %126
  %131 = load i64, i64* %2, align 8
  %132 = call i64 @TREE_OPERAND(i64 %131, i32 0)
  store i64 %132, i64* %4, align 8
  %133 = load i64, i64* %2, align 8
  %134 = call i64 @TREE_OPERAND(i64 %133, i32 1)
  store i64 %134, i64* %5, align 8
  %135 = load i64, i64* %5, align 8
  %136 = call i64 @DECL_P(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i64, i64* %5, align 8
  call void @write_expression(i64 %139)
  br label %243

140:                                              ; preds = %130
  %141 = call i32 @write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %142 = load i64, i64* %4, align 8
  %143 = call i32 @write_type(i64 %142)
  %144 = load i64, i64* %5, align 8
  %145 = call i64 @TREE_CODE(i64 %144)
  %146 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %140
  %149 = load i64, i64* %5, align 8
  %150 = call i64 @TREE_OPERAND(i64 %149, i32 1)
  store i64 %150, i64* %6, align 8
  %151 = load i64, i64* %5, align 8
  %152 = call i64 @TREE_OPERAND(i64 %151, i32 0)
  store i64 %152, i64* %5, align 8
  br label %155

153:                                              ; preds = %140
  %154 = load i64, i64* @NULL_TREE, align 8
  store i64 %154, i64* %6, align 8
  br label %155

155:                                              ; preds = %153, %148
  %156 = load i64, i64* %5, align 8
  %157 = call i64 @IDENTIFIER_TYPENAME_P(i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i64, i64* %5, align 8
  %161 = call i64 @TREE_TYPE(i64 %160)
  %162 = call i32 @write_conversion_operator_name(i64 %161)
  br label %236

163:                                              ; preds = %155
  %164 = load i64, i64* %5, align 8
  %165 = call i64 @IDENTIFIER_OPNAME_P(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %232

167:                                              ; preds = %163
  store i8* null, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %226, %167
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @LAST_CPLUS_TREE_CODE, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %229

172:                                              ; preds = %168
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @operator_name_info, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %5, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %208

181:                                              ; preds = %172
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @operator_name_info, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %196

189:                                              ; preds = %181
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** @operator_name_info, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %8, align 8
  br label %229

196:                                              ; preds = %181
  %197 = load i8*, i8** %8, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %206, label %199

199:                                              ; preds = %196
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** @operator_name_info, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  store i8* %205, i8** %8, align 8
  br label %206

206:                                              ; preds = %199, %196
  br label %207

207:                                              ; preds = %206
  br label %225

208:                                              ; preds = %172
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** @assignment_operator_name_info, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %5, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %208
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** @assignment_operator_name_info, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  store i8* %223, i8** %8, align 8
  br label %229

224:                                              ; preds = %208
  br label %225

225:                                              ; preds = %224, %207
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %7, align 4
  br label %168

229:                                              ; preds = %217, %189, %168
  %230 = load i8*, i8** %8, align 8
  %231 = call i32 @write_string(i8* %230)
  br label %235

232:                                              ; preds = %163
  %233 = load i64, i64* %5, align 8
  %234 = call i32 @write_source_name(i64 %233)
  br label %235

235:                                              ; preds = %232, %229
  br label %236

236:                                              ; preds = %235, %159
  %237 = load i64, i64* %6, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i64, i64* %6, align 8
  %241 = call i32 @write_template_args(i64 %240)
  br label %242

242:                                              ; preds = %239, %236
  br label %243

243:                                              ; preds = %242, %138
  br label %372

244:                                              ; preds = %126, %123
  %245 = load i64, i64* %2, align 8
  %246 = call i64 @TREE_CODE(i64 %245)
  %247 = load i64, i64* @ADDR_EXPR, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %271

249:                                              ; preds = %244
  %250 = load i64, i64* %2, align 8
  %251 = call i64 @TREE_TYPE(i64 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %271

253:                                              ; preds = %249
  %254 = load i64, i64* %2, align 8
  %255 = call i64 @TREE_TYPE(i64 %254)
  %256 = call i64 @TREE_CODE(i64 %255)
  %257 = load i64, i64* @REFERENCE_TYPE, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %271

259:                                              ; preds = %253
  %260 = load i64, i64* %2, align 8
  %261 = call i64 @TREE_OPERAND(i64 %260, i32 0)
  store i64 %261, i64* %2, align 8
  %262 = load i64, i64* %2, align 8
  %263 = call i64 @DECL_P(i64 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = load i64, i64* %2, align 8
  call void @write_expression(i64 %266)
  br label %376

267:                                              ; preds = %259
  %268 = load i64, i64* %2, align 8
  %269 = call i64 @TREE_CODE(i64 %268)
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %267, %253, %249, %244
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** @operator_name_info, align 8
  %273 = load i32, i32* %3, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 2
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @write_string(i8* %277)
  %279 = load i32, i32* %3, align 4
  switch i32 %279, label %344 [
    i32 132, label %280
    i32 131, label %282
    i32 128, label %296
    i32 130, label %296
    i32 129, label %302
  ]

280:                                              ; preds = %271
  %281 = call i32 @sorry(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %371

282:                                              ; preds = %271
  %283 = load i64, i64* %2, align 8
  %284 = call i64 @TREE_TYPE(i64 %283)
  %285 = call i32 @write_type(i64 %284)
  %286 = load i64, i64* %2, align 8
  %287 = call i64 @TREE_OPERAND(i64 %286, i32 0)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %282
  %290 = call i32 @sorry(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  br label %295

291:                                              ; preds = %282
  %292 = load i64, i64* %2, align 8
  %293 = call i64 @TREE_OPERAND(i64 %292, i32 0)
  %294 = call i64 @TREE_VALUE(i64 %293)
  call void @write_expression(i64 %294)
  br label %295

295:                                              ; preds = %291, %289
  br label %371

296:                                              ; preds = %271, %271
  %297 = load i64, i64* %2, align 8
  %298 = call i64 @TREE_TYPE(i64 %297)
  %299 = call i32 @write_type(i64 %298)
  %300 = load i64, i64* %2, align 8
  %301 = call i64 @TREE_OPERAND(i64 %300, i32 0)
  call void @write_expression(i64 %301)
  br label %371

302:                                              ; preds = %271
  %303 = load i64, i64* %2, align 8
  %304 = call i64 @TREE_OPERAND(i64 %303, i32 0)
  %305 = call i32 @write_type(i64 %304)
  %306 = load i64, i64* %2, align 8
  %307 = call i64 @TREE_OPERAND(i64 %306, i32 1)
  %308 = call i64 @TREE_CODE(i64 %307)
  %309 = load i64, i64* @IDENTIFIER_NODE, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %302
  %312 = load i64, i64* %2, align 8
  %313 = call i64 @TREE_OPERAND(i64 %312, i32 1)
  %314 = call i32 @write_source_name(i64 %313)
  br label %343

315:                                              ; preds = %302
  %316 = load i64, i64* %2, align 8
  %317 = call i64 @TREE_OPERAND(i64 %316, i32 1)
  %318 = call i64 @TREE_CODE(i64 %317)
  %319 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %338

321:                                              ; preds = %315
  %322 = load i64, i64* %2, align 8
  %323 = call i64 @TREE_OPERAND(i64 %322, i32 1)
  store i64 %323, i64* %10, align 8
  %324 = load i64, i64* %10, align 8
  %325 = call i64 @TREE_OPERAND(i64 %324, i32 0)
  store i64 %325, i64* %11, align 8
  %326 = load i64, i64* %11, align 8
  %327 = call i64 @TREE_CODE(i64 %326)
  %328 = load i64, i64* @IDENTIFIER_NODE, align 8
  %329 = icmp eq i64 %327, %328
  %330 = zext i1 %329 to i32
  %331 = call i32 @gcc_assert(i32 %330)
  %332 = load i64, i64* %10, align 8
  %333 = call i64 @TREE_OPERAND(i64 %332, i32 0)
  %334 = call i32 @write_source_name(i64 %333)
  %335 = load i64, i64* %10, align 8
  %336 = call i64 @TREE_OPERAND(i64 %335, i32 1)
  %337 = call i32 @write_template_args(i64 %336)
  br label %342

338:                                              ; preds = %315
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @G, i32 0, i32 0), align 4
  %339 = load i64, i64* %2, align 8
  %340 = call i64 @TREE_OPERAND(i64 %339, i32 1)
  %341 = call i32 @write_encoding(i64 %340)
  br label %342

342:                                              ; preds = %338, %321
  br label %343

343:                                              ; preds = %342, %311
  br label %371

344:                                              ; preds = %271
  store i32 0, i32* %9, align 4
  br label %345

345:                                              ; preds = %367, %344
  %346 = load i32, i32* %9, align 4
  %347 = load i32, i32* %3, align 4
  %348 = call i32 @TREE_CODE_LENGTH(i32 %347)
  %349 = icmp slt i32 %346, %348
  br i1 %349, label %350, label %370

350:                                              ; preds = %345
  %351 = load i64, i64* %2, align 8
  %352 = load i32, i32* %9, align 4
  %353 = call i64 @TREE_OPERAND(i64 %351, i32 %352)
  store i64 %353, i64* %12, align 8
  %354 = load i32, i32* %3, align 4
  %355 = load i32, i32* @COND_EXPR, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %365

357:                                              ; preds = %350
  %358 = load i32, i32* %9, align 4
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %360, label %365

360:                                              ; preds = %357
  %361 = load i64, i64* %12, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %365, label %363

363:                                              ; preds = %360
  %364 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  br label %367

365:                                              ; preds = %360, %357, %350
  %366 = load i64, i64* %12, align 8
  call void @write_expression(i64 %366)
  br label %367

367:                                              ; preds = %365, %363
  %368 = load i32, i32* %9, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %9, align 4
  br label %345

370:                                              ; preds = %345
  br label %371

371:                                              ; preds = %370, %343, %296, %295, %280
  br label %372

372:                                              ; preds = %371, %243
  br label %373

373:                                              ; preds = %372, %118
  br label %374

374:                                              ; preds = %373, %103
  br label %375

375:                                              ; preds = %374, %91
  br label %376

376:                                              ; preds = %265, %375, %76
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i64 @build_nt(i64, i32) #1

declare dso_local i32 @build_qualified_name(i64, i32, i32, i32) #1

declare dso_local i32 @PTRMEM_CST_CLASS(i64) #1

declare dso_local i32 @PTRMEM_CST_MEMBER(i64) #1

declare dso_local i32 @write_template_param(i64) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i64 @abi_version_at_least(i32) #1

declare dso_local i32 @write_template_arg_literal(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i32 @write_mangled_name(i64, i32) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i32 @write_string(i8*) #1

declare dso_local i32 @write_type(i64) #1

declare dso_local i64 @IDENTIFIER_TYPENAME_P(i64) #1

declare dso_local i32 @write_conversion_operator_name(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @IDENTIFIER_OPNAME_P(i64) #1

declare dso_local i32 @write_source_name(i64) #1

declare dso_local i32 @write_template_args(i64) #1

declare dso_local i32 @sorry(i8*) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @write_encoding(i64) #1

declare dso_local i32 @TREE_CODE_LENGTH(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
