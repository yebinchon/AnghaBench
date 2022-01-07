; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-format.c_check_format_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-format.c_check_format_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i64, i64)*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (i64)* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_6__* }

@error_mark_node = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@OPT_Wformat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"writing through null pointer (argument %d)\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"reading through null pointer (argument %d)\00", align 1
@ADDR_EXPR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"writing into constant object (argument %d)\00", align 1
@pedantic = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"extra type qualifiers in format argument (argument %d)\00", align 1
@char_type_node = common dso_local global i64 0, align 8
@signed_char_type_node = common dso_local global i64 0, align 8
@unsigned_char_type_node = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i32)* @check_format_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_format_types(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %14

14:                                               ; preds = %322, %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %326

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @TREE_TYPE(i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @error_mark_node, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %322

27:                                               ; preds = %17
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @void_type_node, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %27
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %41, %27
  %47 = phi i1 [ true, %27 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @gcc_assert(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 1, i32 0), align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i64 %55(i64 %56)
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %54, %46
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @TYPE_MAIN_VARIANT(i64 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @STRIP_NOPS(i64 %61)
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %202, %58
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %205

69:                                               ; preds = %63
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @TREE_CODE(i64 %70)
  %72 = load i64, i64* @POINTER_TYPE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %185

74:                                               ; preds = %69
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @TREE_TYPE(i64 %75)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @error_mark_node, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %205

81:                                               ; preds = %74
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i64, i64* %7, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @integer_zerop(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* @OPT_Wformat, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @warning(i32 %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %92, %89, %86, %81
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @integer_zerop(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* @OPT_Wformat, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @warning(i32 %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %111, %108, %105, %100
  %120 = load i64, i64* %7, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i64, i64* %7, align 8
  %124 = call i64 @TREE_CODE(i64 %123)
  %125 = load i64, i64* @ADDR_EXPR, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i64, i64* %7, align 8
  %129 = call i64 @TREE_OPERAND(i64 %128, i32 0)
  store i64 %129, i64* %7, align 8
  br label %131

130:                                              ; preds = %122, %119
  store i64 0, i64* %7, align 8
  br label %131

131:                                              ; preds = %130, %127
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %162

136:                                              ; preds = %131
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %136
  %140 = load i64, i64* %8, align 8
  %141 = call i64 @TYPE_READONLY(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %158, label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %7, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %143
  %147 = load i64, i64* %7, align 8
  %148 = call i64 @CONSTANT_CLASS_P(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* %7, align 8
  %152 = call i64 @DECL_P(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i64, i64* %7, align 8
  %156 = call i64 @TREE_READONLY(i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154, %146, %139
  %159 = load i32, i32* @OPT_Wformat, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @warning(i32 %159, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %158, %154, %150, %143, %136, %131
  %163 = load i32, i32* %12, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = load i64, i64* @pedantic, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %165
  %169 = load i64, i64* %8, align 8
  %170 = call i64 @TYPE_READONLY(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %8, align 8
  %174 = call i64 @TYPE_VOLATILE(i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i64, i64* %8, align 8
  %178 = call i64 @TYPE_RESTRICT(i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176, %172, %168
  %181 = load i32, i32* @OPT_Wformat, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @warning(i32 %181, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %180, %176, %165, %162
  br label %201

185:                                              ; preds = %69
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load i8*, i8** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load i64, i64* %10, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* %9, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @format_type_warning(i32 %188, i8* %189, i32 %190, i64 %191, i32 %194, i32 %197, i64 %198, i32 %199)
  br label %205

201:                                              ; preds = %184
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %12, align 4
  br label %63

205:                                              ; preds = %185, %80, %63
  %206 = load i32, i32* %12, align 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %322

212:                                              ; preds = %205
  %213 = load i64, i64* %8, align 8
  %214 = call i64 @TYPE_MAIN_VARIANT(i64 %213)
  store i64 %214, i64* %8, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %212
  %220 = load i64, i64* %8, align 8
  %221 = load i64, i64* @char_type_node, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %231, label %223

223:                                              ; preds = %219
  %224 = load i64, i64* %8, align 8
  %225 = load i64, i64* @signed_char_type_node, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %231, label %227

227:                                              ; preds = %223
  %228 = load i64, i64* %8, align 8
  %229 = load i64, i64* @unsigned_char_type_node, align 8
  %230 = icmp eq i64 %228, %229
  br label %231

231:                                              ; preds = %227, %223, %219
  %232 = phi i1 [ true, %223 ], [ true, %219 ], [ %230, %227 ]
  %233 = zext i1 %232 to i32
  store i32 %233, i32* %13, align 4
  br label %234

234:                                              ; preds = %231, %212
  %235 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 0), align 8
  %236 = load i64, i64* %10, align 8
  %237 = load i64, i64* %8, align 8
  %238 = call i64 %235(i64 %236, i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %322

241:                                              ; preds = %234
  %242 = load i64, i64* %10, align 8
  %243 = load i64, i64* @void_type_node, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %241
  %246 = load i64, i64* @pedantic, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = load i32, i32* %12, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251, %245
  br label %322

255:                                              ; preds = %251, %248, %241
  %256 = load i64, i64* %10, align 8
  %257 = call i64 @TREE_CODE(i64 %256)
  %258 = load i64, i64* @INTEGER_TYPE, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %292

260:                                              ; preds = %255
  %261 = load i64, i64* %8, align 8
  %262 = call i64 @TREE_CODE(i64 %261)
  %263 = load i64, i64* @INTEGER_TYPE, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %292

265:                                              ; preds = %260
  %266 = load i64, i64* @pedantic, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %265
  %269 = load i32, i32* %12, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %12, align 4
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %292

274:                                              ; preds = %271
  %275 = load i32, i32* %13, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %292

277:                                              ; preds = %274, %268, %265
  %278 = load i64, i64* %10, align 8
  %279 = call i64 @TYPE_UNSIGNED(i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %282 = load i64, i64* %10, align 8
  %283 = load i64, i64* %8, align 8
  %284 = call i64 @c_common_unsigned_type(i64 %283)
  %285 = icmp eq i64 %282, %284
  br i1 %285, label %291, label %292

286:                                              ; preds = %277
  %287 = load i64, i64* %10, align 8
  %288 = load i64, i64* %8, align 8
  %289 = call i64 @c_common_signed_type(i64 %288)
  %290 = icmp eq i64 %287, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %286, %281
  br label %322

292:                                              ; preds = %286, %281, %274, %271, %260, %255
  %293 = load i64, i64* %10, align 8
  %294 = load i64, i64* @char_type_node, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %292
  %297 = load i64, i64* @pedantic, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i32, i32* %12, align 4
  %301 = icmp slt i32 %300, 2
  br i1 %301, label %302, label %306

302:                                              ; preds = %299, %296
  %303 = load i32, i32* %13, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  br label %322

306:                                              ; preds = %302, %299, %292
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = load i8*, i8** %5, align 8
  %311 = load i32, i32* %6, align 4
  %312 = load i64, i64* %10, align 8
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = load i64, i64* %9, align 8
  %320 = load i32, i32* %11, align 4
  %321 = call i32 @format_type_warning(i32 %309, i8* %310, i32 %311, i64 %312, i32 %315, i32 %318, i64 %319, i32 %320)
  br label %322

322:                                              ; preds = %306, %305, %291, %254, %240, %211, %26
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 9
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  store %struct.TYPE_6__* %325, %struct.TYPE_6__** %4, align 8
  br label %14

326:                                              ; preds = %14
  ret void
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TYPE_READONLY(i64) #1

declare dso_local i64 @CONSTANT_CLASS_P(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @TREE_READONLY(i64) #1

declare dso_local i64 @TYPE_VOLATILE(i64) #1

declare dso_local i64 @TYPE_RESTRICT(i64) #1

declare dso_local i32 @format_type_warning(i32, i8*, i32, i64, i32, i32, i64, i32) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @c_common_unsigned_type(i64) #1

declare dso_local i64 @c_common_signed_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
