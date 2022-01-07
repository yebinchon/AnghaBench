; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_compute_argument_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_compute_argument_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_data = type { i64, i64, i32, i8*, i8*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PLUS = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4
@downward = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arg_data*, i64, i32)* @compute_argument_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_argument_addresses(%struct.arg_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.arg_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.arg_data* %0, %struct.arg_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %313

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @GET_CODE(i64 %21)
  %23 = load i64, i64* @PLUS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @XEXP(i64 %26, i32 0)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @XEXP(i64 %28, i32 1)
  %30 = call i32 @INTVAL(i64 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %25, %19
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %309, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %312

36:                                               ; preds = %32
  %37 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %37, i64 %39
  %41 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ARGS_SIZE_RTX(i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %45, i64 %47
  %49 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ARGS_SIZE_RTX(i32 %51)
  store i64 %52, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %53 = load i32, i32* @VOIDmode, align 4
  store i32 %53, i32* %16, align 4
  %54 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %54, i64 %56
  %58 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %36
  %62 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %62, i64 %64
  %66 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %70, i64 %72
  %74 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %309

78:                                               ; preds = %69, %61, %36
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @GET_CODE(i64 %79)
  %81 = load i64, i64* @CONST_INT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @INTVAL(i64 %85)
  %87 = call i64 @plus_constant(i64 %84, i32 %86)
  store i64 %87, i64* %12, align 8
  br label %93

88:                                               ; preds = %78
  %89 = load i32, i32* @Pmode, align 4
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @gen_rtx_PLUS(i32 %89, i64 %90, i64 %91)
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @plus_constant(i64 %94, i32 %95)
  store i64 %96, i64* %12, align 8
  %97 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %97, i64 %99
  %101 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %135

104:                                              ; preds = %93
  %105 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %105, i64 %107
  %109 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @BITS_PER_UNIT, align 4
  %115 = mul i32 %113, %114
  %116 = load i32, i32* @MODE_INT, align 4
  %117 = call i32 @mode_for_size(i32 %115, i32 %116, i32 1)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i64, i64* %12, align 8
  %120 = call i8* @gen_rtx_MEM(i32 %118, i64 %119)
  %121 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %121, i64 %123
  %125 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %124, i32 0, i32 4
  store i8* %120, i8** %125, align 8
  %126 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %126, i64 %128
  %130 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @GEN_INT(i32 %132)
  %134 = call i32 @set_mem_size(i8* %131, i32 %133)
  br label %163

135:                                              ; preds = %93
  %136 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %136, i64 %138
  %140 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = call i8* @gen_rtx_MEM(i32 %141, i64 %142)
  %144 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %144, i64 %146
  %148 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %147, i32 0, i32 4
  store i8* %143, i8** %148, align 8
  %149 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %149, i64 %151
  %153 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %155, i64 %157
  %159 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @TREE_TYPE(i32 %160)
  %162 = call i32 @set_mem_attributes(i8* %154, i32 %161, i32 1)
  br label %163

163:                                              ; preds = %135, %104
  %164 = load i32, i32* @BITS_PER_UNIT, align 4
  store i32 %164, i32* %13, align 4
  %165 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %165, i64 %167
  %169 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %14, align 4
  %172 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %172, i64 %174
  %176 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @downward, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %163
  %182 = load i32, i32* %14, align 4
  store i32 %182, i32* %13, align 4
  br label %200

183:                                              ; preds = %163
  %184 = load i64, i64* %10, align 8
  %185 = call i64 @GET_CODE(i64 %184)
  %186 = load i64, i64* @CONST_INT, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %183
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @INTVAL(i64 %189)
  %191 = load i32, i32* @BITS_PER_UNIT, align 4
  %192 = mul i32 %190, %191
  %193 = load i32, i32* %14, align 4
  %194 = or i32 %192, %193
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = sub i32 0, %196
  %198 = and i32 %195, %197
  store i32 %198, i32* %13, align 4
  br label %199

199:                                              ; preds = %188, %183
  br label %200

200:                                              ; preds = %199, %181
  %201 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %201, i64 %203
  %205 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %204, i32 0, i32 4
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @set_mem_align(i8* %206, i32 %207)
  %209 = load i64, i64* %11, align 8
  %210 = call i64 @GET_CODE(i64 %209)
  %211 = load i64, i64* @CONST_INT, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %200
  %214 = load i64, i64* %7, align 8
  %215 = load i64, i64* %11, align 8
  %216 = call i32 @INTVAL(i64 %215)
  %217 = call i64 @plus_constant(i64 %214, i32 %216)
  store i64 %217, i64* %12, align 8
  br label %223

218:                                              ; preds = %200
  %219 = load i32, i32* @Pmode, align 4
  %220 = load i64, i64* %7, align 8
  %221 = load i64, i64* %11, align 8
  %222 = call i64 @gen_rtx_PLUS(i32 %219, i64 %220, i64 %221)
  store i64 %222, i64* %12, align 8
  br label %223

223:                                              ; preds = %218, %213
  %224 = load i64, i64* %12, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i64 @plus_constant(i64 %224, i32 %225)
  store i64 %226, i64* %12, align 8
  %227 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %227, i64 %229
  %231 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %252

234:                                              ; preds = %223
  %235 = load i32, i32* %16, align 4
  %236 = load i64, i64* %12, align 8
  %237 = call i8* @gen_rtx_MEM(i32 %235, i64 %236)
  %238 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %238, i64 %240
  %242 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %241, i32 0, i32 3
  store i8* %237, i8** %242, align 8
  %243 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %243, i64 %245
  %247 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* %15, align 4
  %250 = call i32 @GEN_INT(i32 %249)
  %251 = call i32 @set_mem_size(i8* %248, i32 %250)
  br label %280

252:                                              ; preds = %223
  %253 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %253, i64 %255
  %257 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i64, i64* %12, align 8
  %260 = call i8* @gen_rtx_MEM(i32 %258, i64 %259)
  %261 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %261, i64 %263
  %265 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %264, i32 0, i32 3
  store i8* %260, i8** %265, align 8
  %266 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %266, i64 %268
  %270 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %269, i32 0, i32 3
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %272, i64 %274
  %276 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @TREE_TYPE(i32 %277)
  %279 = call i32 @set_mem_attributes(i8* %271, i32 %278, i32 1)
  br label %280

280:                                              ; preds = %252, %234
  %281 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %281, i64 %283
  %285 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %284, i32 0, i32 3
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %287, i64 %289
  %291 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @set_mem_align(i8* %286, i32 %293)
  %295 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %295, i64 %297
  %299 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %298, i32 0, i32 4
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @set_mem_alias_set(i8* %300, i32 0)
  %302 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %302, i64 %304
  %306 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %305, i32 0, i32 3
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @set_mem_alias_set(i8* %307, i32 0)
  br label %309

309:                                              ; preds = %280, %77
  %310 = load i32, i32* %8, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %8, align 4
  br label %32

312:                                              ; preds = %32
  br label %313

313:                                              ; preds = %312, %3
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @ARGS_SIZE_RTX(i32) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i32 @mode_for_size(i32, i32, i32) #1

declare dso_local i8* @gen_rtx_MEM(i32, i64) #1

declare dso_local i32 @set_mem_size(i8*, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @set_mem_attributes(i8*, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @set_mem_align(i8*, i32) #1

declare dso_local i32 @set_mem_alias_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
