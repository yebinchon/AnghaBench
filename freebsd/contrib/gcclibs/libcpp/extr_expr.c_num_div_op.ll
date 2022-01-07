; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_div_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_div_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }

@PART_PRECISION = common dso_local global i64 0, align 8
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"division by zero in #if\00", align 1
@CPP_MINUS = common dso_local global i32 0, align 4
@CPP_DIV = common dso_local global i32 0, align 4
@precision = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.TYPE_23__*, i64, i64, i64, i64, i32)* @num_div_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @num_div_op(%struct.TYPE_23__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_24__, align 4
  %8 = alloca %struct.TYPE_24__, align 4
  %9 = alloca %struct.TYPE_24__, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__, align 4
  %13 = alloca %struct.TYPE_24__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_24__, align 4
  %21 = alloca %struct.TYPE_24__, align 4
  %22 = alloca %struct.TYPE_24__, align 4
  %23 = alloca %struct.TYPE_24__, align 4
  %24 = alloca %struct.TYPE_24__, align 4
  %25 = alloca %struct.TYPE_24__, align 4
  %26 = bitcast %struct.TYPE_24__* %8 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  store i64 %1, i64* %27, align 4
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  store i64 %2, i64* %28, align 4
  %29 = bitcast %struct.TYPE_24__* %9 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  store i64 %3, i64* %30, align 4
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  store i64 %4, i64* %31, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %10, align 8
  store i32 %5, i32* %11, align 4
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %6
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %35, %6
  %40 = phi i1 [ true, %6 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %43 = load i64, i64* %19, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i64 @CPP_OPTION(%struct.TYPE_23__* %42, i32 %44)
  store i64 %45, i64* %19, align 8
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %105, label %48

48:                                               ; preds = %39
  %49 = load i64, i64* %19, align 8
  %50 = bitcast %struct.TYPE_24__* %8 to { i64, i64 }*
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 4
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1
  %54 = load i64, i64* %53, align 4
  %55 = call i32 @num_positive(i64 %52, i64 %54, i64 %49)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %62 = load i64, i64* %19, align 8
  %63 = bitcast %struct.TYPE_24__* %8 to { i64, i64 }*
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 4
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1
  %67 = load i64, i64* %66, align 4
  %68 = call { i64, i64 } @num_negate(i64 %65, i64 %67, i64 %62)
  %69 = bitcast %struct.TYPE_24__* %20 to { i64, i64 }*
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 0
  %71 = extractvalue { i64, i64 } %68, 0
  store i64 %71, i64* %70, align 4
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 1
  %73 = extractvalue { i64, i64 } %68, 1
  store i64 %73, i64* %72, align 4
  %74 = bitcast %struct.TYPE_24__* %8 to i8*
  %75 = bitcast %struct.TYPE_24__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 16, i1 false)
  br label %76

76:                                               ; preds = %57, %48
  %77 = load i64, i64* %19, align 8
  %78 = bitcast %struct.TYPE_24__* %9 to { i64, i64 }*
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 4
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %78, i32 0, i32 1
  %82 = load i64, i64* %81, align 4
  %83 = call i32 @num_positive(i64 %80, i64 %82, i64 %77)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %16, align 4
  %90 = load i64, i64* %19, align 8
  %91 = bitcast %struct.TYPE_24__* %9 to { i64, i64 }*
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 4
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 1
  %95 = load i64, i64* %94, align 4
  %96 = call { i64, i64 } @num_negate(i64 %93, i64 %95, i64 %90)
  %97 = bitcast %struct.TYPE_24__* %21 to { i64, i64 }*
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 0
  %99 = extractvalue { i64, i64 } %96, 0
  store i64 %99, i64* %98, align 4
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 1
  %101 = extractvalue { i64, i64 } %96, 1
  store i64 %101, i64* %100, align 4
  %102 = bitcast %struct.TYPE_24__* %9 to i8*
  %103 = bitcast %struct.TYPE_24__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 16, i1 false)
  br label %104

