; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_convert_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_convert_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* (i64, i64, i64)*, i64 (i64)* }

@ADDR_EXPR = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i64 0, align 8
@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"too many arguments to block call\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"too many arguments to function %qE\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"type of formal parameter %d is incomplete\00", align 1
@warn_conversion = common dso_local global i64 0, align 8
@warn_traditional = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [76 x i8] c"passing argument %d of %qE as integer rather than floating due to prototype\00", align 1
@COMPLEX_TYPE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [75 x i8] c"passing argument %d of %qE as integer rather than complex due to prototype\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"passing argument %d of %qE as complex rather than floating due to prototype\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"passing argument %d of %qE as floating rather than integer due to prototype\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"passing argument %d of %qE as complex rather than integer due to prototype\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"passing argument %d of %qE as floating rather than complex due to prototype\00", align 1
@float_type_node = common dso_local global i64 0, align 8
@dfloat32_type_node = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [80 x i8] c"passing argument %d of %qE as %<float%> rather than %<double%> due to prototype\00", align 1
@dfloat64_type_node = common dso_local global i64 0, align 8
@dfloat128_type_node = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [67 x i8] c"passing argument %d of %qE as %qT rather than %qT due to prototype\00", align 1
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@OPT_Wconversion = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [65 x i8] c"passing argument %d of %qE with different width due to prototype\00", align 1
@INTEGER_CST = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [56 x i8] c"passing argument %d of %qE as unsigned due to prototype\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"passing argument %d of %qE as signed due to prototype\00", align 1
@ic_argpass = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@integer_type_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@double_type_node = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"too few arguments to block %qE\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"too few arguments to function %qE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64)* @convert_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_arguments(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @ADDR_EXPR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @TREE_OPERAND(i64 %29, i32 0)
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @FUNCTION_DECL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @TREE_OPERAND(i64 %35, i32 0)
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %34, %28, %4
  %38 = call i64 (...) @objc_message_selector()
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %492, %37
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %497

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @TREE_VALUE(i64 %48)
  br label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i64 [ %49, %47 ], [ 0, %50 ]
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @TREE_VALUE(i64 %53)
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %17, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %18, align 4
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @void_type_node, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %51
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @TREE_TYPE(i64 %62)
  %64 = call i64 @TREE_CODE(i64 %63)
  %65 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %497

69:                                               ; preds = %61
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* %14, align 8
  br label %76

74:                                               ; preds = %69
  %75 = load i64, i64* %8, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  %78 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  br label %497

79:                                               ; preds = %51
  %80 = load i64, i64* %14, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %18, align 4
  %84 = icmp sgt i32 %83, 2
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i64, i64* %14, align 8
  store i64 %86, i64* %17, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sub nsw i32 %87, 2
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %85, %82, %79
  %90 = load i64, i64* %16, align 8
  %91 = call i32 @STRIP_TYPE_NOPS(i64 %90)
  %92 = load i64, i64* %16, align 8
  %93 = call i64 @require_complete_type(i64 %92)
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %15, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %440

96:                                               ; preds = %89
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* @error_mark_node, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %15, align 8
  %102 = call i32 @COMPLETE_TYPE_P(i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* %16, align 8
  store i64 %108, i64* %20, align 8
  br label %435

109:                                              ; preds = %100
  %110 = load i64, i64* @warn_conversion, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i64, i64* @warn_traditional, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %401

115:                                              ; preds = %112, %109
  %116 = load i64, i64* %15, align 8
  %117 = call i32 @TYPE_PRECISION(i64 %116)
  store i32 %117, i32* %21, align 4
  %118 = load i64, i64* %15, align 8
  %119 = call i64 @INTEGRAL_TYPE_P(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load i64, i64* %16, align 8
  %123 = call i64 @TREE_TYPE(i64 %122)
  %124 = call i64 @TREE_CODE(i64 %123)
  %125 = load i64, i64* @REAL_TYPE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* %18, align 4
  %129 = load i64, i64* %17, align 8
  %130 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %128, i64 %129)
  br label %131

131:                                              ; preds = %127, %121, %115
  %132 = load i64, i64* %15, align 8
  %133 = call i64 @INTEGRAL_TYPE_P(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i64, i64* %16, align 8
  %137 = call i64 @TREE_TYPE(i64 %136)
  %138 = call i64 @TREE_CODE(i64 %137)
  %139 = load i64, i64* @COMPLEX_TYPE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* %18, align 4
  %143 = load i64, i64* %17, align 8
  %144 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %142, i64 %143)
  br label %400

145:                                              ; preds = %135, %131
  %146 = load i64, i64* %15, align 8
  %147 = call i64 @TREE_CODE(i64 %146)
  %148 = load i64, i64* @COMPLEX_TYPE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i64, i64* %16, align 8
  %152 = call i64 @TREE_TYPE(i64 %151)
  %153 = call i64 @TREE_CODE(i64 %152)
  %154 = load i64, i64* @REAL_TYPE, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i32, i32* %18, align 4
  %158 = load i64, i64* %17, align 8
  %159 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i32 %157, i64 %158)
  br label %399

160:                                              ; preds = %150, %145
  %161 = load i64, i64* %15, align 8
  %162 = call i64 @TREE_CODE(i64 %161)
  %163 = load i64, i64* @REAL_TYPE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load i64, i64* %16, align 8
  %167 = call i64 @TREE_TYPE(i64 %166)
  %168 = call i64 @INTEGRAL_TYPE_P(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32, i32* %18, align 4
  %172 = load i64, i64* %17, align 8
  %173 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 %171, i64 %172)
  br label %398

174:                                              ; preds = %165, %160
  %175 = load i64, i64* %15, align 8
  %176 = call i64 @TREE_CODE(i64 %175)
  %177 = load i64, i64* @COMPLEX_TYPE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load i64, i64* %16, align 8
  %181 = call i64 @TREE_TYPE(i64 %180)
  %182 = call i64 @INTEGRAL_TYPE_P(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load i32, i32* %18, align 4
  %186 = load i64, i64* %17, align 8
  %187 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0), i32 %185, i64 %186)
  br label %397

