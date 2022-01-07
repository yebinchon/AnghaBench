; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_convert_to_void.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_convert_to_void.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@PSEUDO_DTOR_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pseudo-destructor is not called\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"second operand of conditional\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"third operand of conditional\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"right-hand operand of comma\00", align 1
@REFERENCE_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"object of incomplete type %qT will not be accessed in %s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"void context\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"object of type %qT will not be accessed in %s\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"object %qE of incomplete type %qT will not be accessed in %s\00", align 1
@AGGR_INIT_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [49 x i8] c"%s cannot resolve address of overloaded function\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"void cast\00", align 1
@void_zero_node = common dso_local global i64 0, align 8
@OPT_Waddress = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"%s is a reference, not call, to function %qE\00", align 1
@COMPONENT_REF = common dso_local global i32 0, align 4
@warn_unused_value = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i32 0, align 4
@OPT_Wunused_value = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"%s has no effect\00", align 1
@tcc_comparison = common dso_local global i32 0, align 4
@tcc_unary = common dso_local global i32 0, align 4
@tcc_binary = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@INIT_EXPR = common dso_local global i32 0, align 4
@PREDECREMENT_EXPR = common dso_local global i32 0, align 4
@PREINCREMENT_EXPR = common dso_local global i32 0, align 4
@POSTDECREMENT_EXPR = common dso_local global i32 0, align 4
@POSTINCREMENT_EXPR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"value computed is not used\00", align 1
@CONVERT_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_to_void(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @error_mark_node, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @TREE_TYPE(i64 %29)
  %31 = load i64, i64* @error_mark_node, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %2
  %34 = load i64, i64* @error_mark_node, align 8
  store i64 %34, i64* %3, align 8
  br label %408

35:                                               ; preds = %28
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @TREE_TYPE(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %3, align 8
  br label %408

41:                                               ; preds = %35
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @invalid_nonstatic_memfn_p(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @error_mark_node, align 8
  store i64 %46, i64* %3, align 8
  br label %408

47:                                               ; preds = %41
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @TREE_CODE(i64 %48)
  %50 = load i32, i32* @PSEUDO_DTOR_EXPR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = load i64, i64* @error_mark_node, align 8
  store i64 %54, i64* %3, align 8
  br label %408

55:                                               ; preds = %47
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @TREE_TYPE(i64 %56)
  %58 = call i64 @VOID_TYPE_P(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %3, align 8
  br label %408

62:                                               ; preds = %55
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @TREE_CODE(i64 %63)
  switch i32 %64, label %261 [
    i32 133, label %65
    i32 134, label %103
    i32 131, label %131
    i32 130, label %131
    i32 135, label %132
    i32 132, label %133
    i32 128, label %203
    i32 129, label %227
  ]

65:                                               ; preds = %62
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @TREE_OPERAND(i64 %66, i32 1)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @TREE_OPERAND(i64 %68, i32 2)
  store i64 %69, i64* %7, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @TREE_SIDE_EFFECTS(i64 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %73, %65
  %79 = phi i1 [ false, %65 ], [ %77, %73 ]
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* null
  %82 = call i64 @convert_to_void(i64 %70, i8* %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @TREE_SIDE_EFFECTS(i64 %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %86, %78
  %92 = phi i1 [ false, %78 ], [ %90, %86 ]
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* null
  %95 = call i64 @convert_to_void(i64 %83, i8* %94)
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i64 @TREE_TYPE(i64 %96)
  %98 = load i64, i64* %4, align 8
  %99 = call i64 @TREE_OPERAND(i64 %98, i32 0)
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @build3(i32 133, i64 %97, i64 %99, i64 %100, i64 %101)
  store i64 %102, i64* %4, align 8
  br label %262

103:                                              ; preds = %62
  %104 = load i64, i64* %4, align 8
  %105 = call i64 @TREE_OPERAND(i64 %104, i32 1)
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @TREE_NO_WARNING(i64 %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %109, %103
  %115 = phi i1 [ false, %103 ], [ %113, %109 ]
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* null
  %118 = call i64 @convert_to_void(i64 %106, i8* %117)
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %10, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load i64, i64* %11, align 8
  %124 = call i64 @TREE_TYPE(i64 %123)
  %125 = load i64, i64* %4, align 8
  %126 = call i64 @TREE_OPERAND(i64 %125, i32 0)
  %127 = load i64, i64* %11, align 8
  %128 = call i64 @build2(i32 134, i64 %124, i64 %126, i64 %127)
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %12, align 8
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %122, %114
  br label %262

131:                                              ; preds = %62, %62
  br label %262

132:                                              ; preds = %62
  br label %262

133:                                              ; preds = %62
  %134 = load i64, i64* %4, align 8
  %135 = call i64 @TREE_TYPE(i64 %134)
  store i64 %135, i64* %13, align 8
  %136 = load i64, i64* %4, align 8
  %137 = call i64 @TREE_OPERAND(i64 %136, i32 0)
  %138 = call i64 @TREE_TYPE(i64 %137)
  %139 = call i32 @TREE_CODE(i64 %138)
  %140 = load i32, i32* @REFERENCE_TYPE, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %14, align 4
  %143 = load i64, i64* %13, align 8
  %144 = call i32 @TYPE_VOLATILE(i64 %143)
  store i32 %144, i32* %15, align 4
  %145 = load i64, i64* %13, align 8
  %146 = call i32 @complete_type(i64 %145)
  %147 = call i32 @COMPLETE_TYPE_P(i32 %146)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %133
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %150
  %154 = load i64, i64* %13, align 8
  %155 = load i8*, i8** %5, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i8*, i8** %5, align 8
  br label %160

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %157
  %161 = phi i8* [ %158, %157 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %159 ]
  %162 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %154, i8* %161)
  br label %186

163:                                              ; preds = %150, %133
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %163
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = load i64, i64* %13, align 8
  %171 = call i32 @TREE_ADDRESSABLE(i64 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %169, %166
  %174 = load i64, i64* %4, align 8
  %175 = call i64 @TREE_OPERAND(i64 %174, i32 0)
  %176 = call i64 @TREE_TYPE(i64 %175)
  %177 = load i8*, i8** %5, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i8*, i8** %5, align 8
  br label %182

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i8* [ %180, %179 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %181 ]
  %184 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %176, i8* %183)
  br label %185

185:                                              ; preds = %182, %169, %163
  br label %186

186:                                              ; preds = %185, %160
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i64, i64* %13, align 8
  %197 = call i32 @TREE_ADDRESSABLE(i64 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195, %192, %189, %186
  %200 = load i64, i64* %4, align 8
  %201 = call i64 @TREE_OPERAND(i64 %200, i32 0)
  store i64 %201, i64* %4, align 8
  br label %202

202:                                              ; preds = %199, %195
  br label %262

203:                                              ; preds = %62
  %204 = load i64, i64* %4, align 8
  %205 = call i64 @TREE_TYPE(i64 %204)
  store i64 %205, i64* %17, align 8
  %206 = load i64, i64* %17, align 8
  %207 = call i32 @complete_type(i64 %206)
  %208 = call i32 @COMPLETE_TYPE_P(i32 %207)
  store i32 %208, i32* %18, align 4
  %209 = load i64, i64* %17, align 8
  %210 = call i32 @TYPE_VOLATILE(i64 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %203
  %213 = load i32, i32* %18, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %212
  %216 = load i64, i64* %4, align 8
  %217 = load i64, i64* %17, align 8
  %218 = load i8*, i8** %5, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i8*, i8** %5, align 8
  br label %223

222:                                              ; preds = %215
  br label %223

223:                                              ; preds = %222, %220
  %224 = phi i8* [ %221, %220 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %222 ]
  %225 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i64 %216, i64 %217, i8* %224)
  br label %226

226:                                              ; preds = %223, %212, %203
  br label %262

227:                                              ; preds = %62
  %228 = load i64, i64* %4, align 8
  %229 = call i32 @TARGET_EXPR_IMPLICIT_P(i64 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %260

231:                                              ; preds = %227
  %232 = load i64, i64* %4, align 8
  %233 = call i64 @TREE_TYPE(i64 %232)
  %234 = call i32 @TYPE_HAS_TRIVIAL_DESTRUCTOR(i64 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %260

236:                                              ; preds = %231
  %237 = load i64, i64* %4, align 8
  %238 = call i64 @TARGET_EXPR_INITIAL(i64 %237)
  store i64 %238, i64* %19, align 8
  %239 = load i64, i64* %19, align 8
  %240 = call i32 @TREE_CODE(i64 %239)
  %241 = load i32, i32* @AGGR_INIT_EXPR, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %259

243:                                              ; preds = %236
  %244 = load i64, i64* %19, align 8
  %245 = call i32 @AGGR_INIT_VIA_CTOR_P(i64 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %259, label %247

247:                                              ; preds = %243
  %248 = load i64, i64* %19, align 8
  %249 = call i64 @TREE_OPERAND(i64 %248, i32 0)
  store i64 %249, i64* %20, align 8
  %250 = load i64, i64* %20, align 8
  %251 = call i64 @TREE_TYPE(i64 %250)
  %252 = call i64 @TREE_TYPE(i64 %251)
  %253 = call i64 @TREE_TYPE(i64 %252)
  %254 = load i64, i64* %20, align 8
  %255 = load i64, i64* %19, align 8
  %256 = call i64 @TREE_OPERAND(i64 %255, i32 1)
  %257 = load i64, i64* @NULL_TREE, align 8
  %258 = call i64 @build3(i32 135, i64 %253, i64 %254, i64 %256, i64 %257)
  store i64 %258, i64* %4, align 8
  br label %259

259:                                              ; preds = %247, %243, %236
  br label %260

260:                                              ; preds = %259, %231, %227
  br label %262

261:                                              ; preds = %62
  br label %262

262:                                              ; preds = %261, %260, %226, %202, %132, %131, %130, %91
  %263 = load i64, i64* %4, align 8
  store i64 %263, i64* %21, align 8
  %264 = load i64, i64* %21, align 8
  %265 = call i32 @TREE_CODE(i64 %264)
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* @ADDR_EXPR, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = load i64, i64* %4, align 8
  %271 = call i64 @TREE_OPERAND(i64 %270, i32 0)
  store i64 %271, i64* %21, align 8
  br label %272

272:                                              ; preds = %269, %262
  %273 = load i64, i64* %21, align 8
  %274 = call i64 @type_unknown_p(i64 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %272
  %277 = load i8*, i8** %5, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = load i8*, i8** %5, align 8
  br label %282

281:                                              ; preds = %276
  br label %282

282:                                              ; preds = %281, %279
  %283 = phi i8* [ %280, %279 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %281 ]
  %284 = call i32 @pedwarn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* %283)
  %285 = load i64, i64* @void_zero_node, align 8
  store i64 %285, i64* %4, align 8
  br label %311

286:                                              ; preds = %272
  %287 = load i8*, i8** %5, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %310

289:                                              ; preds = %286
  %290 = load i64, i64* %21, align 8
  %291 = load i64, i64* %4, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %310

293:                                              ; preds = %289
  %294 = load i64, i64* %21, align 8
  %295 = call i64 @is_overloaded_fn(i64 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %310

297:                                              ; preds = %293
  %298 = load i32, i32* @OPT_Waddress, align 4
  %299 = load i8*, i8** %5, align 8
  %300 = load i64, i64* %4, align 8
  %301 = call i32 (i32, i8*, ...) @warning(i32 %298, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i8* %299, i64 %300)
  %302 = load i64, i64* %4, align 8
  %303 = call i32 @TREE_CODE(i64 %302)
  %304 = load i32, i32* @COMPONENT_REF, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %297
  %307 = load i64, i64* %4, align 8
  %308 = call i64 @TREE_OPERAND(i64 %307, i32 0)
  store i64 %308, i64* %4, align 8
  br label %309

309:                                              ; preds = %306, %297
  br label %310

310:                                              ; preds = %309, %293, %289, %286
  br label %311

311:                                              ; preds = %310, %282
  %312 = load i64, i64* %4, align 8
  %313 = load i64, i64* @error_mark_node, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %400

315:                                              ; preds = %311
  %316 = load i64, i64* %4, align 8
  %317 = call i64 @TREE_TYPE(i64 %316)
  %318 = call i64 @VOID_TYPE_P(i64 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %400, label %320

320:                                              ; preds = %315
  %321 = load i8*, i8** %5, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %395

323:                                              ; preds = %320
  %324 = load i64, i64* @warn_unused_value, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %395

326:                                              ; preds = %323
  %327 = load i64, i64* %4, align 8
  %328 = call i32 @TREE_NO_WARNING(i64 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %395, label %330

330:                                              ; preds = %326
  %331 = load i32, i32* @processing_template_decl, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %395, label %333

333:                                              ; preds = %330
  %334 = load i64, i64* %4, align 8
  %335 = call i32 @TREE_SIDE_EFFECTS(i64 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %341, label %337

337:                                              ; preds = %333
  %338 = load i32, i32* @OPT_Wunused_value, align 4
  %339 = load i8*, i8** %5, align 8
  %340 = call i32 (i32, i8*, ...) @warning(i32 %338, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %339)
  br label %394

341:                                              ; preds = %333
  %342 = load i64, i64* %4, align 8
  store i64 %342, i64* %22, align 8
  br label %343

343:                                              ; preds = %347, %341
  %344 = load i64, i64* %22, align 8
  %345 = call i32 @TREE_CODE(i64 %344)
  %346 = icmp eq i32 %345, 130
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  %348 = load i64, i64* %22, align 8
  %349 = call i64 @TREE_OPERAND(i64 %348, i32 0)
  store i64 %349, i64* %22, align 8
  br label %343

350:                                              ; preds = %343
  %351 = load i64, i64* %22, align 8
  %352 = call i32 @TREE_CODE(i64 %351)
  store i32 %352, i32* %23, align 4
  %353 = load i32, i32* %23, align 4
  %354 = call i32 @TREE_CODE_CLASS(i32 %353)
  store i32 %354, i32* %24, align 4
  %355 = load i32, i32* %24, align 4
  %356 = load i32, i32* @tcc_comparison, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %390, label %358

358:                                              ; preds = %350
  %359 = load i32, i32* %24, align 4
  %360 = load i32, i32* @tcc_unary, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %390, label %362

362:                                              ; preds = %358
  %363 = load i32, i32* %24, align 4
  %364 = load i32, i32* @tcc_binary, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %393

366:                                              ; preds = %362
  %367 = load i32, i32* %23, align 4
  %368 = load i32, i32* @MODIFY_EXPR, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %393, label %370

370:                                              ; preds = %366
  %371 = load i32, i32* %23, align 4
  %372 = load i32, i32* @INIT_EXPR, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %393, label %374

374:                                              ; preds = %370
  %375 = load i32, i32* %23, align 4
  %376 = load i32, i32* @PREDECREMENT_EXPR, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %393, label %378

378:                                              ; preds = %374
  %379 = load i32, i32* %23, align 4
  %380 = load i32, i32* @PREINCREMENT_EXPR, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %393, label %382

382:                                              ; preds = %378
  %383 = load i32, i32* %23, align 4
  %384 = load i32, i32* @POSTDECREMENT_EXPR, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %393, label %386

386:                                              ; preds = %382
  %387 = load i32, i32* %23, align 4
  %388 = load i32, i32* @POSTINCREMENT_EXPR, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %393, label %390

390:                                              ; preds = %386, %358, %350
  %391 = load i32, i32* @OPT_Wunused_value, align 4
  %392 = call i32 (i32, i8*, ...) @warning(i32 %391, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %393

393:                                              ; preds = %390, %386, %382, %378, %374, %370, %366, %362
  br label %394

394:                                              ; preds = %393, %337
  br label %395

395:                                              ; preds = %394, %330, %326, %323, %320
  %396 = load i32, i32* @CONVERT_EXPR, align 4
  %397 = load i32, i32* @void_type_node, align 4
  %398 = load i64, i64* %4, align 8
  %399 = call i64 @build1(i32 %396, i32 %397, i64 %398)
  store i64 %399, i64* %4, align 8
  br label %400

400:                                              ; preds = %395, %315, %311
  %401 = load i64, i64* %4, align 8
  %402 = call i32 @TREE_SIDE_EFFECTS(i64 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %400
  %405 = load i64, i64* @void_zero_node, align 8
  store i64 %405, i64* %4, align 8
  br label %406

406:                                              ; preds = %404, %400
  %407 = load i64, i64* %4, align 8
  store i64 %407, i64* %3, align 8
  br label %408

408:                                              ; preds = %406, %60, %52, %45, %39, %33
  %409 = load i64, i64* %3, align 8
  ret i64 %409
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @invalid_nonstatic_memfn_p(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @build3(i32, i64, i64, i64, i64) #1

declare dso_local i32 @TREE_NO_WARNING(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i32 @TYPE_VOLATILE(i64) #1

declare dso_local i32 @COMPLETE_TYPE_P(i32) #1

declare dso_local i32 @complete_type(i64) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i32 @TREE_ADDRESSABLE(i64) #1

declare dso_local i32 @TARGET_EXPR_IMPLICIT_P(i64) #1

declare dso_local i32 @TYPE_HAS_TRIVIAL_DESTRUCTOR(i64) #1

declare dso_local i64 @TARGET_EXPR_INITIAL(i64) #1

declare dso_local i32 @AGGR_INIT_VIA_CTOR_P(i64) #1

declare dso_local i64 @type_unknown_p(i64) #1

declare dso_local i32 @pedwarn(i8*, i8*) #1

declare dso_local i64 @is_overloaded_fn(i64) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i64 @build1(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