104:                                              ; preds = %85, %76
  br label %105

105:                                              ; preds = %104, %39
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = load i64, i64* %19, align 8
  %111 = sub i64 %110, 1
  store i64 %111, i64* %18, align 8
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* @PART_PRECISION, align 8
  %114 = sub i64 %112, %113
  %115 = shl i64 1, %114
  store i64 %115, i64* %14, align 8
  br label %116

116:                                              ; preds = %125, %109
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %14, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %130

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %18, align 8
  %127 = add i64 %126, -1
  store i64 %127, i64* %18, align 8
  %128 = load i64, i64* %14, align 8
  %129 = lshr i64 %128, 1
  store i64 %129, i64* %14, align 8
  br label %116

130:                                              ; preds = %123
  br label %179

131:                                              ; preds = %105
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %165

135:                                              ; preds = %131
  %136 = load i64, i64* %19, align 8
  %137 = load i64, i64* @PART_PRECISION, align 8
  %138 = icmp ugt i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i64, i64* %19, align 8
  %141 = load i64, i64* @PART_PRECISION, align 8
  %142 = sub i64 %140, %141
  %143 = sub i64 %142, 1
  store i64 %143, i64* %18, align 8
  br label %147

144:                                              ; preds = %135
  %145 = load i64, i64* %19, align 8
  %146 = sub i64 %145, 1
  store i64 %146, i64* %18, align 8
  br label %147

147:                                              ; preds = %144, %139
  %148 = load i64, i64* %18, align 8
  %149 = shl i64 1, %148
  store i64 %149, i64* %14, align 8
  br label %150

150:                                              ; preds = %159, %147
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %14, align 8
  %155 = and i64 %153, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %164

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %18, align 8
  %161 = add i64 %160, -1
  store i64 %161, i64* %18, align 8
  %162 = load i64, i64* %14, align 8
  %163 = lshr i64 %162, 1
  store i64 %163, i64* %14, align 8
  br label %150

164:                                              ; preds = %157
  br label %178

165:                                              ; preds = %131
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %165
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %173 = load i32, i32* @CPP_DL_ERROR, align 4
  %174 = call i32 @cpp_error(%struct.TYPE_23__* %172, i32 %173, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %175

175:                                              ; preds = %171, %165
  %176 = bitcast %struct.TYPE_24__* %7 to i8*
  %177 = bitcast %struct.TYPE_24__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 4 %177, i64 16, i1 false)
  br label %362

178:                                              ; preds = %164
  br label %179

179:                                              ; preds = %178, %130
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store i32 1, i32* %180, align 4
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  store i32 1, i32* %181, align 4
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* %18, align 8
  %184 = sub i64 %182, %183
  %185 = sub i64 %184, 1
  store i64 %185, i64* %18, align 8
  %186 = load i64, i64* %19, align 8
  %187 = load i64, i64* %18, align 8
  %188 = bitcast %struct.TYPE_24__* %9 to { i64, i64 }*
  %189 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 4
  %191 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %188, i32 0, i32 1
  %192 = load i64, i64* %191, align 4
  %193 = call { i64, i64 } @num_lshift(i64 %190, i64 %192, i64 %186, i64 %187)
  %194 = bitcast %struct.TYPE_24__* %22 to { i64, i64 }*
  %195 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %194, i32 0, i32 0
  %196 = extractvalue { i64, i64 } %193, 0
  store i64 %196, i64* %195, align 4
  %197 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %194, i32 0, i32 1
  %198 = extractvalue { i64, i64 } %193, 1
  store i64 %198, i64* %197, align 4
  %199 = bitcast %struct.TYPE_24__* %13 to i8*
  %200 = bitcast %struct.TYPE_24__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %199, i8* align 4 %200, i64 16, i1 false)
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  store i32 0, i32* %201, align 4
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  store i32 0, i32* %202, align 4
  br label %203

