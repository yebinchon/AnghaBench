; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_build_binary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_build_binary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i32, i64, i64)* }

@ERROR_MARK = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"comparison\00", align 1
@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@skip_evaluation = common dso_local global i64 0, align 8
@OPT_Wdiv_by_zero = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@REAL_TYPE = common dso_local global i32 0, align 4
@COMPLEX_TYPE = common dso_local global i32 0, align 4
@VECTOR_TYPE = common dso_local global i32 0, align 4
@RDIV_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@BLOCK_POINTER_TYPE = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"right shift count is negative\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"right shift count >= width of type\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"left shift count is negative\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"left shift count >= width of type\00", align 1
@OPT_Wfloat_equal = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"comparing floating point with == or != is unsafe\00", align 1
@pedantic = common dso_local global i32 0, align 4
@FUNCTION_TYPE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [61 x i8] c"ISO C forbids comparison of %<void *%> with function pointer\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"comparison of distinct block types lacks a cast\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"comparison of distinct pointer types lacks a cast\00", align 1
@ptr_type_node = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i32 0, align 4
@PARM_DECL = common dso_local global i32 0, align 4
@LABEL_DECL = common dso_local global i32 0, align 4
@OPT_Waddress = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"the address of %qD will never be NULL\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"comparison between pointer and integer\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"comparison of complete and incomplete pointers\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"ISO C forbids ordered comparisons of pointers to functions\00", align 1
@extra_warnings = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"ordered comparison of pointer with integer zero\00", align 1
@warn_sign_compare = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [39 x i8] c"comparison between signed and unsigned\00", align 1
@BIT_NOT_EXPR = common dso_local global i64 0, align 8
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [47 x i8] c"comparison of promoted ~unsigned with constant\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"comparison of promoted ~unsigned with unsigned\00", align 1
@require_constant_value = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_binary_op(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  %44 = alloca i64, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i32, align 4
  %54 = alloca i64, align 8
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %4
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @default_conversion(i64 %64)
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @default_conversion(i64 %66)
  store i64 %67, i64* %15, align 8
  br label %71

68:                                               ; preds = %4
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %15, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i64, i64* %14, align 8
  %73 = call i64 @TREE_TYPE(i64 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i64 @TREE_TYPE(i64 %74)
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @TREE_CODE(i64 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @TREE_CODE(i64 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @STRIP_TYPE_NOPS(i64 %80)
  %82 = load i64, i64* %15, align 8
  %83 = call i32 @STRIP_TYPE_NOPS(i64 %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @ERROR_MARK, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @ERROR_MARK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %71
  %92 = load i64, i64* @error_mark_node, align 8
  store i64 %92, i64* %5, align 8
  br label %1488

93:                                               ; preds = %87
  %94 = load i8* (i32, i64, i64)*, i8* (i32, i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i8* %94(i32 %95, i64 %96, i64 %97)
  store i8* %98, i8** %16, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i8*, i8** %16, align 8
  %102 = call i32 @error(i8* %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %103 = load i64, i64* @error_mark_node, align 8
  store i64 %103, i64* %5, align 8
  br label %1488

104:                                              ; preds = %93
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @NULL_TREE, align 8
  %108 = call i32 @objc_compare_types(i64 %105, i64 %106, i32 -3, i64 %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %108, i32* %26, align 4
  %109 = load i32, i32* %6, align 4
  switch i32 %109, label %889 [
    i32 137, label %110
    i32 140, label %137
    i32 139, label %169
    i32 134, label %170
    i32 150, label %170
    i32 147, label %170
    i32 136, label %170
    i32 148, label %170
    i32 153, label %273
    i32 152, label %273
    i32 151, label %273
    i32 133, label %293
    i32 146, label %293
    i32 132, label %333
    i32 130, label %333
    i32 131, label %333
    i32 129, label %333
    i32 128, label %333
    i32 135, label %380
    i32 142, label %431
    i32 149, label %477
    i32 138, label %477
    i32 143, label %761
    i32 145, label %761
    i32 141, label %761
    i32 144, label %761
  ]

110:                                              ; preds = %104
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @POINTER_TYPE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @INTEGER_TYPE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %15, align 8
  %121 = call i64 @pointer_int_sum(i32 137, i64 %119, i64 %120)
  store i64 %121, i64* %5, align 8
  br label %1488

122:                                              ; preds = %114, %110
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @POINTER_TYPE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @INTEGER_TYPE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* %14, align 8
  %133 = call i64 @pointer_int_sum(i32 137, i64 %131, i64 %132)
  store i64 %133, i64* %5, align 8
  br label %1488

134:                                              ; preds = %126, %122
  store i32 1, i32* %25, align 4
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %891

137:                                              ; preds = %104
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @POINTER_TYPE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @POINTER_TYPE, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @comp_target_types(i64 %146, i64 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* %15, align 8
  %153 = call i64 @pointer_diff(i64 %151, i64 %152)
  store i64 %153, i64* %5, align 8
  br label %1488

154:                                              ; preds = %145, %141, %137
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @POINTER_TYPE, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @INTEGER_TYPE, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* %15, align 8
  %165 = call i64 @pointer_int_sum(i32 140, i64 %163, i64 %164)
  store i64 %165, i64* %5, align 8
  br label %1488

166:                                              ; preds = %158, %154
  store i32 1, i32* %25, align 4
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  br label %891

169:                                              ; preds = %104
  store i32 1, i32* %25, align 4
  br label %891

170:                                              ; preds = %104, %104, %104, %104, %104
  %171 = load i64, i64* @skip_evaluation, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i64, i64* %15, align 8
  %175 = call i32 @integer_zerop(i64 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* @OPT_Wdiv_by_zero, align 4
  %179 = call i32 (i32, i8*, ...) @warning(i32 %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %173, %170
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @INTEGER_TYPE, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %196, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @REAL_TYPE, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %196, label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @COMPLEX_TYPE, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* @VECTOR_TYPE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %272

196:                                              ; preds = %192, %188, %184, %180
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* @INTEGER_TYPE, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %212, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* @REAL_TYPE, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %212, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* @COMPLEX_TYPE, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* @VECTOR_TYPE, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %272

212:                                              ; preds = %208, %204, %200, %196
  %213 = load i32, i32* %12, align 4
  store i32 %213, i32* %27, align 4
  %214 = load i32, i32* %13, align 4
  store i32 %214, i32* %28, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @COMPLEX_TYPE, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %212
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @VECTOR_TYPE, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %218, %212
  %223 = load i64, i64* %14, align 8
  %224 = call i64 @TREE_TYPE(i64 %223)
  %225 = call i64 @TREE_TYPE(i64 %224)
  %226 = call i32 @TREE_CODE(i64 %225)
  store i32 %226, i32* %27, align 4
  br label %227

227:                                              ; preds = %222, %218
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* @COMPLEX_TYPE, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @VECTOR_TYPE, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %231, %227
  %236 = load i64, i64* %15, align 8
  %237 = call i64 @TREE_TYPE(i64 %236)
  %238 = call i64 @TREE_TYPE(i64 %237)
  %239 = call i32 @TREE_CODE(i64 %238)
  store i32 %239, i32* %28, align 4
  br label %240

240:                                              ; preds = %235, %231
  %241 = load i32, i32* %27, align 4
  %242 = load i32, i32* @INTEGER_TYPE, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load i32, i32* %28, align 4
  %246 = load i32, i32* @INTEGER_TYPE, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %250, label %248

248:                                              ; preds = %244, %240
  %249 = load i32, i32* @RDIV_EXPR, align 4
  store i32 %249, i32* %17, align 4
  br label %271

250:                                              ; preds = %244
  %251 = load i64, i64* %7, align 8
  %252 = call i64 @TREE_TYPE(i64 %251)
  %253 = call i32 @TYPE_UNSIGNED(i64 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %268, label %255

255:                                              ; preds = %250
  %256 = load i64, i64* %15, align 8
  %257 = call i32 @TREE_CODE(i64 %256)
  %258 = sext i32 %257 to i64
  %259 = load i64, i64* @INTEGER_CST, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %255
  %262 = load i64, i64* %15, align 8
  %263 = call i32 @integer_all_onesp(i64 %262)
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  br label %266

266:                                              ; preds = %261, %255
  %267 = phi i1 [ false, %255 ], [ %265, %261 ]
  br label %268

268:                                              ; preds = %266, %250
  %269 = phi i1 [ true, %250 ], [ %267, %266 ]
  %270 = zext i1 %269 to i32
  store i32 %270, i32* %22, align 4
  br label %271

271:                                              ; preds = %268, %248
  store i32 1, i32* %25, align 4
  br label %272

272:                                              ; preds = %271, %208, %192
  br label %891

273:                                              ; preds = %104, %104, %104
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* @INTEGER_TYPE, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %273
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* @INTEGER_TYPE, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %277
  store i32 -1, i32* %22, align 4
  br label %292

282:                                              ; preds = %277, %273
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* @VECTOR_TYPE, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %282
  %287 = load i32, i32* %13, align 4
  %288 = load i32, i32* @VECTOR_TYPE, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  store i32 1, i32* %25, align 4
  br label %291

291:                                              ; preds = %290, %286, %282
  br label %292

292:                                              ; preds = %291, %281
  br label %891

293:                                              ; preds = %104, %104
  %294 = load i64, i64* @skip_evaluation, align 8
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %293
  %297 = load i64, i64* %15, align 8
  %298 = call i32 @integer_zerop(i64 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = load i32, i32* @OPT_Wdiv_by_zero, align 4
  %302 = call i32 (i32, i8*, ...) @warning(i32 %301, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %296, %293
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* @INTEGER_TYPE, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %332

307:                                              ; preds = %303
  %308 = load i32, i32* %13, align 4
  %309 = load i32, i32* @INTEGER_TYPE, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %332

311:                                              ; preds = %307
  %312 = load i64, i64* %7, align 8
  %313 = call i64 @TREE_TYPE(i64 %312)
  %314 = call i32 @TYPE_UNSIGNED(i64 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %329, label %316

316:                                              ; preds = %311
  %317 = load i64, i64* %15, align 8
  %318 = call i32 @TREE_CODE(i64 %317)
  %319 = sext i32 %318 to i64
  %320 = load i64, i64* @INTEGER_CST, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %327

322:                                              ; preds = %316
  %323 = load i64, i64* %15, align 8
  %324 = call i32 @integer_all_onesp(i64 %323)
  %325 = icmp ne i32 %324, 0
  %326 = xor i1 %325, true
  br label %327

327:                                              ; preds = %322, %316
  %328 = phi i1 [ false, %316 ], [ %326, %322 ]
  br label %329

329:                                              ; preds = %327, %311
  %330 = phi i1 [ true, %311 ], [ %328, %327 ]
  %331 = zext i1 %330 to i32
  store i32 %331, i32* %22, align 4
  store i32 1, i32* %25, align 4
  br label %332

332:                                              ; preds = %329, %307, %303
  br label %891

333:                                              ; preds = %104, %104, %104, %104, %104
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* @INTEGER_TYPE, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %353, label %337

337:                                              ; preds = %333
  %338 = load i32, i32* %12, align 4
  %339 = load i32, i32* @POINTER_TYPE, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %353, label %341

341:                                              ; preds = %337
  %342 = load i32, i32* %12, align 4
  %343 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %353, label %345

345:                                              ; preds = %341
  %346 = load i32, i32* %12, align 4
  %347 = load i32, i32* @REAL_TYPE, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %353, label %349

349:                                              ; preds = %345
  %350 = load i32, i32* %12, align 4
  %351 = load i32, i32* @COMPLEX_TYPE, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %379

353:                                              ; preds = %349, %345, %341, %337, %333
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* @INTEGER_TYPE, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %373, label %357

357:                                              ; preds = %353
  %358 = load i32, i32* %13, align 4
  %359 = load i32, i32* @POINTER_TYPE, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %373, label %361

361:                                              ; preds = %357
  %362 = load i32, i32* %13, align 4
  %363 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %373, label %365

365:                                              ; preds = %361
  %366 = load i32, i32* %13, align 4
  %367 = load i32, i32* @REAL_TYPE, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %373, label %369

369:                                              ; preds = %365
  %370 = load i32, i32* %13, align 4
  %371 = load i32, i32* @COMPLEX_TYPE, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %379

373:                                              ; preds = %369, %365, %361, %357, %353
  %374 = load i64, i64* @integer_type_node, align 8
  store i64 %374, i64* %18, align 8
  %375 = load i64, i64* %14, align 8
  %376 = call i64 @c_common_truthvalue_conversion(i64 %375)
  store i64 %376, i64* %14, align 8
  %377 = load i64, i64* %15, align 8
  %378 = call i64 @c_common_truthvalue_conversion(i64 %377)
  store i64 %378, i64* %15, align 8
  store i32 1, i32* %19, align 4
  br label %379

379:                                              ; preds = %373, %369, %349
  br label %891

380:                                              ; preds = %104
  %381 = load i32, i32* %12, align 4
  %382 = load i32, i32* @INTEGER_TYPE, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %430

384:                                              ; preds = %380
  %385 = load i32, i32* %13, align 4
  %386 = load i32, i32* @INTEGER_TYPE, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %430

388:                                              ; preds = %384
  %389 = load i64, i64* %15, align 8
  %390 = call i32 @TREE_CODE(i64 %389)
  %391 = sext i32 %390 to i64
  %392 = load i64, i64* @INTEGER_CST, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %394, label %418

394:                                              ; preds = %388
  %395 = load i64, i64* @skip_evaluation, align 8
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %418

397:                                              ; preds = %394
  %398 = load i64, i64* %15, align 8
  %399 = call i32 @tree_int_cst_sgn(i64 %398)
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %397
  %402 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %417

403:                                              ; preds = %397
  %404 = load i64, i64* %15, align 8
  %405 = call i32 @integer_zerop(i64 %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  store i32 1, i32* %24, align 4
  br label %408

408:                                              ; preds = %407, %403
  %409 = load i64, i64* %15, align 8
  %410 = load i64, i64* %10, align 8
  %411 = call i32 @TYPE_PRECISION(i64 %410)
  %412 = call i64 @compare_tree_int(i64 %409, i32 %411)
  %413 = icmp sge i64 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %408
  %415 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %416

416:                                              ; preds = %414, %408
  br label %417

417:                                              ; preds = %416, %401
  br label %418

418:                                              ; preds = %417, %394, %388
  %419 = load i64, i64* %10, align 8
  store i64 %419, i64* %18, align 8
  %420 = load i64, i64* %15, align 8
  %421 = call i64 @TREE_TYPE(i64 %420)
  %422 = call i64 @TYPE_MAIN_VARIANT(i64 %421)
  %423 = load i64, i64* @integer_type_node, align 8
  %424 = icmp ne i64 %422, %423
  br i1 %424, label %425, label %429

425:                                              ; preds = %418
  %426 = load i64, i64* @integer_type_node, align 8
  %427 = load i64, i64* %15, align 8
  %428 = call i64 @convert(i64 %426, i64 %427)
  store i64 %428, i64* %15, align 8
  br label %429

429:                                              ; preds = %425, %418
  store i32 1, i32* %19, align 4
  br label %430

430:                                              ; preds = %429, %384, %380
  br label %891

431:                                              ; preds = %104
  %432 = load i32, i32* %12, align 4
  %433 = load i32, i32* @INTEGER_TYPE, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %476

435:                                              ; preds = %431
  %436 = load i32, i32* %13, align 4
  %437 = load i32, i32* @INTEGER_TYPE, align 4
  %438 = icmp eq i32 %436, %437
  br i1 %438, label %439, label %476

439:                                              ; preds = %435
  %440 = load i64, i64* %15, align 8
  %441 = call i32 @TREE_CODE(i64 %440)
  %442 = sext i32 %441 to i64
  %443 = load i64, i64* @INTEGER_CST, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %445, label %464

445:                                              ; preds = %439
  %446 = load i64, i64* @skip_evaluation, align 8
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %448, label %464

448:                                              ; preds = %445
  %449 = load i64, i64* %15, align 8
  %450 = call i32 @tree_int_cst_sgn(i64 %449)
  %451 = icmp slt i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %448
  %453 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %463

454:                                              ; preds = %448
  %455 = load i64, i64* %15, align 8
  %456 = load i64, i64* %10, align 8
  %457 = call i32 @TYPE_PRECISION(i64 %456)
  %458 = call i64 @compare_tree_int(i64 %455, i32 %457)
  %459 = icmp sge i64 %458, 0
  br i1 %459, label %460, label %462

460:                                              ; preds = %454
  %461 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %462

462:                                              ; preds = %460, %454
  br label %463

463:                                              ; preds = %462, %452
  br label %464

464:                                              ; preds = %463, %445, %439
  %465 = load i64, i64* %10, align 8
  store i64 %465, i64* %18, align 8
  %466 = load i64, i64* %15, align 8
  %467 = call i64 @TREE_TYPE(i64 %466)
  %468 = call i64 @TYPE_MAIN_VARIANT(i64 %467)
  %469 = load i64, i64* @integer_type_node, align 8
  %470 = icmp ne i64 %468, %469
  br i1 %470, label %471, label %475

471:                                              ; preds = %464
  %472 = load i64, i64* @integer_type_node, align 8
  %473 = load i64, i64* %15, align 8
  %474 = call i64 @convert(i64 %472, i64 %473)
  store i64 %474, i64* %15, align 8
  br label %475

475:                                              ; preds = %471, %464
  store i32 1, i32* %19, align 4
  br label %476

476:                                              ; preds = %475, %435, %431
  br label %891

477:                                              ; preds = %104, %104
  %478 = load i32, i32* %12, align 4
  %479 = load i32, i32* @REAL_TYPE, align 4
  %480 = icmp eq i32 %478, %479
  br i1 %480, label %485, label %481

481:                                              ; preds = %477
  %482 = load i32, i32* %13, align 4
  %483 = load i32, i32* @REAL_TYPE, align 4
  %484 = icmp eq i32 %482, %483
  br i1 %484, label %485, label %488

485:                                              ; preds = %481, %477
  %486 = load i32, i32* @OPT_Wfloat_equal, align 4
  %487 = call i32 (i32, i8*, ...) @warning(i32 %486, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %488

488:                                              ; preds = %485, %481
  %489 = load i64, i64* @integer_type_node, align 8
  store i64 %489, i64* %20, align 8
  %490 = load i32, i32* %12, align 4
  %491 = load i32, i32* @INTEGER_TYPE, align 4
  %492 = icmp eq i32 %490, %491
  br i1 %492, label %501, label %493

493:                                              ; preds = %488
  %494 = load i32, i32* %12, align 4
  %495 = load i32, i32* @REAL_TYPE, align 4
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %501, label %497

497:                                              ; preds = %493
  %498 = load i32, i32* %12, align 4
  %499 = load i32, i32* @COMPLEX_TYPE, align 4
  %500 = icmp eq i32 %498, %499
  br i1 %500, label %501, label %514

501:                                              ; preds = %497, %493, %488
  %502 = load i32, i32* %13, align 4
  %503 = load i32, i32* @INTEGER_TYPE, align 4
  %504 = icmp eq i32 %502, %503
  br i1 %504, label %513, label %505

505:                                              ; preds = %501
  %506 = load i32, i32* %13, align 4
  %507 = load i32, i32* @REAL_TYPE, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %513, label %509

509:                                              ; preds = %505
  %510 = load i32, i32* %13, align 4
  %511 = load i32, i32* @COMPLEX_TYPE, align 4
  %512 = icmp eq i32 %510, %511
  br i1 %512, label %513, label %514

513:                                              ; preds = %509, %505, %501
  store i32 1, i32* %23, align 4
  br label %760

514:                                              ; preds = %509, %497
  %515 = load i32, i32* %12, align 4
  %516 = load i32, i32* @POINTER_TYPE, align 4
  %517 = icmp eq i32 %515, %516
  br i1 %517, label %522, label %518

518:                                              ; preds = %514
  %519 = load i32, i32* %12, align 4
  %520 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %521 = icmp eq i32 %519, %520
  br i1 %521, label %522, label %627

522:                                              ; preds = %518, %514
  %523 = load i32, i32* %13, align 4
  %524 = load i32, i32* @POINTER_TYPE, align 4
  %525 = icmp eq i32 %523, %524
  br i1 %525, label %530, label %526

526:                                              ; preds = %522
  %527 = load i32, i32* %13, align 4
  %528 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %529 = icmp eq i32 %527, %528
  br i1 %529, label %530, label %627

530:                                              ; preds = %526, %522
  %531 = load i64, i64* %10, align 8
  %532 = call i64 @TREE_TYPE(i64 %531)
  store i64 %532, i64* %29, align 8
  %533 = load i64, i64* %11, align 8
  %534 = call i64 @TREE_TYPE(i64 %533)
  store i64 %534, i64* %30, align 8
  %535 = load i64, i64* %10, align 8
  %536 = load i64, i64* %11, align 8
  %537 = call i32 @comp_target_types(i64 %535, i64 %536)
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %543

539:                                              ; preds = %530
  %540 = load i64, i64* %10, align 8
  %541 = load i64, i64* %11, align 8
  %542 = call i64 @common_pointer_type(i64 %540, i64 %541)
  store i64 %542, i64* %18, align 8
  br label %620

543:                                              ; preds = %530
  %544 = load i32, i32* %13, align 4
  %545 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %546 = icmp eq i32 %544, %545
  br i1 %546, label %547, label %552

547:                                              ; preds = %543
  %548 = load i64, i64* %29, align 8
  %549 = call i32 @VOID_TYPE_P(i64 %548)
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %547
  br label %619

552:                                              ; preds = %547, %543
  %553 = load i32, i32* %12, align 4
  %554 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %555 = icmp eq i32 %553, %554
  br i1 %555, label %556, label %561

556:                                              ; preds = %552
  %557 = load i64, i64* %30, align 8
  %558 = call i32 @VOID_TYPE_P(i64 %557)
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %561

560:                                              ; preds = %556
  br label %618

561:                                              ; preds = %556, %552
  %562 = load i64, i64* %29, align 8
  %563 = call i32 @VOID_TYPE_P(i64 %562)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %580

565:                                              ; preds = %561
  %566 = load i32, i32* @pedantic, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %579

568:                                              ; preds = %565
  %569 = load i64, i64* %7, align 8
  %570 = call i32 @null_pointer_constant_p(i64 %569)
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %579, label %572

572:                                              ; preds = %568
  %573 = load i64, i64* %30, align 8
  %574 = call i32 @TREE_CODE(i64 %573)
  %575 = load i32, i32* @FUNCTION_TYPE, align 4
  %576 = icmp eq i32 %574, %575
  br i1 %576, label %577, label %579

577:                                              ; preds = %572
  %578 = call i32 @pedwarn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  br label %579

579:                                              ; preds = %577, %572, %568, %565
  br label %617

580:                                              ; preds = %561
  %581 = load i64, i64* %30, align 8
  %582 = call i32 @VOID_TYPE_P(i64 %581)
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %599

584:                                              ; preds = %580
  %585 = load i32, i32* @pedantic, align 4
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %598

587:                                              ; preds = %584
  %588 = load i64, i64* %8, align 8
  %589 = call i32 @null_pointer_constant_p(i64 %588)
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %598, label %591

591:                                              ; preds = %587
  %592 = load i64, i64* %29, align 8
  %593 = call i32 @TREE_CODE(i64 %592)
  %594 = load i32, i32* @FUNCTION_TYPE, align 4
  %595 = icmp eq i32 %593, %594
  br i1 %595, label %596, label %598

596:                                              ; preds = %591
  %597 = call i32 @pedwarn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  br label %598

598:                                              ; preds = %596, %591, %587, %584
  br label %616

599:                                              ; preds = %580
  %600 = load i32, i32* %26, align 4
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %615, label %602

602:                                              ; preds = %599
  %603 = load i32, i32* %12, align 4
  %604 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %605 = icmp eq i32 %603, %604
  br i1 %605, label %610, label %606

606:                                              ; preds = %602
  %607 = load i32, i32* %13, align 4
  %608 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %609 = icmp eq i32 %607, %608
  br i1 %609, label %610, label %612

610:                                              ; preds = %606, %602
  %611 = call i32 @pedwarn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  br label %614

612:                                              ; preds = %606
  %613 = call i32 @pedwarn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  br label %614

614:                                              ; preds = %612, %610
  br label %615

615:                                              ; preds = %614, %599
  br label %616

616:                                              ; preds = %615, %598
  br label %617

617:                                              ; preds = %616, %579
  br label %618

618:                                              ; preds = %617, %560
  br label %619

619:                                              ; preds = %618, %551
  br label %620

620:                                              ; preds = %619, %539
  %621 = load i64, i64* %18, align 8
  %622 = load i64, i64* @NULL_TREE, align 8
  %623 = icmp eq i64 %621, %622
  br i1 %623, label %624, label %626

624:                                              ; preds = %620
  %625 = load i64, i64* @ptr_type_node, align 8
  store i64 %625, i64* %18, align 8
  br label %626

626:                                              ; preds = %624, %620
  br label %759

627:                                              ; preds = %526, %518
  %628 = load i32, i32* %12, align 4
  %629 = load i32, i32* @POINTER_TYPE, align 4
  %630 = icmp eq i32 %628, %629
  br i1 %630, label %631, label %669

631:                                              ; preds = %627
  %632 = load i64, i64* %8, align 8
  %633 = call i32 @null_pointer_constant_p(i64 %632)
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %669

635:                                              ; preds = %631
  %636 = load i64, i64* %14, align 8
  %637 = call i32 @TREE_CODE(i64 %636)
  %638 = load i32, i32* @ADDR_EXPR, align 4
  %639 = icmp eq i32 %637, %638
  br i1 %639, label %640, label %667

640:                                              ; preds = %635
  %641 = load i64, i64* %14, align 8
  %642 = call i64 @TREE_OPERAND(i64 %641, i32 0)
  %643 = call i32 @DECL_P(i64 %642)
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %667

645:                                              ; preds = %640
  %646 = load i64, i64* %14, align 8
  %647 = call i64 @TREE_OPERAND(i64 %646, i32 0)
  %648 = call i32 @TREE_CODE(i64 %647)
  %649 = load i32, i32* @PARM_DECL, align 4
  %650 = icmp eq i32 %648, %649
  br i1 %650, label %662, label %651

651:                                              ; preds = %645
  %652 = load i64, i64* %14, align 8
  %653 = call i64 @TREE_OPERAND(i64 %652, i32 0)
  %654 = call i32 @TREE_CODE(i64 %653)
  %655 = load i32, i32* @LABEL_DECL, align 4
  %656 = icmp eq i32 %654, %655
  br i1 %656, label %662, label %657

657:                                              ; preds = %651
  %658 = load i64, i64* %14, align 8
  %659 = call i64 @TREE_OPERAND(i64 %658, i32 0)
  %660 = call i32 @DECL_WEAK(i64 %659)
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %667, label %662

662:                                              ; preds = %657, %651, %645
  %663 = load i32, i32* @OPT_Waddress, align 4
  %664 = load i64, i64* %14, align 8
  %665 = call i64 @TREE_OPERAND(i64 %664, i32 0)
  %666 = call i32 (i32, i8*, ...) @warning(i32 %663, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i64 %665)
  br label %667

667:                                              ; preds = %662, %657, %640, %635
  %668 = load i64, i64* %10, align 8
  store i64 %668, i64* %18, align 8
  br label %758

669:                                              ; preds = %631, %627
  %670 = load i32, i32* %13, align 4
  %671 = load i32, i32* @POINTER_TYPE, align 4
  %672 = icmp eq i32 %670, %671
  br i1 %672, label %673, label %711

673:                                              ; preds = %669
  %674 = load i64, i64* %7, align 8
  %675 = call i32 @null_pointer_constant_p(i64 %674)
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %711

677:                                              ; preds = %673
  %678 = load i64, i64* %15, align 8
  %679 = call i32 @TREE_CODE(i64 %678)
  %680 = load i32, i32* @ADDR_EXPR, align 4
  %681 = icmp eq i32 %679, %680
  br i1 %681, label %682, label %709

682:                                              ; preds = %677
  %683 = load i64, i64* %15, align 8
  %684 = call i64 @TREE_OPERAND(i64 %683, i32 0)
  %685 = call i32 @DECL_P(i64 %684)
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %709

687:                                              ; preds = %682
  %688 = load i64, i64* %15, align 8
  %689 = call i64 @TREE_OPERAND(i64 %688, i32 0)
  %690 = call i32 @TREE_CODE(i64 %689)
  %691 = load i32, i32* @PARM_DECL, align 4
  %692 = icmp eq i32 %690, %691
  br i1 %692, label %704, label %693

693:                                              ; preds = %687
  %694 = load i64, i64* %15, align 8
  %695 = call i64 @TREE_OPERAND(i64 %694, i32 0)
  %696 = call i32 @TREE_CODE(i64 %695)
  %697 = load i32, i32* @LABEL_DECL, align 4
  %698 = icmp eq i32 %696, %697
  br i1 %698, label %704, label %699

699:                                              ; preds = %693
  %700 = load i64, i64* %15, align 8
  %701 = call i64 @TREE_OPERAND(i64 %700, i32 0)
  %702 = call i32 @DECL_WEAK(i64 %701)
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %709, label %704

704:                                              ; preds = %699, %693, %687
  %705 = load i32, i32* @OPT_Waddress, align 4
  %706 = load i64, i64* %15, align 8
  %707 = call i64 @TREE_OPERAND(i64 %706, i32 0)
  %708 = call i32 (i32, i8*, ...) @warning(i32 %705, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i64 %707)
  br label %709

709:                                              ; preds = %704, %699, %682, %677
  %710 = load i64, i64* %11, align 8
  store i64 %710, i64* %18, align 8
  br label %757

711:                                              ; preds = %673, %669
  %712 = load i32, i32* %12, align 4
  %713 = load i32, i32* @POINTER_TYPE, align 4
  %714 = icmp eq i32 %712, %713
  br i1 %714, label %715, label %722

715:                                              ; preds = %711
  %716 = load i32, i32* %13, align 4
  %717 = load i32, i32* @INTEGER_TYPE, align 4
  %718 = icmp eq i32 %716, %717
  br i1 %718, label %719, label %722

719:                                              ; preds = %715
  %720 = load i64, i64* %10, align 8
  store i64 %720, i64* %18, align 8
  %721 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  br label %756

722:                                              ; preds = %715, %711
  %723 = load i32, i32* %12, align 4
  %724 = load i32, i32* @INTEGER_TYPE, align 4
  %725 = icmp eq i32 %723, %724
  br i1 %725, label %726, label %733

726:                                              ; preds = %722
  %727 = load i32, i32* %13, align 4
  %728 = load i32, i32* @POINTER_TYPE, align 4
  %729 = icmp eq i32 %727, %728
  br i1 %729, label %730, label %733

730:                                              ; preds = %726
  %731 = load i64, i64* %11, align 8
  store i64 %731, i64* %18, align 8
  %732 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  br label %755

733:                                              ; preds = %726, %722
  %734 = load i32, i32* %12, align 4
  %735 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %736 = icmp eq i32 %734, %735
  br i1 %736, label %737, label %743

737:                                              ; preds = %733
  %738 = load i64, i64* %8, align 8
  %739 = call i32 @null_pointer_constant_p(i64 %738)
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %743

741:                                              ; preds = %737
  %742 = load i64, i64* %10, align 8
  store i64 %742, i64* %18, align 8
  br label %754

743:                                              ; preds = %737, %733
  %744 = load i32, i32* %13, align 4
  %745 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %746 = icmp eq i32 %744, %745
  br i1 %746, label %747, label %753

747:                                              ; preds = %743
  %748 = load i64, i64* %7, align 8
  %749 = call i32 @null_pointer_constant_p(i64 %748)
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %751, label %753

751:                                              ; preds = %747
  %752 = load i64, i64* %11, align 8
  store i64 %752, i64* %18, align 8
  br label %753

753:                                              ; preds = %751, %747, %743
  br label %754

754:                                              ; preds = %753, %741
  br label %755

755:                                              ; preds = %754, %730
  br label %756

756:                                              ; preds = %755, %719
  br label %757

757:                                              ; preds = %756, %709
  br label %758

758:                                              ; preds = %757, %667
  br label %759

759:                                              ; preds = %758, %626
  br label %760

760:                                              ; preds = %759, %513
  br label %891

761:                                              ; preds = %104, %104, %104, %104
  %762 = load i64, i64* @integer_type_node, align 8
  store i64 %762, i64* %20, align 8
  %763 = load i32, i32* %12, align 4
  %764 = load i32, i32* @INTEGER_TYPE, align 4
  %765 = icmp eq i32 %763, %764
  br i1 %765, label %770, label %766

766:                                              ; preds = %761
  %767 = load i32, i32* %12, align 4
  %768 = load i32, i32* @REAL_TYPE, align 4
  %769 = icmp eq i32 %767, %768
  br i1 %769, label %770, label %779

770:                                              ; preds = %766, %761
  %771 = load i32, i32* %13, align 4
  %772 = load i32, i32* @INTEGER_TYPE, align 4
  %773 = icmp eq i32 %771, %772
  br i1 %773, label %778, label %774

774:                                              ; preds = %770
  %775 = load i32, i32* %13, align 4
  %776 = load i32, i32* @REAL_TYPE, align 4
  %777 = icmp eq i32 %775, %776
  br i1 %777, label %778, label %779

778:                                              ; preds = %774, %770
  store i32 1, i32* %23, align 4
  br label %888

779:                                              ; preds = %774, %766
  %780 = load i32, i32* %12, align 4
  %781 = load i32, i32* @POINTER_TYPE, align 4
  %782 = icmp eq i32 %780, %781
  br i1 %782, label %783, label %828

783:                                              ; preds = %779
  %784 = load i32, i32* %13, align 4
  %785 = load i32, i32* @POINTER_TYPE, align 4
  %786 = icmp eq i32 %784, %785
  br i1 %786, label %787, label %828

787:                                              ; preds = %783
  %788 = load i64, i64* %10, align 8
  %789 = load i64, i64* %11, align 8
  %790 = call i32 @comp_target_types(i64 %788, i64 %789)
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %824

792:                                              ; preds = %787
  %793 = load i64, i64* %10, align 8
  %794 = load i64, i64* %11, align 8
  %795 = call i64 @common_pointer_type(i64 %793, i64 %794)
  store i64 %795, i64* %18, align 8
  %796 = load i64, i64* %10, align 8
  %797 = call i64 @TREE_TYPE(i64 %796)
  %798 = call i32 @COMPLETE_TYPE_P(i64 %797)
  %799 = icmp ne i32 %798, 0
  %800 = xor i1 %799, true
  %801 = zext i1 %800 to i32
  %802 = load i64, i64* %11, align 8
  %803 = call i64 @TREE_TYPE(i64 %802)
  %804 = call i32 @COMPLETE_TYPE_P(i64 %803)
  %805 = icmp ne i32 %804, 0
  %806 = xor i1 %805, true
  %807 = zext i1 %806 to i32
  %808 = icmp ne i32 %801, %807
  br i1 %808, label %809, label %811

809:                                              ; preds = %792
  %810 = call i32 @pedwarn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  br label %823

811:                                              ; preds = %792
  %812 = load i32, i32* @pedantic, align 4
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %814, label %822

814:                                              ; preds = %811
  %815 = load i64, i64* %10, align 8
  %816 = call i64 @TREE_TYPE(i64 %815)
  %817 = call i32 @TREE_CODE(i64 %816)
  %818 = load i32, i32* @FUNCTION_TYPE, align 4
  %819 = icmp eq i32 %817, %818
  br i1 %819, label %820, label %822

820:                                              ; preds = %814
  %821 = call i32 @pedwarn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0))
  br label %822

822:                                              ; preds = %820, %814, %811
  br label %823

823:                                              ; preds = %822, %809
  br label %827

824:                                              ; preds = %787
  %825 = load i64, i64* @ptr_type_node, align 8
  store i64 %825, i64* %18, align 8
  %826 = call i32 @pedwarn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  br label %827

827:                                              ; preds = %824, %823
  br label %887

828:                                              ; preds = %783, %779
  %829 = load i32, i32* %12, align 4
  %830 = load i32, i32* @POINTER_TYPE, align 4
  %831 = icmp eq i32 %829, %830
  br i1 %831, label %832, label %846

832:                                              ; preds = %828
  %833 = load i64, i64* %8, align 8
  %834 = call i32 @null_pointer_constant_p(i64 %833)
  %835 = icmp ne i32 %834, 0
  br i1 %835, label %836, label %846

836:                                              ; preds = %832
  %837 = load i64, i64* %10, align 8
  store i64 %837, i64* %18, align 8
  %838 = load i32, i32* @pedantic, align 4
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %843, label %840

840:                                              ; preds = %836
  %841 = load i32, i32* @extra_warnings, align 4
  %842 = icmp ne i32 %841, 0
  br i1 %842, label %843, label %845

843:                                              ; preds = %840, %836
  %844 = call i32 @pedwarn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  br label %845

845:                                              ; preds = %843, %840
  br label %886

846:                                              ; preds = %832, %828
  %847 = load i32, i32* %13, align 4
  %848 = load i32, i32* @POINTER_TYPE, align 4
  %849 = icmp eq i32 %847, %848
  br i1 %849, label %850, label %861

850:                                              ; preds = %846
  %851 = load i64, i64* %7, align 8
  %852 = call i32 @null_pointer_constant_p(i64 %851)
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %854, label %861

854:                                              ; preds = %850
  %855 = load i64, i64* %11, align 8
  store i64 %855, i64* %18, align 8
  %856 = load i32, i32* @pedantic, align 4
  %857 = icmp ne i32 %856, 0
  br i1 %857, label %858, label %860

858:                                              ; preds = %854
  %859 = call i32 @pedwarn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  br label %860

860:                                              ; preds = %858, %854
  br label %885

861:                                              ; preds = %850, %846
  %862 = load i32, i32* %12, align 4
  %863 = load i32, i32* @POINTER_TYPE, align 4
  %864 = icmp eq i32 %862, %863
  br i1 %864, label %865, label %872

865:                                              ; preds = %861
  %866 = load i32, i32* %13, align 4
  %867 = load i32, i32* @INTEGER_TYPE, align 4
  %868 = icmp eq i32 %866, %867
  br i1 %868, label %869, label %872

869:                                              ; preds = %865
  %870 = load i64, i64* %10, align 8
  store i64 %870, i64* %18, align 8
  %871 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  br label %884

872:                                              ; preds = %865, %861
  %873 = load i32, i32* %12, align 4
  %874 = load i32, i32* @INTEGER_TYPE, align 4
  %875 = icmp eq i32 %873, %874
  br i1 %875, label %876, label %883

876:                                              ; preds = %872
  %877 = load i32, i32* %13, align 4
  %878 = load i32, i32* @POINTER_TYPE, align 4
  %879 = icmp eq i32 %877, %878
  br i1 %879, label %880, label %883

880:                                              ; preds = %876
  %881 = load i64, i64* %11, align 8
  store i64 %881, i64* %18, align 8
  %882 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  br label %883

883:                                              ; preds = %880, %876, %872
  br label %884

884:                                              ; preds = %883, %869
  br label %885

885:                                              ; preds = %884, %860
  br label %886

886:                                              ; preds = %885, %845
  br label %887

887:                                              ; preds = %886, %827
  br label %888

888:                                              ; preds = %887, %778
  br label %891

889:                                              ; preds = %104
  %890 = call i32 (...) @gcc_unreachable()
  br label %891

891:                                              ; preds = %889, %888, %760, %476, %430, %379, %332, %292, %272, %169, %168, %136
  %892 = load i32, i32* %12, align 4
  %893 = load i32, i32* @ERROR_MARK, align 4
  %894 = icmp eq i32 %892, %893
  br i1 %894, label %899, label %895

895:                                              ; preds = %891
  %896 = load i32, i32* %13, align 4
  %897 = load i32, i32* @ERROR_MARK, align 4
  %898 = icmp eq i32 %896, %897
  br i1 %898, label %899, label %901

899:                                              ; preds = %895, %891
  %900 = load i64, i64* @error_mark_node, align 8
  store i64 %900, i64* %5, align 8
  br label %1488

901:                                              ; preds = %895
  %902 = load i32, i32* %12, align 4
  %903 = load i32, i32* @VECTOR_TYPE, align 4
  %904 = icmp eq i32 %902, %903
  br i1 %904, label %905, label %929

905:                                              ; preds = %901
  %906 = load i32, i32* %13, align 4
  %907 = load i32, i32* @VECTOR_TYPE, align 4
  %908 = icmp eq i32 %906, %907
  br i1 %908, label %909, label %929

909:                                              ; preds = %905
  %910 = load i64, i64* %10, align 8
  %911 = call i32 @TYPE_SIZE(i64 %910)
  %912 = load i64, i64* %11, align 8
  %913 = call i32 @TYPE_SIZE(i64 %912)
  %914 = call i32 @tree_int_cst_equal(i32 %911, i32 %913)
  %915 = icmp ne i32 %914, 0
  br i1 %915, label %916, label %923

916:                                              ; preds = %909
  %917 = load i64, i64* %10, align 8
  %918 = call i64 @TREE_TYPE(i64 %917)
  %919 = load i64, i64* %11, align 8
  %920 = call i64 @TREE_TYPE(i64 %919)
  %921 = call i32 @same_scalar_type_ignoring_signedness(i64 %918, i64 %920)
  %922 = icmp ne i32 %921, 0
  br i1 %922, label %929, label %923

923:                                              ; preds = %916, %909
  %924 = load i32, i32* %6, align 4
  %925 = load i64, i64* %10, align 8
  %926 = load i64, i64* %11, align 8
  %927 = call i32 @binary_op_error(i32 %924, i64 %925, i64 %926)
  %928 = load i64, i64* @error_mark_node, align 8
  store i64 %928, i64* %5, align 8
  br label %1488

929:                                              ; preds = %916, %905, %901
  %930 = load i32, i32* %12, align 4
  %931 = load i32, i32* @INTEGER_TYPE, align 4
  %932 = icmp eq i32 %930, %931
  br i1 %932, label %945, label %933

933:                                              ; preds = %929
  %934 = load i32, i32* %12, align 4
  %935 = load i32, i32* @REAL_TYPE, align 4
  %936 = icmp eq i32 %934, %935
  br i1 %936, label %945, label %937

937:                                              ; preds = %933
  %938 = load i32, i32* %12, align 4
  %939 = load i32, i32* @COMPLEX_TYPE, align 4
  %940 = icmp eq i32 %938, %939
  br i1 %940, label %945, label %941

941:                                              ; preds = %937
  %942 = load i32, i32* %12, align 4
  %943 = load i32, i32* @VECTOR_TYPE, align 4
  %944 = icmp eq i32 %942, %943
  br i1 %944, label %945, label %1412

945:                                              ; preds = %941, %937, %933, %929
  %946 = load i32, i32* %13, align 4
  %947 = load i32, i32* @INTEGER_TYPE, align 4
  %948 = icmp eq i32 %946, %947
  br i1 %948, label %961, label %949

949:                                              ; preds = %945
  %950 = load i32, i32* %13, align 4
  %951 = load i32, i32* @REAL_TYPE, align 4
  %952 = icmp eq i32 %950, %951
  br i1 %952, label %961, label %953

953:                                              ; preds = %949
  %954 = load i32, i32* %13, align 4
  %955 = load i32, i32* @COMPLEX_TYPE, align 4
  %956 = icmp eq i32 %954, %955
  br i1 %956, label %961, label %957

957:                                              ; preds = %953
  %958 = load i32, i32* %13, align 4
  %959 = load i32, i32* @VECTOR_TYPE, align 4
  %960 = icmp eq i32 %958, %959
  br i1 %960, label %961, label %1412

961:                                              ; preds = %957, %953, %949, %945
  %962 = load i32, i32* %12, align 4
  %963 = load i32, i32* @COMPLEX_TYPE, align 4
  %964 = icmp ne i32 %962, %963
  br i1 %964, label %965, label %969

965:                                              ; preds = %961
  %966 = load i32, i32* %13, align 4
  %967 = load i32, i32* @COMPLEX_TYPE, align 4
  %968 = icmp ne i32 %966, %967
  br label %969

969:                                              ; preds = %965, %961
  %970 = phi i1 [ false, %961 ], [ %968, %965 ]
  %971 = zext i1 %970 to i32
  store i32 %971, i32* %31, align 4
  %972 = load i32, i32* %22, align 4
  %973 = icmp ne i32 %972, 0
  br i1 %973, label %980, label %974

974:                                              ; preds = %969
  %975 = load i32, i32* %25, align 4
  %976 = icmp ne i32 %975, 0
  br i1 %976, label %980, label %977

977:                                              ; preds = %974
  %978 = load i32, i32* %23, align 4
  %979 = icmp ne i32 %978, 0
  br i1 %979, label %980, label %984

980:                                              ; preds = %977, %974, %969
  %981 = load i64, i64* %10, align 8
  %982 = load i64, i64* %11, align 8
  %983 = call i64 @c_common_type(i64 %981, i64 %982)
  store i64 %983, i64* %18, align 8
  br label %984

984:                                              ; preds = %980, %977
  %985 = load i32, i32* %22, align 4
  %986 = icmp ne i32 %985, 0
  br i1 %986, label %987, label %1138

987:                                              ; preds = %984
  %988 = load i32, i32* %31, align 4
  %989 = icmp ne i32 %988, 0
  br i1 %989, label %990, label %1138

990:                                              ; preds = %987
  %991 = load i64, i64* %18, align 8
  %992 = load i64, i64* %14, align 8
  %993 = call i64 @convert(i64 %991, i64 %992)
  store i64 %993, i64* %14, align 8
  %994 = load i64, i64* %18, align 8
  %995 = load i64, i64* %15, align 8
  %996 = call i64 @convert(i64 %994, i64 %995)
  store i64 %996, i64* %15, align 8
  %997 = load i64, i64* %14, align 8
  %998 = call i64 @get_narrower(i64 %997, i32* %32)
  store i64 %998, i64* %34, align 8
  %999 = load i64, i64* %15, align 8
  %1000 = call i64 @get_narrower(i64 %999, i32* %33)
  store i64 %1000, i64* %35, align 8
  %1001 = load i64, i64* %18, align 8
  %1002 = call i32 @TYPE_UNSIGNED(i64 %1001)
  store i32 %1002, i32* %36, align 4
  %1003 = load i64, i64* %18, align 8
  store i64 %1003, i64* %21, align 8
  %1004 = load i64, i64* %14, align 8
  %1005 = call i64 @TREE_TYPE(i64 %1004)
  %1006 = call i32 @TYPE_PRECISION(i64 %1005)
  %1007 = load i64, i64* %34, align 8
  %1008 = call i64 @TREE_TYPE(i64 %1007)
  %1009 = call i32 @TYPE_PRECISION(i64 %1008)
  %1010 = icmp eq i32 %1006, %1009
  br i1 %1010, label %1011, label %1020

1011:                                             ; preds = %990
  %1012 = load i64, i64* %14, align 8
  %1013 = call i64 @TREE_TYPE(i64 %1012)
  %1014 = load i64, i64* %21, align 8
  %1015 = icmp ne i64 %1013, %1014
  br i1 %1015, label %1016, label %1020

1016:                                             ; preds = %1011
  %1017 = load i64, i64* %14, align 8
  %1018 = call i64 @TREE_TYPE(i64 %1017)
  %1019 = call i32 @TYPE_UNSIGNED(i64 %1018)
  store i32 %1019, i32* %32, align 4
  br label %1020

1020:                                             ; preds = %1016, %1011, %990
  %1021 = load i64, i64* %15, align 8
  %1022 = call i64 @TREE_TYPE(i64 %1021)
  %1023 = call i32 @TYPE_PRECISION(i64 %1022)
  %1024 = load i64, i64* %35, align 8
  %1025 = call i64 @TREE_TYPE(i64 %1024)
  %1026 = call i32 @TYPE_PRECISION(i64 %1025)
  %1027 = icmp eq i32 %1023, %1026
  br i1 %1027, label %1028, label %1037

1028:                                             ; preds = %1020
  %1029 = load i64, i64* %15, align 8
  %1030 = call i64 @TREE_TYPE(i64 %1029)
  %1031 = load i64, i64* %21, align 8
  %1032 = icmp ne i64 %1030, %1031
  br i1 %1032, label %1033, label %1037

1033:                                             ; preds = %1028
  %1034 = load i64, i64* %15, align 8
  %1035 = call i64 @TREE_TYPE(i64 %1034)
  %1036 = call i32 @TYPE_UNSIGNED(i64 %1035)
  store i32 %1036, i32* %33, align 4
  br label %1037

1037:                                             ; preds = %1033, %1028, %1020
  %1038 = load i32, i32* %22, align 4
  %1039 = icmp eq i32 %1038, -1
  br i1 %1039, label %1040, label %1042

1040:                                             ; preds = %1037
  %1041 = load i32, i32* %32, align 4
  store i32 %1041, i32* %36, align 4
  br label %1042

1042:                                             ; preds = %1040, %1037
  %1043 = load i64, i64* %34, align 8
  %1044 = call i64 @TREE_TYPE(i64 %1043)
  %1045 = call i32 @TYPE_PRECISION(i64 %1044)
  %1046 = load i64, i64* %18, align 8
  %1047 = call i32 @TYPE_PRECISION(i64 %1046)
  %1048 = icmp slt i32 %1045, %1047
  br i1 %1048, label %1049, label %1075

1049:                                             ; preds = %1042
  %1050 = load i64, i64* %35, align 8
  %1051 = call i64 @TREE_TYPE(i64 %1050)
  %1052 = call i32 @TYPE_PRECISION(i64 %1051)
  %1053 = load i64, i64* %34, align 8
  %1054 = call i64 @TREE_TYPE(i64 %1053)
  %1055 = call i32 @TYPE_PRECISION(i64 %1054)
  %1056 = icmp eq i32 %1052, %1055
  br i1 %1056, label %1057, label %1075

1057:                                             ; preds = %1049
  %1058 = load i32, i32* %32, align 4
  %1059 = load i32, i32* %33, align 4
  %1060 = icmp eq i32 %1058, %1059
  br i1 %1060, label %1061, label %1075

1061:                                             ; preds = %1057
  %1062 = load i32, i32* %32, align 4
  %1063 = icmp ne i32 %1062, 0
  br i1 %1063, label %1067, label %1064

1064:                                             ; preds = %1061
  %1065 = load i32, i32* %36, align 4
  %1066 = icmp ne i32 %1065, 0
  br i1 %1066, label %1075, label %1067

1067:                                             ; preds = %1064, %1061
  %1068 = load i32, i32* %32, align 4
  %1069 = load i64, i64* %34, align 8
  %1070 = call i64 @TREE_TYPE(i64 %1069)
  %1071 = load i64, i64* %35, align 8
  %1072 = call i64 @TREE_TYPE(i64 %1071)
  %1073 = call i64 @common_type(i64 %1070, i64 %1072)
  %1074 = call i64 @c_common_signed_or_unsigned_type(i32 %1068, i64 %1073)
  store i64 %1074, i64* %18, align 8
  br label %1137

1075:                                             ; preds = %1064, %1057, %1049, %1042
  %1076 = load i64, i64* %34, align 8
  %1077 = call i32 @TREE_CODE(i64 %1076)
  %1078 = sext i32 %1077 to i64
  %1079 = load i64, i64* @INTEGER_CST, align 8
  %1080 = icmp eq i64 %1078, %1079
  br i1 %1080, label %1081, label %1105

1081:                                             ; preds = %1075
  %1082 = load i32, i32* %33, align 4
  %1083 = icmp ne i32 %1082, 0
  br i1 %1083, label %1087, label %1084

1084:                                             ; preds = %1081
  %1085 = load i32, i32* %36, align 4
  %1086 = icmp ne i32 %1085, 0
  br i1 %1086, label %1105, label %1087

1087:                                             ; preds = %1084, %1081
  %1088 = load i64, i64* %35, align 8
  %1089 = call i64 @TREE_TYPE(i64 %1088)
  %1090 = call i32 @TYPE_PRECISION(i64 %1089)
  %1091 = load i64, i64* %18, align 8
  %1092 = call i32 @TYPE_PRECISION(i64 %1091)
  %1093 = icmp slt i32 %1090, %1092
  br i1 %1093, label %1094, label %1105

1094:                                             ; preds = %1087
  %1095 = load i32, i32* %33, align 4
  %1096 = load i64, i64* %35, align 8
  %1097 = call i64 @TREE_TYPE(i64 %1096)
  %1098 = call i64 @c_common_signed_or_unsigned_type(i32 %1095, i64 %1097)
  store i64 %1098, i64* %37, align 8
  %1099 = load i64, i64* %34, align 8
  %1100 = load i64, i64* %37, align 8
  %1101 = call i64 @int_fits_type_p(i64 %1099, i64 %1100)
  %1102 = icmp ne i64 %1101, 0
  br i1 %1102, label %1103, label %1105

1103:                                             ; preds = %1094
  %1104 = load i64, i64* %37, align 8
  store i64 %1104, i64* %18, align 8
  br label %1136

1105:                                             ; preds = %1094, %1087, %1084, %1075
  %1106 = load i64, i64* %35, align 8
  %1107 = call i32 @TREE_CODE(i64 %1106)
  %1108 = sext i32 %1107 to i64
  %1109 = load i64, i64* @INTEGER_CST, align 8
  %1110 = icmp eq i64 %1108, %1109
  br i1 %1110, label %1111, label %1135

1111:                                             ; preds = %1105
  %1112 = load i32, i32* %32, align 4
  %1113 = icmp ne i32 %1112, 0
  br i1 %1113, label %1117, label %1114

1114:                                             ; preds = %1111
  %1115 = load i32, i32* %36, align 4
  %1116 = icmp ne i32 %1115, 0
  br i1 %1116, label %1135, label %1117

1117:                                             ; preds = %1114, %1111
  %1118 = load i64, i64* %34, align 8
  %1119 = call i64 @TREE_TYPE(i64 %1118)
  %1120 = call i32 @TYPE_PRECISION(i64 %1119)
  %1121 = load i64, i64* %18, align 8
  %1122 = call i32 @TYPE_PRECISION(i64 %1121)
  %1123 = icmp slt i32 %1120, %1122
  br i1 %1123, label %1124, label %1135

1124:                                             ; preds = %1117
  %1125 = load i32, i32* %32, align 4
  %1126 = load i64, i64* %34, align 8
  %1127 = call i64 @TREE_TYPE(i64 %1126)
  %1128 = call i64 @c_common_signed_or_unsigned_type(i32 %1125, i64 %1127)
  store i64 %1128, i64* %37, align 8
  %1129 = load i64, i64* %35, align 8
  %1130 = load i64, i64* %37, align 8
  %1131 = call i64 @int_fits_type_p(i64 %1129, i64 %1130)
  %1132 = icmp ne i64 %1131, 0
  br i1 %1132, label %1133, label %1135

1133:                                             ; preds = %1124
  %1134 = load i64, i64* %37, align 8
  store i64 %1134, i64* %18, align 8
  br label %1135

1135:                                             ; preds = %1133, %1124, %1117, %1114, %1105
  br label %1136

1136:                                             ; preds = %1135, %1103
  br label %1137

1137:                                             ; preds = %1136, %1067
  br label %1138

1138:                                             ; preds = %1137, %987, %984
  %1139 = load i32, i32* %24, align 4
  %1140 = icmp ne i32 %1139, 0
  br i1 %1140, label %1141, label %1193

1141:                                             ; preds = %1138
  %1142 = load i64, i64* %14, align 8
  %1143 = call i64 @get_narrower(i64 %1142, i32* %38)
  store i64 %1143, i64* %39, align 8
  %1144 = load i64, i64* %18, align 8
  store i64 %1144, i64* %21, align 8
  %1145 = load i64, i64* %39, align 8
  %1146 = load i64, i64* %14, align 8
  %1147 = icmp eq i64 %1145, %1146
  br i1 %1147, label %1148, label %1157

1148:                                             ; preds = %1141
  %1149 = load i64, i64* %21, align 8
  %1150 = load i64, i64* %14, align 8
  %1151 = call i64 @TREE_TYPE(i64 %1150)
  %1152 = icmp eq i64 %1149, %1151
  br i1 %1152, label %1153, label %1157

1153:                                             ; preds = %1148
  %1154 = load i64, i64* %14, align 8
  %1155 = call i64 @TREE_TYPE(i64 %1154)
  %1156 = call i32 @TYPE_UNSIGNED(i64 %1155)
  store i32 %1156, i32* %38, align 4
  br label %1157

1157:                                             ; preds = %1153, %1148, %1141
  %1158 = load i64, i64* %39, align 8
  %1159 = call i64 @TREE_TYPE(i64 %1158)
  %1160 = call i32 @TYPE_PRECISION(i64 %1159)
  %1161 = load i64, i64* %18, align 8
  %1162 = call i32 @TYPE_PRECISION(i64 %1161)
  %1163 = icmp slt i32 %1160, %1162
  br i1 %1163, label %1164, label %1192

1164:                                             ; preds = %1157
  %1165 = load i64, i64* %15, align 8
  %1166 = load i64, i64* %39, align 8
  %1167 = call i64 @TREE_TYPE(i64 %1166)
  %1168 = call i32 @TYPE_PRECISION(i64 %1167)
  %1169 = call i64 @compare_tree_int(i64 %1165, i32 %1168)
  %1170 = icmp slt i64 %1169, 0
  br i1 %1170, label %1171, label %1192

1171:                                             ; preds = %1164
  %1172 = load i64, i64* %21, align 8
  %1173 = call i32 @TYPE_UNSIGNED(i64 %1172)
  %1174 = icmp ne i32 %1173, 0
  br i1 %1174, label %1175, label %1178

1175:                                             ; preds = %1171
  %1176 = load i32, i32* %38, align 4
  %1177 = icmp ne i32 %1176, 0
  br i1 %1177, label %1178, label %1192

1178:                                             ; preds = %1175, %1171
  %1179 = load i32, i32* %38, align 4
  %1180 = load i64, i64* %39, align 8
  %1181 = call i64 @TREE_TYPE(i64 %1180)
  %1182 = call i64 @c_common_signed_or_unsigned_type(i32 %1179, i64 %1181)
  store i64 %1182, i64* %18, align 8
  %1183 = load i64, i64* %14, align 8
  %1184 = call i64 @TREE_TYPE(i64 %1183)
  %1185 = load i64, i64* %18, align 8
  %1186 = icmp ne i64 %1184, %1185
  br i1 %1186, label %1187, label %1191

1187:                                             ; preds = %1178
  %1188 = load i64, i64* %18, align 8
  %1189 = load i64, i64* %14, align 8
  %1190 = call i64 @convert(i64 %1188, i64 %1189)
  store i64 %1190, i64* %14, align 8
  br label %1191

1191:                                             ; preds = %1187, %1178
  store i32 1, i32* %19, align 4
  br label %1192

1192:                                             ; preds = %1191, %1175, %1164, %1157
  br label %1193

1193:                                             ; preds = %1192, %1138
  %1194 = load i32, i32* %23, align 4
  %1195 = icmp ne i32 %1194, 0
  br i1 %1195, label %1196, label %1411

1196:                                             ; preds = %1193
  %1197 = load i64, i64* %14, align 8
  store i64 %1197, i64* %40, align 8
  %1198 = load i64, i64* %15, align 8
  store i64 %1198, i64* %41, align 8
  %1199 = load i64, i64* %18, align 8
  store i64 %1199, i64* %42, align 8
  %1200 = load i32, i32* %17, align 4
  store i32 %1200, i32* %43, align 4
  %1201 = call i64 @shorten_compare(i64* %40, i64* %41, i64* %42, i32* %43)
  store i64 %1201, i64* %44, align 8
  %1202 = load i64, i64* %44, align 8
  %1203 = icmp ne i64 %1202, 0
  br i1 %1203, label %1204, label %1206

1204:                                             ; preds = %1196
  %1205 = load i64, i64* %44, align 8
  store i64 %1205, i64* %5, align 8
  br label %1488

1206:                                             ; preds = %1196
  %1207 = load i64, i64* %40, align 8
  store i64 %1207, i64* %14, align 8
  %1208 = load i64, i64* %41, align 8
  store i64 %1208, i64* %15, align 8
  store i32 1, i32* %19, align 4
  %1209 = load i32, i32* %43, align 4
  store i32 %1209, i32* %17, align 4
  %1210 = load i64, i64* @warn_sign_compare, align 8
  %1211 = icmp ne i64 %1210, 0
  br i1 %1211, label %1212, label %1410

1212:                                             ; preds = %1206
  %1213 = load i64, i64* @skip_evaluation, align 8
  %1214 = icmp eq i64 %1213, 0
  br i1 %1214, label %1215, label %1410

1215:                                             ; preds = %1212
  %1216 = load i64, i64* %7, align 8
  %1217 = call i64 @TREE_TYPE(i64 %1216)
  %1218 = call i32 @TYPE_UNSIGNED(i64 %1217)
  %1219 = icmp ne i32 %1218, 0
  %1220 = xor i1 %1219, true
  %1221 = zext i1 %1220 to i32
  store i32 %1221, i32* %45, align 4
  %1222 = load i64, i64* %8, align 8
  %1223 = call i64 @TREE_TYPE(i64 %1222)
  %1224 = call i32 @TYPE_UNSIGNED(i64 %1223)
  %1225 = icmp ne i32 %1224, 0
  %1226 = xor i1 %1225, true
  %1227 = zext i1 %1226 to i32
  store i32 %1227, i32* %46, align 4
  %1228 = load i64, i64* %14, align 8
  %1229 = call i64 @get_narrower(i64 %1228, i32* %47)
  store i64 %1229, i64* %49, align 8
  %1230 = load i64, i64* %15, align 8
  %1231 = call i64 @get_narrower(i64 %1230, i32* %48)
  store i64 %1231, i64* %50, align 8
  %1232 = load i64, i64* %7, align 8
  store i64 %1232, i64* %40, align 8
  %1233 = load i64, i64* %8, align 8
  store i64 %1233, i64* %41, align 8
  %1234 = load i64, i64* %40, align 8
  %1235 = call i32 @STRIP_TYPE_NOPS(i64 %1234)
  %1236 = load i64, i64* %41, align 8
  %1237 = call i32 @STRIP_TYPE_NOPS(i64 %1236)
  %1238 = load i64, i64* %18, align 8
  %1239 = call i32 @TYPE_UNSIGNED(i64 %1238)
  %1240 = icmp ne i32 %1239, 0
  br i1 %1240, label %1242, label %1241

1241:                                             ; preds = %1215
  br label %1308

1242:                                             ; preds = %1215
  %1243 = load i32, i32* %45, align 4
  %1244 = load i32, i32* %46, align 4
  %1245 = icmp eq i32 %1243, %1244
  br i1 %1245, label %1246, label %1247

1246:                                             ; preds = %1242
  br label %1307

1247:                                             ; preds = %1242
  %1248 = load i32, i32* %45, align 4
  %1249 = icmp ne i32 %1248, 0
  br i1 %1249, label %1250, label %1253

1250:                                             ; preds = %1247
  %1251 = load i64, i64* %40, align 8
  store i64 %1251, i64* %51, align 8
  %1252 = load i64, i64* %41, align 8
  store i64 %1252, i64* %52, align 8
  br label %1256

1253:                                             ; preds = %1247
  %1254 = load i64, i64* %41, align 8
  store i64 %1254, i64* %51, align 8
  %1255 = load i64, i64* %40, align 8
  store i64 %1255, i64* %52, align 8
  br label %1256

1256:                                             ; preds = %1253, %1250
  %1257 = load i64, i64* %51, align 8
  %1258 = call i64 @tree_expr_nonnegative_warnv_p(i64 %1257, i32* %53)
  %1259 = icmp ne i64 %1258, 0
  br i1 %1259, label %1260, label %1261

1260:                                             ; preds = %1256
  br label %1306

1261:                                             ; preds = %1256
  %1262 = load i64, i64* %52, align 8
  %1263 = call i32 @TREE_CODE(i64 %1262)
  %1264 = sext i32 %1263 to i64
  %1265 = load i64, i64* @INTEGER_CST, align 8
  %1266 = icmp eq i64 %1264, %1265
  br i1 %1266, label %1267, label %1280

1267:                                             ; preds = %1261
  %1268 = load i32, i32* %17, align 4
  %1269 = icmp eq i32 %1268, 149
  br i1 %1269, label %1273, label %1270

1270:                                             ; preds = %1267
  %1271 = load i32, i32* %17, align 4
  %1272 = icmp eq i32 %1271, 138
  br i1 %1272, label %1273, label %1280

1273:                                             ; preds = %1270, %1267
  %1274 = load i64, i64* %52, align 8
  %1275 = load i64, i64* %18, align 8
  %1276 = call i64 @c_common_signed_type(i64 %1275)
  %1277 = call i64 @int_fits_type_p(i64 %1274, i64 %1276)
  %1278 = icmp ne i64 %1277, 0
  br i1 %1278, label %1279, label %1280

1279:                                             ; preds = %1273
  br label %1305

1280:                                             ; preds = %1273, %1270, %1261
  %1281 = load i64, i64* %52, align 8
  %1282 = call i32 @TREE_CODE(i64 %1281)
  %1283 = sext i32 %1282 to i64
  %1284 = load i64, i64* @INTEGER_CST, align 8
  %1285 = icmp eq i64 %1283, %1284
  br i1 %1285, label %1286, label %1302

1286:                                             ; preds = %1280
  %1287 = load i64, i64* %52, align 8
  %1288 = call i64 @TREE_TYPE(i64 %1287)
  %1289 = call i32 @TREE_CODE(i64 %1288)
  %1290 = sext i32 %1289 to i64
  %1291 = load i64, i64* @ENUMERAL_TYPE, align 8
  %1292 = icmp eq i64 %1290, %1291
  br i1 %1292, label %1293, label %1302

1293:                                             ; preds = %1286
  %1294 = load i64, i64* %52, align 8
  %1295 = call i64 @TREE_TYPE(i64 %1294)
  %1296 = call i64 @TYPE_MAX_VALUE(i64 %1295)
  %1297 = load i64, i64* %18, align 8
  %1298 = call i64 @c_common_signed_type(i64 %1297)
  %1299 = call i64 @int_fits_type_p(i64 %1296, i64 %1298)
  %1300 = icmp ne i64 %1299, 0
  br i1 %1300, label %1301, label %1302

1301:                                             ; preds = %1293
  br label %1304

1302:                                             ; preds = %1293, %1286, %1280
  %1303 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %1304

1304:                                             ; preds = %1302, %1301
  br label %1305

1305:                                             ; preds = %1304, %1279
  br label %1306

1306:                                             ; preds = %1305, %1260
  br label %1307

1307:                                             ; preds = %1306, %1246
  br label %1308

1308:                                             ; preds = %1307, %1241
  %1309 = load i64, i64* %49, align 8
  %1310 = call i32 @TREE_CODE(i64 %1309)
  %1311 = sext i32 %1310 to i64
  %1312 = load i64, i64* @BIT_NOT_EXPR, align 8
  %1313 = icmp eq i64 %1311, %1312
  %1314 = zext i1 %1313 to i32
  %1315 = load i64, i64* %50, align 8
  %1316 = call i32 @TREE_CODE(i64 %1315)
  %1317 = sext i32 %1316 to i64
  %1318 = load i64, i64* @BIT_NOT_EXPR, align 8
  %1319 = icmp eq i64 %1317, %1318
  %1320 = zext i1 %1319 to i32
  %1321 = icmp ne i32 %1314, %1320
  br i1 %1321, label %1322, label %1409

1322:                                             ; preds = %1308
  %1323 = load i64, i64* %49, align 8
  %1324 = call i32 @TREE_CODE(i64 %1323)
  %1325 = sext i32 %1324 to i64
  %1326 = load i64, i64* @BIT_NOT_EXPR, align 8
  %1327 = icmp eq i64 %1325, %1326
  br i1 %1327, label %1328, label %1332

1328:                                             ; preds = %1322
  %1329 = load i64, i64* %49, align 8
  %1330 = call i64 @TREE_OPERAND(i64 %1329, i32 0)
  %1331 = call i64 @get_narrower(i64 %1330, i32* %47)
  store i64 %1331, i64* %49, align 8
  br label %1336

1332:                                             ; preds = %1322
  %1333 = load i64, i64* %50, align 8
  %1334 = call i64 @TREE_OPERAND(i64 %1333, i32 0)
  %1335 = call i64 @get_narrower(i64 %1334, i32* %48)
  store i64 %1335, i64* %50, align 8
  br label %1336

1336:                                             ; preds = %1332, %1328
  %1337 = load i64, i64* %49, align 8
  %1338 = call i64 @host_integerp(i64 %1337, i32 0)
  %1339 = icmp ne i64 %1338, 0
  br i1 %1339, label %1344, label %1340

1340:                                             ; preds = %1336
  %1341 = load i64, i64* %50, align 8
  %1342 = call i64 @host_integerp(i64 %1341, i32 0)
  %1343 = icmp ne i64 %1342, 0
  br i1 %1343, label %1344, label %1385

1344:                                             ; preds = %1340, %1336
  %1345 = load i64, i64* %49, align 8
  %1346 = call i64 @host_integerp(i64 %1345, i32 0)
  %1347 = icmp ne i64 %1346, 0
  br i1 %1347, label %1348, label %1353

1348:                                             ; preds = %1344
  %1349 = load i64, i64* %50, align 8
  store i64 %1349, i64* %54, align 8
  %1350 = load i32, i32* %48, align 4
  store i32 %1350, i32* %57, align 4
  %1351 = load i64, i64* %49, align 8
  %1352 = call i32 @tree_low_cst(i64 %1351, i32 0)
  store i32 %1352, i32* %55, align 4
  br label %1358

1353:                                             ; preds = %1344
  %1354 = load i64, i64* %49, align 8
  store i64 %1354, i64* %54, align 8
  %1355 = load i32, i32* %47, align 4
  store i32 %1355, i32* %57, align 4
  %1356 = load i64, i64* %50, align 8
  %1357 = call i32 @tree_low_cst(i64 %1356, i32 0)
  store i32 %1357, i32* %55, align 4
  br label %1358

1358:                                             ; preds = %1353, %1348
  %1359 = load i64, i64* %54, align 8
  %1360 = call i64 @TREE_TYPE(i64 %1359)
  %1361 = call i32 @TYPE_PRECISION(i64 %1360)
  store i32 %1361, i32* %58, align 4
  %1362 = load i32, i32* %58, align 4
  %1363 = load i64, i64* %18, align 8
  %1364 = call i32 @TYPE_PRECISION(i64 %1363)
  %1365 = icmp slt i32 %1362, %1364
  br i1 %1365, label %1366, label %1384

1366:                                             ; preds = %1358
  %1367 = load i32, i32* %58, align 4
  %1368 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %1369 = icmp slt i32 %1367, %1368
  br i1 %1369, label %1370, label %1384

1370:                                             ; preds = %1366
  %1371 = load i32, i32* %57, align 4
  %1372 = icmp ne i32 %1371, 0
  br i1 %1372, label %1373, label %1384

1373:                                             ; preds = %1370
  %1374 = load i32, i32* %58, align 4
  %1375 = shl i32 -1, %1374
  store i32 %1375, i32* %56, align 4
  %1376 = load i32, i32* %56, align 4
  %1377 = load i32, i32* %55, align 4
  %1378 = and i32 %1376, %1377
  %1379 = load i32, i32* %56, align 4
  %1380 = icmp ne i32 %1378, %1379
  br i1 %1380, label %1381, label %1383

1381:                                             ; preds = %1373
  %1382 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0))
  br label %1383

1383:                                             ; preds = %1381, %1373
  br label %1384

1384:                                             ; preds = %1383, %1370, %1366, %1358
  br label %1408

1385:                                             ; preds = %1340
  %1386 = load i32, i32* %47, align 4
  %1387 = icmp ne i32 %1386, 0
  br i1 %1387, label %1388, label %1407

1388:                                             ; preds = %1385
  %1389 = load i32, i32* %48, align 4
  %1390 = icmp ne i32 %1389, 0
  br i1 %1390, label %1391, label %1407

1391:                                             ; preds = %1388
  %1392 = load i64, i64* %49, align 8
  %1393 = call i64 @TREE_TYPE(i64 %1392)
  %1394 = call i32 @TYPE_PRECISION(i64 %1393)
  %1395 = load i64, i64* %18, align 8
  %1396 = call i32 @TYPE_PRECISION(i64 %1395)
  %1397 = icmp slt i32 %1394, %1396
  br i1 %1397, label %1398, label %1407

1398:                                             ; preds = %1391
  %1399 = load i64, i64* %50, align 8
  %1400 = call i64 @TREE_TYPE(i64 %1399)
  %1401 = call i32 @TYPE_PRECISION(i64 %1400)
  %1402 = load i64, i64* %18, align 8
  %1403 = call i32 @TYPE_PRECISION(i64 %1402)
  %1404 = icmp slt i32 %1401, %1403
  br i1 %1404, label %1405, label %1407

1405:                                             ; preds = %1398
  %1406 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0))
  br label %1407

1407:                                             ; preds = %1405, %1398, %1391, %1388, %1385
  br label %1408

1408:                                             ; preds = %1407, %1384
  br label %1409

1409:                                             ; preds = %1408, %1308
  br label %1410

1410:                                             ; preds = %1409, %1212, %1206
  br label %1411

1411:                                             ; preds = %1410, %1193
  br label %1412

1412:                                             ; preds = %1411, %957, %941
  %1413 = load i64, i64* %18, align 8
  %1414 = icmp ne i64 %1413, 0
  br i1 %1414, label %1423, label %1415

1415:                                             ; preds = %1412
  %1416 = load i32, i32* %6, align 4
  %1417 = load i64, i64* %14, align 8
  %1418 = call i64 @TREE_TYPE(i64 %1417)
  %1419 = load i64, i64* %15, align 8
  %1420 = call i64 @TREE_TYPE(i64 %1419)
  %1421 = call i32 @binary_op_error(i32 %1416, i64 %1418, i64 %1420)
  %1422 = load i64, i64* @error_mark_node, align 8
  store i64 %1422, i64* %5, align 8
  br label %1488

1423:                                             ; preds = %1412
  %1424 = load i32, i32* %19, align 4
  %1425 = icmp ne i32 %1424, 0
  br i1 %1425, label %1457, label %1426

1426:                                             ; preds = %1423
  %1427 = load i64, i64* %14, align 8
  %1428 = call i64 @TREE_TYPE(i64 %1427)
  %1429 = load i64, i64* %18, align 8
  %1430 = icmp ne i64 %1428, %1429
  br i1 %1430, label %1431, label %1435

1431:                                             ; preds = %1426
  %1432 = load i64, i64* %18, align 8
  %1433 = load i64, i64* %14, align 8
  %1434 = call i64 @convert_and_check(i64 %1432, i64 %1433)
  store i64 %1434, i64* %14, align 8
  br label %1435

1435:                                             ; preds = %1431, %1426
  %1436 = load i64, i64* %15, align 8
  %1437 = call i64 @TREE_TYPE(i64 %1436)
  %1438 = load i64, i64* %18, align 8
  %1439 = icmp ne i64 %1437, %1438
  br i1 %1439, label %1440, label %1444

1440:                                             ; preds = %1435
  %1441 = load i64, i64* %18, align 8
  %1442 = load i64, i64* %15, align 8
  %1443 = call i64 @convert_and_check(i64 %1441, i64 %1442)
  store i64 %1443, i64* %15, align 8
  br label %1444

1444:                                             ; preds = %1440, %1435
  %1445 = load i64, i64* %14, align 8
  %1446 = call i32 @TREE_CODE(i64 %1445)
  %1447 = load i32, i32* @ERROR_MARK, align 4
  %1448 = icmp eq i32 %1446, %1447
  br i1 %1448, label %1454, label %1449

1449:                                             ; preds = %1444
  %1450 = load i64, i64* %15, align 8
  %1451 = call i32 @TREE_CODE(i64 %1450)
  %1452 = load i32, i32* @ERROR_MARK, align 4
  %1453 = icmp eq i32 %1451, %1452
  br i1 %1453, label %1454, label %1456

1454:                                             ; preds = %1449, %1444
  %1455 = load i64, i64* @error_mark_node, align 8
  store i64 %1455, i64* %5, align 8
  br label %1488

1456:                                             ; preds = %1449
  br label %1457

1457:                                             ; preds = %1456, %1423
  %1458 = load i64, i64* %20, align 8
  %1459 = load i64, i64* @NULL_TREE, align 8
  %1460 = icmp eq i64 %1458, %1459
  br i1 %1460, label %1461, label %1463

1461:                                             ; preds = %1457
  %1462 = load i64, i64* %18, align 8
  store i64 %1462, i64* %20, align 8
  br label %1463

1463:                                             ; preds = %1461, %1457
  %1464 = load i64, i64* @require_constant_value, align 8
  %1465 = icmp ne i64 %1464, 0
  br i1 %1465, label %1466, label %1472

1466:                                             ; preds = %1463
  %1467 = load i32, i32* %17, align 4
  %1468 = load i64, i64* %20, align 8
  %1469 = load i64, i64* %14, align 8
  %1470 = load i64, i64* %15, align 8
  %1471 = call i64 @fold_build2_initializer(i32 %1467, i64 %1468, i64 %1469, i64 %1470)
  br label %1478

1472:                                             ; preds = %1463
  %1473 = load i32, i32* %17, align 4
  %1474 = load i64, i64* %20, align 8
  %1475 = load i64, i64* %14, align 8
  %1476 = load i64, i64* %15, align 8
  %1477 = call i64 @fold_build2(i32 %1473, i64 %1474, i64 %1475, i64 %1476)
  br label %1478

1478:                                             ; preds = %1472, %1466
  %1479 = phi i64 [ %1471, %1466 ], [ %1477, %1472 ]
  store i64 %1479, i64* %59, align 8
  %1480 = load i64, i64* %21, align 8
  %1481 = icmp ne i64 %1480, 0
  br i1 %1481, label %1482, label %1486

1482:                                             ; preds = %1478
  %1483 = load i64, i64* %21, align 8
  %1484 = load i64, i64* %59, align 8
  %1485 = call i64 @convert(i64 %1483, i64 %1484)
  store i64 %1485, i64* %59, align 8
  br label %1486

1486:                                             ; preds = %1482, %1478
  %1487 = load i64, i64* %59, align 8
  store i64 %1487, i64* %5, align 8
  br label %1488

1488:                                             ; preds = %1486, %1454, %1415, %1204, %923, %899, %162, %150, %130, %118, %100, %91
  %1489 = load i64, i64* %5, align 8
  ret i64 %1489
}

declare dso_local i64 @default_conversion(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @STRIP_TYPE_NOPS(i64) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @objc_compare_types(i64, i64, i32, i64, i8*) #1

declare dso_local i64 @pointer_int_sum(i32, i64, i64) #1

declare dso_local i32 @comp_target_types(i64, i64) #1

declare dso_local i64 @pointer_diff(i64, i64) #1

declare dso_local i32 @integer_zerop(i64) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i32 @integer_all_onesp(i64) #1

declare dso_local i64 @c_common_truthvalue_conversion(i64) #1

declare dso_local i32 @tree_int_cst_sgn(i64) #1

declare dso_local i64 @compare_tree_int(i64, i32) #1

declare dso_local i32 @TYPE_PRECISION(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @convert(i64, i64) #1

declare dso_local i64 @common_pointer_type(i64, i64) #1

declare dso_local i32 @VOID_TYPE_P(i64) #1

declare dso_local i32 @null_pointer_constant_p(i64) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @DECL_WEAK(i64) #1

declare dso_local i32 @COMPLETE_TYPE_P(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @tree_int_cst_equal(i32, i32) #1

declare dso_local i32 @TYPE_SIZE(i64) #1

declare dso_local i32 @same_scalar_type_ignoring_signedness(i64, i64) #1

declare dso_local i32 @binary_op_error(i32, i64, i64) #1

declare dso_local i64 @c_common_type(i64, i64) #1

declare dso_local i64 @get_narrower(i64, i32*) #1

declare dso_local i64 @c_common_signed_or_unsigned_type(i32, i64) #1

declare dso_local i64 @common_type(i64, i64) #1

declare dso_local i64 @int_fits_type_p(i64, i64) #1

declare dso_local i64 @shorten_compare(i64*, i64*, i64*, i32*) #1

declare dso_local i64 @tree_expr_nonnegative_warnv_p(i64, i32*) #1

declare dso_local i64 @c_common_signed_type(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @host_integerp(i64, i32) #1

declare dso_local i32 @tree_low_cst(i64, i32) #1

declare dso_local i64 @convert_and_check(i64, i64) #1

declare dso_local i64 @fold_build2_initializer(i32, i64, i64, i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