188:                                              ; preds = %179, %174
  %189 = load i64, i64* %15, align 8
  %190 = call i64 @TREE_CODE(i64 %189)
  %191 = load i64, i64* @REAL_TYPE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %188
  %194 = load i64, i64* %16, align 8
  %195 = call i64 @TREE_TYPE(i64 %194)
  %196 = call i64 @TREE_CODE(i64 %195)
  %197 = load i64, i64* @COMPLEX_TYPE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load i32, i32* %18, align 4
  %201 = load i64, i64* %17, align 8
  %202 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i32 %200, i64 %201)
  br label %396

203:                                              ; preds = %193, %188
  %204 = load i64, i64* %15, align 8
  %205 = call i64 @TREE_CODE(i64 %204)
  %206 = load i64, i64* @REAL_TYPE, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %297

208:                                              ; preds = %203
  %209 = load i64, i64* %16, align 8
  %210 = call i64 @TREE_TYPE(i64 %209)
  %211 = call i64 @TREE_CODE(i64 %210)
  %212 = load i64, i64* @REAL_TYPE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %297

214:                                              ; preds = %208
  %215 = load i32, i32* %21, align 4
  %216 = load i64, i64* @float_type_node, align 8
  %217 = call i32 @TYPE_PRECISION(i64 %216)
  %218 = icmp eq i32 %215, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load i64, i64* %15, align 8
  %221 = load i64, i64* @dfloat32_type_node, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i32, i32* %18, align 4
  %225 = load i64, i64* %17, align 8
  %226 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.9, i64 0, i64 0), i32 %224, i64 %225)
  br label %296

227:                                              ; preds = %219, %214
  %228 = load i64, i64* %15, align 8
  %229 = load i64, i64* %16, align 8
  %230 = call i64 @TREE_TYPE(i64 %229)
  %231 = icmp ne i64 %228, %230
  br i1 %231, label %232, label %295