203:                                              ; preds = %265, %179
  %204 = load i64, i64* %19, align 8
  %205 = bitcast %struct.TYPE_24__* %8 to { i64, i64 }*
  %206 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 4
  %208 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %205, i32 0, i32 1
  %209 = load i64, i64* %208, align 4
  %210 = bitcast %struct.TYPE_24__* %13 to { i64, i64 }*
  %211 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 4
  %213 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %210, i32 0, i32 1
  %214 = load i64, i64* %213, align 4
  %215 = call i64 @num_greater_eq(i64 %207, i64 %209, i64 %212, i64 %214, i64 %204)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %260

217:                                              ; preds = %203
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %219 = load i32, i32* @CPP_MINUS, align 4
  %220 = bitcast %struct.TYPE_24__* %8 to { i64, i64 }*
  %221 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 4
  %223 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %220, i32 0, i32 1
  %224 = load i64, i64* %223, align 4
  %225 = bitcast %struct.TYPE_24__* %13 to { i64, i64 }*
  %226 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 4
  %228 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %225, i32 0, i32 1
  %229 = load i64, i64* %228, align 4
  %230 = call { i64, i64 } @num_binary_op(%struct.TYPE_23__* %218, i64 %222, i64 %224, i64 %227, i64 %229, i32 %219)
  %231 = bitcast %struct.TYPE_24__* %23 to { i64, i64 }*
  %232 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %231, i32 0, i32 0
  %233 = extractvalue { i64, i64 } %230, 0
  store i64 %233, i64* %232, align 4
  %234 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %231, i32 0, i32 1
  %235 = extractvalue { i64, i64 } %230, 1
  store i64 %235, i64* %234, align 4
  %236 = bitcast %struct.TYPE_24__* %8 to i8*
  %237 = bitcast %struct.TYPE_24__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %236, i8* align 4 %237, i64 16, i1 false)
  %238 = load i64, i64* %18, align 8
  %239 = load i64, i64* @PART_PRECISION, align 8
  %240 = icmp uge i64 %238, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %217
  %242 = load i64, i64* %18, align 8
  %243 = load i64, i64* @PART_PRECISION, align 8
  %244 = sub i64 %242, %243
  %245 = shl i64 1, %244
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = or i64 %248, %245
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %246, align 4
  br label %259

251:                                              ; preds = %217
  %252 = load i64, i64* %18, align 8
  %253 = shl i64 1, %252
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = or i64 %256, %253
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %254, align 4
  br label %259

259:                                              ; preds = %251, %241
  br label %260

260:                                              ; preds = %259, %203
  %261 = load i64, i64* %18, align 8
  %262 = add i64 %261, -1
  store i64 %262, i64* %18, align 8
  %263 = icmp eq i64 %261, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %280

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 1
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i64, i64* @PART_PRECISION, align 8
  %272 = sub i64 %271, 1
  %273 = trunc i64 %272 to i32
  %274 = shl i32 %270, %273
  %275 = or i32 %268, %274
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  store i32 %275, i32* %276, align 4
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = ashr i32 %278, 1
  store i32 %279, i32* %277, align 4
  br label %203

280:                                              ; preds = %264
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* @CPP_DIV, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %338

284:                                              ; preds = %280
  %285 = load i32, i32* %15, align 4
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  store i32 %285, i32* %286, align 4
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  store i32 0, i32* %287, align 4
  %288 = load i32, i32* %15, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %335, label %290

290:                                              ; preds = %284
  %291 = load i32, i32* %16, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %308

293:                                              ; preds = %290
  %294 = load i64, i64* %19, align 8
  %295 = bitcast %struct.TYPE_24__* %12 to { i64, i64 }*
  %296 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 4
  %298 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %295, i32 0, i32 1
  %299 = load i64, i64* %298, align 4
  %300 = call { i64, i64 } @num_negate(i64 %297, i64 %299, i64 %294)
  %301 = bitcast %struct.TYPE_24__* %24 to { i64, i64 }*
  %302 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %301, i32 0, i32 0
  %303 = extractvalue { i64, i64 } %300, 0
  store i64 %303, i64* %302, align 4
  %304 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %301, i32 0, i32 1
  %305 = extractvalue { i64, i64 } %300, 1
  store i64 %305, i64* %304, align 4
  %306 = bitcast %struct.TYPE_24__* %12 to i8*
  %307 = bitcast %struct.TYPE_24__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %306, i8* align 4 %307, i64 16, i1 false)
  br label %308

