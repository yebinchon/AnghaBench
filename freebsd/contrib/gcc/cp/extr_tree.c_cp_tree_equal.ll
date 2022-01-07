; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_cp_tree_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_cp_tree_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOP_EXPR = common dso_local global i32 0, align 4
@CONVERT_EXPR = common dso_local global i32 0, align 4
@NON_LVALUE_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_tree_equal(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %463

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %20
  store i32 0, i32* %3, align 4
  br label %463

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %48, %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NOP_EXPR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @CONVERT_EXPR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NON_LVALUE_EXPR, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %39, %35, %31
  %44 = phi i1 [ true, %35 ], [ true, %31 ], [ %42, %39 ]
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @TREE_OPERAND(i64 %46, i32 0)
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @TREE_CODE(i64 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  br label %31

52:                                               ; preds = %43
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @TREE_CODE(i64 %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %73, %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @NOP_EXPR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @CONVERT_EXPR, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @NON_LVALUE_EXPR, align 4
  %67 = icmp eq i32 %65, %66
  br label %68

68:                                               ; preds = %64, %60, %56
  %69 = phi i1 [ true, %60 ], [ true, %56 ], [ %67, %64 ]
  br i1 %69, label %70, label %77

70:                                               ; preds = %68
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @TREE_OPERAND(i64 %71, i32 0)
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @TREE_CODE(i64 %74)
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %7, align 4
  br label %56

77:                                               ; preds = %68
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %463

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %463

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  switch i32 %88, label %431 [
    i32 150, label %89
    i32 146, label %104
    i32 142, label %110
    i32 156, label %129
    i32 154, label %146
    i32 137, label %166
    i32 145, label %188
    i32 157, label %194
    i32 141, label %208
    i32 135, label %254
    i32 155, label %268
    i32 136, label %281
    i32 148, label %281
    i32 153, label %281
    i32 152, label %281
    i32 140, label %281
    i32 151, label %281
    i32 143, label %281
    i32 158, label %282
    i32 138, label %304
    i32 139, label %328
    i32 144, label %382
    i32 159, label %382
    i32 147, label %405
    i32 149, label %418
  ]

89:                                               ; preds = %87
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @TREE_INT_CST_LOW(i64 %90)
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @TREE_INT_CST_LOW(i64 %92)
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @TREE_INT_CST_HIGH(i64 %96)
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @TREE_INT_CST_HIGH(i64 %98)
  %100 = icmp eq i32 %97, %99
  br label %101

101:                                              ; preds = %95, %89
  %102 = phi i1 [ false, %89 ], [ %100, %95 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %3, align 4
  br label %463

104:                                              ; preds = %87
  %105 = load i64, i64* %4, align 8
  %106 = call i32 @TREE_REAL_CST(i64 %105)
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @TREE_REAL_CST(i64 %107)
  %109 = call i32 @REAL_VALUES_EQUAL(i32 %106, i32 %108)
  store i32 %109, i32* %3, align 4
  br label %463

110:                                              ; preds = %87
  %111 = load i64, i64* %4, align 8
  %112 = call i32 @TREE_STRING_LENGTH(i64 %111)
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @TREE_STRING_LENGTH(i64 %113)
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @TREE_STRING_POINTER(i64 %117)
  %119 = load i64, i64* %5, align 8
  %120 = call i32 @TREE_STRING_POINTER(i64 %119)
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @TREE_STRING_LENGTH(i64 %121)
  %123 = call i32 @memcmp(i32 %118, i32 %120, i32 %122)
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  br label %126

126:                                              ; preds = %116, %110
  %127 = phi i1 [ false, %110 ], [ %125, %116 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %3, align 4
  br label %463

129:                                              ; preds = %87
  %130 = load i64, i64* %4, align 8
  %131 = call i64 @TREE_REALPART(i64 %130)
  %132 = load i64, i64* %5, align 8
  %133 = call i64 @TREE_REALPART(i64 %132)
  %134 = call i32 @cp_tree_equal(i64 %131, i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load i64, i64* %4, align 8
  %138 = call i64 @TREE_IMAGPART(i64 %137)
  %139 = load i64, i64* %5, align 8
  %140 = call i64 @TREE_IMAGPART(i64 %139)
  %141 = call i32 @cp_tree_equal(i64 %138, i64 %140)
  %142 = icmp ne i32 %141, 0
  br label %143

143:                                              ; preds = %136, %129
  %144 = phi i1 [ false, %129 ], [ %142, %136 ]
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %3, align 4
  br label %463

146:                                              ; preds = %87
  %147 = load i64, i64* %4, align 8
  %148 = call i64 @TREE_TYPE(i64 %147)
  %149 = load i64, i64* %5, align 8
  %150 = call i64 @TREE_TYPE(i64 %149)
  %151 = call i32 @same_type_p(i64 %148, i64 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load i64, i64* %4, align 8
  %155 = call i64 @TREE_OPERAND(i64 %154, i32 0)
  %156 = load i64, i64* %5, align 8
  %157 = call i64 @TREE_OPERAND(i64 %156, i32 0)
  %158 = icmp eq i64 %155, %157
  br i1 %158, label %160, label %159

159:                                              ; preds = %153, %146
  store i32 0, i32* %3, align 4
  br label %463

160:                                              ; preds = %153
  %161 = load i64, i64* %4, align 8
  %162 = call i64 @TREE_OPERAND(i64 %161, i32 1)
  %163 = load i64, i64* %5, align 8
  %164 = call i64 @TREE_OPERAND(i64 %163, i32 1)
  %165 = call i32 @cp_tree_equal(i64 %162, i64 %164)
  store i32 %165, i32* %3, align 4
  br label %463

166:                                              ; preds = %87
  %167 = load i64, i64* %4, align 8
  %168 = call i64 @TREE_PURPOSE(i64 %167)
  %169 = load i64, i64* %5, align 8
  %170 = call i64 @TREE_PURPOSE(i64 %169)
  %171 = call i32 @cp_tree_equal(i64 %168, i64 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %166
  store i32 0, i32* %3, align 4
  br label %463

174:                                              ; preds = %166
  %175 = load i64, i64* %4, align 8
  %176 = call i64 @TREE_VALUE(i64 %175)
  %177 = load i64, i64* %5, align 8
  %178 = call i64 @TREE_VALUE(i64 %177)
  %179 = call i32 @cp_tree_equal(i64 %176, i64 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %463

182:                                              ; preds = %174
  %183 = load i64, i64* %4, align 8
  %184 = call i64 @TREE_CHAIN(i64 %183)
  %185 = load i64, i64* %5, align 8
  %186 = call i64 @TREE_CHAIN(i64 %185)
  %187 = call i32 @cp_tree_equal(i64 %184, i64 %186)
  store i32 %187, i32* %3, align 4
  br label %463

188:                                              ; preds = %87
  %189 = load i64, i64* %4, align 8
  %190 = call i64 @TREE_OPERAND(i64 %189, i32 0)
  %191 = load i64, i64* %5, align 8
  %192 = call i64 @TREE_OPERAND(i64 %191, i32 0)
  %193 = call i32 @cp_tree_equal(i64 %190, i64 %192)
  store i32 %193, i32* %3, align 4
  br label %463

194:                                              ; preds = %87
  %195 = load i64, i64* %4, align 8
  %196 = call i64 @TREE_OPERAND(i64 %195, i32 0)
  %197 = load i64, i64* %5, align 8
  %198 = call i64 @TREE_OPERAND(i64 %197, i32 0)
  %199 = call i32 @cp_tree_equal(i64 %196, i64 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %194
  store i32 0, i32* %3, align 4
  br label %463

202:                                              ; preds = %194
  %203 = load i64, i64* %4, align 8
  %204 = call i64 @TREE_OPERAND(i64 %203, i32 1)
  %205 = load i64, i64* %5, align 8
  %206 = call i64 @TREE_OPERAND(i64 %205, i32 1)
  %207 = call i32 @cp_tree_equal(i64 %204, i64 %206)
  store i32 %207, i32* %3, align 4
  br label %463

208:                                              ; preds = %87
  %209 = load i64, i64* %4, align 8
  %210 = call i64 @TREE_OPERAND(i64 %209, i32 0)
  store i64 %210, i64* %8, align 8
  %211 = load i64, i64* %5, align 8
  %212 = call i64 @TREE_OPERAND(i64 %211, i32 0)
  store i64 %212, i64* %9, align 8
  %213 = load i64, i64* %8, align 8
  %214 = call i64 @TREE_CODE(i64 %213)
  %215 = icmp eq i64 %214, 136
  br i1 %215, label %216, label %226

216:                                              ; preds = %208
  %217 = load i64, i64* %8, align 8
  %218 = call i32 @DECL_NAME(i64 %217)
  %219 = load i32, i32* @NULL_TREE, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load i64, i64* %8, align 8
  %223 = call i32 @DECL_RTL_SET_P(i64 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %221
  br label %248

226:                                              ; preds = %221, %216, %208
  %227 = load i64, i64* %9, align 8
  %228 = call i64 @TREE_CODE(i64 %227)
  %229 = icmp eq i64 %228, 136
  br i1 %229, label %230, label %240

230:                                              ; preds = %226
  %231 = load i64, i64* %9, align 8
  %232 = call i32 @DECL_NAME(i64 %231)
  %233 = load i32, i32* @NULL_TREE, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = load i64, i64* %9, align 8
  %237 = call i32 @DECL_RTL_SET_P(i64 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %235
  br label %247

240:                                              ; preds = %235, %230, %226
  %241 = load i64, i64* %8, align 8
  %242 = load i64, i64* %9, align 8
  %243 = call i32 @cp_tree_equal(i64 %241, i64 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %240
  store i32 0, i32* %3, align 4
  br label %463

246:                                              ; preds = %240
  br label %247

247:                                              ; preds = %246, %239
  br label %248

248:                                              ; preds = %247, %225
  %249 = load i64, i64* %4, align 8
  %250 = call i64 @TREE_OPERAND(i64 %249, i32 1)
  %251 = load i64, i64* %5, align 8
  %252 = call i64 @TREE_OPERAND(i64 %251, i32 1)
  %253 = call i32 @cp_tree_equal(i64 %250, i64 %252)
  store i32 %253, i32* %3, align 4
  br label %463

254:                                              ; preds = %87
  %255 = load i64, i64* %4, align 8
  %256 = call i64 @TREE_OPERAND(i64 %255, i32 0)
  %257 = load i64, i64* %5, align 8
  %258 = call i64 @TREE_OPERAND(i64 %257, i32 0)
  %259 = call i32 @cp_tree_equal(i64 %256, i64 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %254
  store i32 0, i32* %3, align 4
  br label %463

262:                                              ; preds = %254
  %263 = load i64, i64* %4, align 8
  %264 = call i64 @TREE_OPERAND(i64 %263, i32 1)
  %265 = load i64, i64* %4, align 8
  %266 = call i64 @TREE_OPERAND(i64 %265, i32 1)
  %267 = call i32 @cp_tree_equal(i64 %264, i64 %266)
  store i32 %267, i32* %3, align 4
  br label %463

268:                                              ; preds = %87
  %269 = load i64, i64* %4, align 8
  %270 = call i64 @TREE_OPERAND(i64 %269, i32 1)
  %271 = load i64, i64* %5, align 8
  %272 = call i64 @TREE_OPERAND(i64 %271, i32 1)
  %273 = icmp ne i64 %270, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  store i32 0, i32* %3, align 4
  br label %463

275:                                              ; preds = %268
  %276 = load i64, i64* %4, align 8
  %277 = call i64 @TREE_OPERAND(i64 %276, i32 0)
  %278 = load i64, i64* %5, align 8
  %279 = call i64 @TREE_OPERAND(i64 %278, i32 0)
  %280 = call i32 @cp_tree_equal(i64 %277, i64 %279)
  store i32 %280, i32* %3, align 4
  br label %463

281:                                              ; preds = %87, %87, %87, %87, %87, %87, %87
  store i32 0, i32* %3, align 4
  br label %463

282:                                              ; preds = %87
  %283 = load i64, i64* %4, align 8
  %284 = call i32 @BASELINK_BINFO(i64 %283)
  %285 = load i64, i64* %5, align 8
  %286 = call i32 @BASELINK_BINFO(i64 %285)
  %287 = icmp eq i32 %284, %286
  br i1 %287, label %288, label %301

288:                                              ; preds = %282
  %289 = load i64, i64* %4, align 8
  %290 = call i32 @BASELINK_ACCESS_BINFO(i64 %289)
  %291 = load i64, i64* %5, align 8
  %292 = call i32 @BASELINK_ACCESS_BINFO(i64 %291)
  %293 = icmp eq i32 %290, %292
  br i1 %293, label %294, label %301

294:                                              ; preds = %288
  %295 = load i64, i64* %4, align 8
  %296 = call i64 @BASELINK_FUNCTIONS(i64 %295)
  %297 = load i64, i64* %5, align 8
  %298 = call i64 @BASELINK_FUNCTIONS(i64 %297)
  %299 = call i32 @cp_tree_equal(i64 %296, i64 %298)
  %300 = icmp ne i32 %299, 0
  br label %301

301:                                              ; preds = %294, %288, %282
  %302 = phi i1 [ false, %288 ], [ false, %282 ], [ %300, %294 ]
  %303 = zext i1 %302 to i32
  store i32 %303, i32* %3, align 4
  br label %463

304:                                              ; preds = %87
  %305 = load i64, i64* %4, align 8
  %306 = call i32 @TEMPLATE_PARM_IDX(i64 %305)
  %307 = load i64, i64* %5, align 8
  %308 = call i32 @TEMPLATE_PARM_IDX(i64 %307)
  %309 = icmp eq i32 %306, %308
  br i1 %309, label %310, label %325

310:                                              ; preds = %304
  %311 = load i64, i64* %4, align 8
  %312 = call i32 @TEMPLATE_PARM_LEVEL(i64 %311)
  %313 = load i64, i64* %5, align 8
  %314 = call i32 @TEMPLATE_PARM_LEVEL(i64 %313)
  %315 = icmp eq i32 %312, %314
  br i1 %315, label %316, label %325

316:                                              ; preds = %310
  %317 = load i64, i64* %4, align 8
  %318 = call i64 @TEMPLATE_PARM_DECL(i64 %317)
  %319 = call i64 @TREE_TYPE(i64 %318)
  %320 = load i64, i64* %5, align 8
  %321 = call i64 @TEMPLATE_PARM_DECL(i64 %320)
  %322 = call i64 @TREE_TYPE(i64 %321)
  %323 = call i32 @same_type_p(i64 %319, i64 %322)
  %324 = icmp ne i32 %323, 0
  br label %325

325:                                              ; preds = %316, %310, %304
  %326 = phi i1 [ false, %310 ], [ false, %304 ], [ %324, %316 ]
  %327 = zext i1 %326 to i32
  store i32 %327, i32* %3, align 4
  br label %463

328:                                              ; preds = %87
  %329 = load i64, i64* %4, align 8
  %330 = call i64 @TREE_OPERAND(i64 %329, i32 0)
  %331 = load i64, i64* %5, align 8
  %332 = call i64 @TREE_OPERAND(i64 %331, i32 0)
  %333 = call i32 @cp_tree_equal(i64 %330, i64 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %328
  store i32 0, i32* %3, align 4
  br label %463

336:                                              ; preds = %328
  %337 = load i64, i64* %4, align 8
  %338 = call i64 @TREE_OPERAND(i64 %337, i32 1)
  store i64 %338, i64* %11, align 8
  %339 = load i64, i64* %5, align 8
  %340 = call i64 @TREE_OPERAND(i64 %339, i32 1)
  store i64 %340, i64* %12, align 8
  %341 = load i64, i64* %11, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %336
  %344 = load i64, i64* %12, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %356, label %346

346:                                              ; preds = %343, %336
  %347 = load i64, i64* %11, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %346
  %350 = load i64, i64* %12, align 8
  %351 = icmp ne i64 %350, 0
  %352 = xor i1 %351, true
  br label %353

353:                                              ; preds = %349, %346
  %354 = phi i1 [ false, %346 ], [ %352, %349 ]
  %355 = zext i1 %354 to i32
  store i32 %355, i32* %3, align 4
  br label %463

356:                                              ; preds = %343
  %357 = load i64, i64* %11, align 8
  %358 = call i32 @TREE_VEC_LENGTH(i64 %357)
  %359 = load i64, i64* %12, align 8
  %360 = call i32 @TREE_VEC_LENGTH(i64 %359)
  %361 = icmp ne i32 %358, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %356
  store i32 0, i32* %3, align 4
  br label %463

363:                                              ; preds = %356
  %364 = load i64, i64* %11, align 8
  %365 = call i32 @TREE_VEC_LENGTH(i64 %364)
  store i32 %365, i32* %10, align 4
  br label %366

366:                                              ; preds = %380, %363
  %367 = load i32, i32* %10, align 4
  %368 = add i32 %367, -1
  store i32 %368, i32* %10, align 4
  %369 = icmp ne i32 %367, 0
  br i1 %369, label %370, label %381

370:                                              ; preds = %366
  %371 = load i64, i64* %11, align 8
  %372 = load i32, i32* %10, align 4
  %373 = call i64 @TREE_VEC_ELT(i64 %371, i32 %372)
  %374 = load i64, i64* %12, align 8
  %375 = load i32, i32* %10, align 4
  %376 = call i64 @TREE_VEC_ELT(i64 %374, i32 %375)
  %377 = call i32 @cp_tree_equal(i64 %373, i64 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %370
  store i32 0, i32* %3, align 4
  br label %463

380:                                              ; preds = %370
  br label %366

381:                                              ; preds = %366
  store i32 1, i32* %3, align 4
  br label %463

382:                                              ; preds = %87, %87
  %383 = load i64, i64* %4, align 8
  %384 = call i64 @TREE_OPERAND(i64 %383, i32 0)
  store i64 %384, i64* %13, align 8
  %385 = load i64, i64* %5, align 8
  %386 = call i64 @TREE_OPERAND(i64 %385, i32 0)
  store i64 %386, i64* %14, align 8
  %387 = load i64, i64* %13, align 8
  %388 = call i64 @TREE_CODE(i64 %387)
  %389 = load i64, i64* %14, align 8
  %390 = call i64 @TREE_CODE(i64 %389)
  %391 = icmp ne i64 %388, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %382
  store i32 0, i32* %3, align 4
  br label %463

393:                                              ; preds = %382
  %394 = load i64, i64* %13, align 8
  %395 = call i32 @TYPE_P(i64 %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %393
  %398 = load i64, i64* %13, align 8
  %399 = load i64, i64* %14, align 8
  %400 = call i32 @same_type_p(i64 %398, i64 %399)
  store i32 %400, i32* %3, align 4
  br label %463

401:                                              ; preds = %393
  %402 = load i64, i64* %13, align 8
  %403 = load i64, i64* %14, align 8
  %404 = call i32 @cp_tree_equal(i64 %402, i64 %403)
  store i32 %404, i32* %3, align 4
  br label %463

405:                                              ; preds = %87
  %406 = load i64, i64* %4, align 8
  %407 = call i32 @PTRMEM_CST_MEMBER(i64 %406)
  %408 = load i64, i64* %5, align 8
  %409 = call i32 @PTRMEM_CST_MEMBER(i64 %408)
  %410 = icmp ne i32 %407, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %405
  store i32 0, i32* %3, align 4
  br label %463

412:                                              ; preds = %405
  %413 = load i64, i64* %4, align 8
  %414 = call i64 @PTRMEM_CST_CLASS(i64 %413)
  %415 = load i64, i64* %5, align 8
  %416 = call i64 @PTRMEM_CST_CLASS(i64 %415)
  %417 = call i32 @same_type_p(i64 %414, i64 %416)
  store i32 %417, i32* %3, align 4
  br label %463

418:                                              ; preds = %87
  %419 = load i64, i64* %4, align 8
  %420 = call i32 @OVL_FUNCTION(i64 %419)
  %421 = load i64, i64* %5, align 8
  %422 = call i32 @OVL_FUNCTION(i64 %421)
  %423 = icmp ne i32 %420, %422
  br i1 %423, label %424, label %425

424:                                              ; preds = %418
  store i32 0, i32* %3, align 4
  br label %463

425:                                              ; preds = %418
  %426 = load i64, i64* %4, align 8
  %427 = call i64 @OVL_CHAIN(i64 %426)
  %428 = load i64, i64* %5, align 8
  %429 = call i64 @OVL_CHAIN(i64 %428)
  %430 = call i32 @cp_tree_equal(i64 %427, i64 %429)
  store i32 %430, i32* %3, align 4
  br label %463

431:                                              ; preds = %87
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %6, align 4
  %434 = call i32 @TREE_CODE_CLASS(i32 %433)
  switch i32 %434, label %460 [
    i32 128, label %435
    i32 134, label %435
    i32 133, label %435
    i32 132, label %435
    i32 131, label %435
    i32 130, label %435
    i32 129, label %456
  ]

435:                                              ; preds = %432, %432, %432, %432, %432, %432
  store i32 0, i32* %15, align 4
  br label %436

436:                                              ; preds = %452, %435
  %437 = load i32, i32* %15, align 4
  %438 = load i32, i32* %6, align 4
  %439 = call i32 @TREE_CODE_LENGTH(i32 %438)
  %440 = icmp slt i32 %437, %439
  br i1 %440, label %441, label %455

441:                                              ; preds = %436
  %442 = load i64, i64* %4, align 8
  %443 = load i32, i32* %15, align 4
  %444 = call i64 @TREE_OPERAND(i64 %442, i32 %443)
  %445 = load i64, i64* %5, align 8
  %446 = load i32, i32* %15, align 4
  %447 = call i64 @TREE_OPERAND(i64 %445, i32 %446)
  %448 = call i32 @cp_tree_equal(i64 %444, i64 %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %451, label %450

450:                                              ; preds = %441
  store i32 0, i32* %3, align 4
  br label %463

451:                                              ; preds = %441
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %15, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %15, align 4
  br label %436

455:                                              ; preds = %436
  store i32 1, i32* %3, align 4
  br label %463

456:                                              ; preds = %432
  %457 = load i64, i64* %4, align 8
  %458 = load i64, i64* %5, align 8
  %459 = call i32 @same_type_p(i64 %457, i64 %458)
  store i32 %459, i32* %3, align 4
  br label %463

460:                                              ; preds = %432
  %461 = call i32 (...) @gcc_unreachable()
  br label %462

462:                                              ; preds = %460
  store i32 0, i32* %3, align 4
  br label %463

463:                                              ; preds = %462, %456, %455, %450, %425, %424, %412, %411, %401, %397, %392, %381, %379, %362, %353, %335, %325, %301, %281, %275, %274, %262, %261, %248, %245, %202, %201, %188, %182, %181, %173, %160, %159, %143, %126, %104, %101, %86, %81, %26, %19
  %464 = load i32, i32* %3, align 4
  ret i32 %464
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i64) #1

declare dso_local i32 @REAL_VALUES_EQUAL(i32, i32) #1

declare dso_local i32 @TREE_REAL_CST(i64) #1

declare dso_local i32 @TREE_STRING_LENGTH(i64) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @TREE_STRING_POINTER(i64) #1

declare dso_local i64 @TREE_REALPART(i64) #1

declare dso_local i64 @TREE_IMAGPART(i64) #1

declare dso_local i32 @same_type_p(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i32 @DECL_RTL_SET_P(i64) #1

declare dso_local i32 @BASELINK_BINFO(i64) #1

declare dso_local i32 @BASELINK_ACCESS_BINFO(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i32 @TEMPLATE_PARM_IDX(i64) #1

declare dso_local i32 @TEMPLATE_PARM_LEVEL(i64) #1

declare dso_local i64 @TEMPLATE_PARM_DECL(i64) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i64 @TREE_VEC_ELT(i64, i32) #1

declare dso_local i32 @TYPE_P(i64) #1

declare dso_local i32 @PTRMEM_CST_MEMBER(i64) #1

declare dso_local i64 @PTRMEM_CST_CLASS(i64) #1

declare dso_local i32 @OVL_FUNCTION(i64) #1

declare dso_local i64 @OVL_CHAIN(i64) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @TREE_CODE_LENGTH(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