232:                                              ; preds = %227
  %233 = load i64, i64* %15, align 8
  %234 = load i64, i64* @dfloat32_type_node, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %259, label %236

236:                                              ; preds = %232
  %237 = load i64, i64* %15, align 8
  %238 = load i64, i64* @dfloat64_type_node, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %259, label %240

240:                                              ; preds = %236
  %241 = load i64, i64* %15, align 8
  %242 = load i64, i64* @dfloat128_type_node, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %259, label %244

244:                                              ; preds = %240
  %245 = load i64, i64* %16, align 8
  %246 = call i64 @TREE_TYPE(i64 %245)
  %247 = load i64, i64* @dfloat32_type_node, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %259, label %249

249:                                              ; preds = %244
  %250 = load i64, i64* %16, align 8
  %251 = call i64 @TREE_TYPE(i64 %250)
  %252 = load i64, i64* @dfloat64_type_node, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = load i64, i64* %16, align 8
  %256 = call i64 @TREE_TYPE(i64 %255)
  %257 = load i64, i64* @dfloat128_type_node, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %295

259:                                              ; preds = %254, %249, %244, %240, %236, %232
  %260 = load i32, i32* %21, align 4
  %261 = load i64, i64* %16, align 8
  %262 = call i64 @TREE_TYPE(i64 %261)
  %263 = call i32 @TYPE_PRECISION(i64 %262)
  %264 = icmp ule i32 %260, %263
  br i1 %264, label %288, label %265

265:                                              ; preds = %259
  %266 = load i64, i64* %15, align 8
  %267 = load i64, i64* @dfloat128_type_node, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %279

269:                                              ; preds = %265
  %270 = load i64, i64* %16, align 8
  %271 = call i64 @TREE_TYPE(i64 %270)
  %272 = load i64, i64* @dfloat64_type_node, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %269
  %275 = load i64, i64* %16, align 8
  %276 = call i64 @TREE_TYPE(i64 %275)
  %277 = load i64, i64* @dfloat32_type_node, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %288, label %279

279:                                              ; preds = %274, %269, %265
  %280 = load i64, i64* %15, align 8
  %281 = load i64, i64* @dfloat64_type_node, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %295

283:                                              ; preds = %279
  %284 = load i64, i64* %16, align 8
  %285 = call i64 @TREE_TYPE(i64 %284)
  %286 = load i64, i64* @dfloat32_type_node, align 8
  %287 = icmp ne i64 %285, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %283, %274, %259
  %289 = load i32, i32* %18, align 4
  %290 = load i64, i64* %17, align 8
  %291 = load i64, i64* %15, align 8
  %292 = load i64, i64* %16, align 8
  %293 = call i64 @TREE_TYPE(i64 %292)
  %294 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0), i32 %289, i64 %290, i64 %291, i64 %293)
  br label %295

295:                                              ; preds = %288, %283, %279, %254, %227
  br label %296

296:                                              ; preds = %295, %223
  br label %395

297:                                              ; preds = %208, %203
  %298 = load i64, i64* @warn_conversion, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %394