308:                                              ; preds = %293, %290
  %309 = load i64, i64* %19, align 8
  %310 = bitcast %struct.TYPE_24__* %12 to { i64, i64 }*
  %311 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 4
  %313 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %310, i32 0, i32 1
  %314 = load i64, i64* %313, align 4
  %315 = call i32 @num_positive(i64 %312, i64 %314, i64 %309)
  %316 = load i32, i32* %16, align 4
  %317 = icmp ne i32 %316, 0
  %318 = xor i1 %317, true
  %319 = zext i1 %318 to i32
  %320 = xor i32 %315, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %308
  %323 = bitcast %struct.TYPE_24__* %12 to { i64, i64 }*
  %324 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 4
  %326 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %323, i32 0, i32 1
  %327 = load i64, i64* %326, align 4
  %328 = call i32 @num_zerop(i64 %325, i64 %327)
  %329 = icmp ne i32 %328, 0
  %330 = xor i1 %329, true
  br label %331

331:                                              ; preds = %322, %308
  %332 = phi i1 [ false, %308 ], [ %330, %322 ]
  %333 = zext i1 %332 to i32
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  store i32 %333, i32* %334, align 4
  br label %335

335:                                              ; preds = %331, %284
  %336 = bitcast %struct.TYPE_24__* %7 to i8*
  %337 = bitcast %struct.TYPE_24__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %336, i8* align 4 %337, i64 16, i1 false)
  br label %362

338:                                              ; preds = %280
  %339 = load i32, i32* %15, align 4
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  store i32 %339, i32* %340, align 4
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 3
  store i32 0, i32* %341, align 4
  %342 = load i32, i32* %17, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %359

344:                                              ; preds = %338
  %345 = load i64, i64* %19, align 8
  %346 = bitcast %struct.TYPE_24__* %8 to { i64, i64 }*
  %347 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 4
  %349 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %346, i32 0, i32 1
  %350 = load i64, i64* %349, align 4
  %351 = call { i64, i64 } @num_negate(i64 %348, i64 %350, i64 %345)
  %352 = bitcast %struct.TYPE_24__* %25 to { i64, i64 }*
  %353 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %352, i32 0, i32 0
  %354 = extractvalue { i64, i64 } %351, 0
  store i64 %354, i64* %353, align 4
  %355 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %352, i32 0, i32 1
  %356 = extractvalue { i64, i64 } %351, 1
  store i64 %356, i64* %355, align 4
  %357 = bitcast %struct.TYPE_24__* %8 to i8*
  %358 = bitcast %struct.TYPE_24__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %357, i8* align 4 %358, i64 16, i1 false)
  br label %359

359:                                              ; preds = %344, %338
  %360 = bitcast %struct.TYPE_24__* %7 to i8*
  %361 = bitcast %struct.TYPE_24__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %360, i8* align 4 %361, i64 16, i1 false)
  br label %362

362:                                              ; preds = %359, %335, %175
  %363 = bitcast %struct.TYPE_24__* %7 to { i64, i64 }*
  %364 = load { i64, i64 }, { i64, i64 }* %363, align 4
  ret { i64, i64 } %364
}

declare dso_local i64 @CPP_OPTION(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @num_positive(i64, i64, i64) #1

declare dso_local { i64, i64 } @num_negate(i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpp_error(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local { i64, i64 } @num_lshift(i64, i64, i64, i64) #1

declare dso_local i64 @num_greater_eq(i64, i64, i64, i64, i64) #1

declare dso_local { i64, i64 } @num_binary_op(%struct.TYPE_23__*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @num_zerop(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