300:                                              ; preds = %297
  %301 = load i64, i64* %15, align 8
  %302 = call i64 @INTEGRAL_TYPE_P(i64 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %394

304:                                              ; preds = %300
  %305 = load i64, i64* %16, align 8
  %306 = call i64 @TREE_TYPE(i64 %305)
  %307 = call i64 @INTEGRAL_TYPE_P(i64 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %394

309:                                              ; preds = %304
  %310 = load i64, i64* %16, align 8
  %311 = call i64 @default_conversion(i64 %310)
  store i64 %311, i64* %22, align 8
  %312 = load i64, i64* %22, align 8
  %313 = call i64 @TREE_TYPE(i64 %312)
  store i64 %313, i64* %23, align 8
  %314 = load i64, i64* %15, align 8
  %315 = call i64 @TREE_CODE(i64 %314)
  %316 = load i64, i64* @ENUMERAL_TYPE, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %326

318:                                              ; preds = %309
  %319 = load i64, i64* %15, align 8
  %320 = call i64 @TYPE_MAIN_VARIANT(i64 %319)
  %321 = load i64, i64* %16, align 8
  %322 = call i64 @TREE_TYPE(i64 %321)
  %323 = call i64 @TYPE_MAIN_VARIANT(i64 %322)
  %324 = icmp eq i64 %320, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %318
  br label %393

326:                                              ; preds = %318, %309
  %327 = load i32, i32* %21, align 4
  %328 = load i64, i64* %23, align 8
  %329 = call i32 @TYPE_PRECISION(i64 %328)
  %330 = icmp ne i32 %327, %329
  br i1 %330, label %331, label %336

331:                                              ; preds = %326
  %332 = load i32, i32* @OPT_Wconversion, align 4
  %333 = load i32, i32* %18, align 4
  %334 = load i64, i64* %17, align 8
  %335 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 %332, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0), i32 %333, i64 %334)
  br label %392

336:                                              ; preds = %326
  %337 = load i64, i64* %15, align 8
  %338 = call i64 @TYPE_UNSIGNED(i64 %337)
  %339 = load i64, i64* %23, align 8
  %340 = call i64 @TYPE_UNSIGNED(i64 %339)
  %341 = icmp eq i64 %338, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %336
  br label %391

343:                                              ; preds = %336
  %344 = load i64, i64* %15, align 8
  %345 = call i64 @TREE_CODE(i64 %344)
  %346 = load i64, i64* @ENUMERAL_TYPE, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %343
  br label %390

349:                                              ; preds = %343
  %350 = load i64, i64* %16, align 8
  %351 = call i64 @TREE_CODE(i64 %350)
  %352 = load i64, i64* @INTEGER_CST, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %360

354:                                              ; preds = %349
  %355 = load i64, i64* %16, align 8
  %356 = load i64, i64* %15, align 8
  %357 = call i64 @int_fits_type_p(i64 %355, i64 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %354
  br label %389

360:                                              ; preds = %354, %349
  %361 = load i64, i64* %16, align 8
  %362 = call i64 @TREE_TYPE(i64 %361)
  %363 = call i32 @TYPE_PRECISION(i64 %362)
  %364 = load i64, i64* %15, align 8
  %365 = call i32 @TYPE_PRECISION(i64 %364)
  %366 = icmp ult i32 %363, %365
  br i1 %366, label %367, label %373

367:                                              ; preds = %360
  %368 = load i64, i64* %16, align 8
  %369 = call i64 @TREE_TYPE(i64 %368)
  %370 = call i64 @TYPE_UNSIGNED(i64 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %367
  br label %388

373:                                              ; preds = %367, %360
  %374 = load i64, i64* %15, align 8
  %375 = call i64 @TYPE_UNSIGNED(i64 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %373
  %378 = load i32, i32* @OPT_Wconversion, align 4
  %379 = load i32, i32* %18, align 4
  %380 = load i64, i64* %17, align 8
  %381 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 %378, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 %379, i64 %380)
  br label %387

382:                                              ; preds = %373
  %383 = load i32, i32* @OPT_Wconversion, align 4
  %384 = load i32, i32* %18, align 4
  %385 = load i64, i64* %17, align 8
  %386 = call i32 (i32, i8*, i32, i64, ...) @warning(i32 %383, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i32 %384, i64 %385)
  br label %387

387:                                              ; preds = %382, %377
  br label %388

388:                                              ; preds = %387, %372
  br label %389

389:                                              ; preds = %388, %359
  br label %390

390:                                              ; preds = %389, %348
  br label %391

391:                                              ; preds = %390, %342
  br label %392

392:                                              ; preds = %391, %331
  br label %393

393:                                              ; preds = %392, %325
  br label %394

394:                                              ; preds = %393, %304, %300, %297
  br label %395

395:                                              ; preds = %394, %296
  br label %396

396:                                              ; preds = %395, %199
  br label %397

397:                                              ; preds = %396, %184
  br label %398

398:                                              ; preds = %397, %170
  br label %399

399:                                              ; preds = %398, %156
  br label %400

400:                                              ; preds = %399, %141
  br label %401

401:                                              ; preds = %400, %112
  %402 = load i64, i64* %15, align 8
  %403 = load i64, i64* %16, align 8
  %404 = load i32, i32* @ic_argpass, align 4
  %405 = load i64, i64* %9, align 8
  %406 = load i64, i64* %8, align 8
  %407 = load i32, i32* %13, align 4
  %408 = add nsw i32 %407, 1
  %409 = call i64 @convert_for_assignment(i64 %402, i64 %403, i32 %404, i64 %405, i64 %406, i32 %408)
  store i64 %409, i64* %20, align 8
  %410 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 1), align 8
  %411 = load i64, i64* %9, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %401
  %414 = load i64, i64* %9, align 8
  %415 = call i64 @TREE_TYPE(i64 %414)
  br label %417

416:                                              ; preds = %401
  br label %417

417:                                              ; preds = %416, %413
  %418 = phi i64 [ %415, %413 ], [ 0, %416 ]
  %419 = call i64 %410(i64 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %434

421:                                              ; preds = %417
  %422 = load i64, i64* %15, align 8
  %423 = call i64 @INTEGRAL_TYPE_P(i64 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %421
  %426 = load i64, i64* %15, align 8
  %427 = call i32 @TYPE_PRECISION(i64 %426)
  %428 = load i64, i64* @integer_type_node, align 8
  %429 = call i32 @TYPE_PRECISION(i64 %428)
  %430 = icmp ult i32 %427, %429
  br i1 %430, label %431, label %434

431:                                              ; preds = %425
  %432 = load i64, i64* %20, align 8
  %433 = call i64 @default_conversion(i64 %432)
  store i64 %433, i64* %20, align 8
  br label %434

434:                                              ; preds = %431, %425, %421, %417
  br label %435

435:                                              ; preds = %434, %104
  %436 = load i32, i32* @NULL_TREE, align 4
  %437 = load i64, i64* %20, align 8
  %438 = load i64, i64* %12, align 8
  %439 = call i64 @tree_cons(i32 %436, i64 %437, i64 %438)
  store i64 %439, i64* %12, align 8
  br label %485

440:                                              ; preds = %89
  %441 = load i64, i64* %16, align 8
  %442 = call i64 @TREE_TYPE(i64 %441)
  %443 = call i64 @TREE_CODE(i64 %442)
  %444 = load i64, i64* @REAL_TYPE, align 8
  %445 = icmp eq i64 %443, %444
  br i1 %445, label %446, label %466

446:                                              ; preds = %440
  %447 = load i64, i64* %16, align 8
  %448 = call i64 @TREE_TYPE(i64 %447)
  %449 = call i32 @TYPE_PRECISION(i64 %448)
  %450 = load i64, i64* @double_type_node, align 8
  %451 = call i32 @TYPE_PRECISION(i64 %450)
  %452 = icmp ult i32 %449, %451
  br i1 %452, label %453, label %466

453:                                              ; preds = %446
  %454 = load i64, i64* %16, align 8
  %455 = call i64 @TREE_TYPE(i64 %454)
  %456 = call i32 @TYPE_MODE(i64 %455)
  %457 = call i32 @DECIMAL_FLOAT_MODE_P(i32 %456)
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %466, label %459

459:                                              ; preds = %453
  %460 = load i32, i32* @NULL_TREE, align 4
  %461 = load i64, i64* @double_type_node, align 8
  %462 = load i64, i64* %16, align 8
  %463 = call i64 @convert(i64 %461, i64 %462)
  %464 = load i64, i64* %12, align 8
  %465 = call i64 @tree_cons(i32 %460, i64 %463, i64 %464)
  store i64 %465, i64* %12, align 8
  br label %484

466:                                              ; preds = %453, %446, %440
  %467 = load i8* (i64, i64, i64)*, i8* (i64, i64, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %468 = load i64, i64* %6, align 8
  %469 = load i64, i64* %9, align 8
  %470 = load i64, i64* %16, align 8
  %471 = call i8* %467(i64 %468, i64 %469, i64 %470)
  store i8* %471, i8** %19, align 8
  %472 = icmp ne i8* %471, null
  br i1 %472, label %473, label %477

473:                                              ; preds = %466
  %474 = load i8*, i8** %19, align 8
  %475 = call i32 (i8*, ...) @error(i8* %474, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  %476 = load i64, i64* @error_mark_node, align 8
  store i64 %476, i64* %5, align 8
  br label %522

477:                                              ; preds = %466
  %478 = load i32, i32* @NULL_TREE, align 4
  %479 = load i64, i64* %16, align 8
  %480 = call i64 @default_conversion(i64 %479)
  %481 = load i64, i64* %12, align 8
  %482 = call i64 @tree_cons(i32 %478, i64 %480, i64 %481)
  store i64 %482, i64* %12, align 8
  br label %483

483:                                              ; preds = %477
  br label %484

484:                                              ; preds = %483, %459
  br label %485

485:                                              ; preds = %484, %435
  %486 = load i64, i64* %10, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %485
  %489 = load i64, i64* %10, align 8
  %490 = call i64 @TREE_CHAIN(i64 %489)
  store i64 %490, i64* %10, align 8
  br label %491

491:                                              ; preds = %488, %485
  br label %492

492:                                              ; preds = %491
  %493 = load i64, i64* %11, align 8
  %494 = call i64 @TREE_CHAIN(i64 %493)
  store i64 %494, i64* %11, align 8
  %495 = load i32, i32* %13, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %13, align 4
  br label %41

497:                                              ; preds = %76, %67, %41
  %498 = load i64, i64* %10, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %519

500:                                              ; preds = %497
  %501 = load i64, i64* %10, align 8
  %502 = call i64 @TREE_VALUE(i64 %501)
  %503 = load i64, i64* @void_type_node, align 8
  %504 = icmp ne i64 %502, %503
  br i1 %504, label %505, label %519

505:                                              ; preds = %500
  %506 = load i64, i64* %8, align 8
  %507 = call i64 @TREE_TYPE(i64 %506)
  %508 = call i64 @TREE_CODE(i64 %507)
  %509 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %514

511:                                              ; preds = %505
  %512 = load i64, i64* %8, align 8
  %513 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i64 %512)
  br label %517

514:                                              ; preds = %505
  %515 = load i64, i64* %8, align 8
  %516 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i64 %515)
  br label %517

517:                                              ; preds = %514, %511
  %518 = load i64, i64* @error_mark_node, align 8
  store i64 %518, i64* %5, align 8
  br label %522

519:                                              ; preds = %500, %497
  %520 = load i64, i64* %12, align 8
  %521 = call i64 @nreverse(i64 %520)
  store i64 %521, i64* %5, align 8
  br label %522

522:                                              ; preds = %519, %517, %473
  %523 = load i64, i64* %5, align 8
  ret i64 %523
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @objc_message_selector(...) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @STRIP_TYPE_NOPS(i64) #1

declare dso_local i64 @require_complete_type(i64) #1

declare dso_local i32 @COMPLETE_TYPE_P(i64) #1

declare dso_local i32 @TYPE_PRECISION(i64) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i32 @warning(i32, i8*, i32, i64, ...) #1

declare dso_local i64 @default_conversion(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @int_fits_type_p(i64, i64) #1

declare dso_local i64 @convert_for_assignment(i64, i64, i32, i64, i64, i32) #1

declare dso_local i64 @tree_cons(i32, i64, i64) #1

declare dso_local i32 @DECIMAL_FLOAT_MODE_P(i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @convert(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @nreverse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
