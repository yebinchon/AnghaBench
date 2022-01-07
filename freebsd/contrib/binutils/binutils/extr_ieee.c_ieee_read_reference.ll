; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_read_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_read_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_info = type { i32, %struct.ieee_tag*, %struct.ieee_vars*, %struct.ieee_vars }
%struct.ieee_tag = type { i8*, i64*, i32, %struct.ieee_tag* }
%struct.ieee_vars = type { %struct.ieee_var*, i64 }
%struct.ieee_var = type { i64, i8*, i64*, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"unrecognized C++ reference type\00", align 1
@IEEE_GLOBAL = common dso_local global i32 0, align 4
@IEEE_EXTERNAL = common dso_local global i32 0, align 4
@IEEE_FUNCTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@IEEE_STATIC = common dso_local global i32 0, align 4
@IEEE_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"C++ reference in class with no fields\00", align 1
@DEBUG_FIELD_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"C++ reference not found\00", align 1
@DEBUG_KIND_POINTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"C++ reference is not pointer\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee_info*, i32**)* @ieee_read_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_read_reference(%struct.ieee_info* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ieee_info*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee_vars*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee_var*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ieee_tag*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.ieee_info* %0, %struct.ieee_info** %4, align 8
  store i32** %1, i32*** %5, align 8
  %23 = load i32**, i32*** %5, align 8
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  %25 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %26 = load i32**, i32*** %5, align 8
  %27 = call i32 @ieee_require_asn(%struct.ieee_info* %25, i32** %26, i32* %7)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %3, align 8
  br label %327

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %36 = load i32**, i32*** %5, align 8
  %37 = call i32 @ieee_require_atn65(%struct.ieee_info* %35, i32** %36, i8** %8, i64* %10)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %3, align 8
  br label %327

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %44 = load i32**, i32*** %5, align 8
  %45 = call i32 @ieee_require_atn65(%struct.ieee_info* %43, i32** %44, i8** %9, i64* %11)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %3, align 8
  br label %327

49:                                               ; preds = %42
  store i64* null, i64** %12, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 3
  br i1 %51, label %52, label %179

52:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %175, %52
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %178

56:                                               ; preds = %53
  store %struct.ieee_var* null, %struct.ieee_var** %17, align 8
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %61 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %60, i32 0, i32 3
  store %struct.ieee_vars* %61, %struct.ieee_vars** %15, align 8
  br label %70

62:                                               ; preds = %56
  %63 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %64 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %63, i32 0, i32 2
  %65 = load %struct.ieee_vars*, %struct.ieee_vars** %64, align 8
  store %struct.ieee_vars* %65, %struct.ieee_vars** %15, align 8
  %66 = load %struct.ieee_vars*, %struct.ieee_vars** %15, align 8
  %67 = icmp eq %struct.ieee_vars* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %178

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %59
  %71 = load %struct.ieee_vars*, %struct.ieee_vars** %15, align 8
  %72 = getelementptr inbounds %struct.ieee_vars, %struct.ieee_vars* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %164, %70
  %77 = load i32, i32* %16, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %167

79:                                               ; preds = %76
  %80 = load %struct.ieee_vars*, %struct.ieee_vars** %15, align 8
  %81 = getelementptr inbounds %struct.ieee_vars, %struct.ieee_vars* %80, i32 0, i32 0
  %82 = load %struct.ieee_var*, %struct.ieee_var** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %82, i64 %84
  store %struct.ieee_var* %85, %struct.ieee_var** %17, align 8
  %86 = load %struct.ieee_var*, %struct.ieee_var** %17, align 8
  %87 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = icmp eq i64* %88, null
  br i1 %89, label %104, label %90

90:                                               ; preds = %79
  %91 = load %struct.ieee_var*, %struct.ieee_var** %17, align 8
  %92 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %90
  %97 = load %struct.ieee_var*, %struct.ieee_var** %17, align 8
  %98 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @strncmp(i8* %99, i8* %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96, %90, %79
  br label %164

105:                                              ; preds = %96
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %18, align 8
  %107 = load i32, i32* %7, align 4
  switch i32 %107, label %108 [
    i32 0, label %114
    i32 1, label %135
    i32 2, label %150
  ]

108:                                              ; preds = %105
  %109 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %112 = call i32 @ieee_error(%struct.ieee_info* %109, i32* %110, i8* %111)
  %113 = load i64, i64* @FALSE, align 8
  store i64 %113, i64* %3, align 8
  br label %327

114:                                              ; preds = %105
  %115 = load %struct.ieee_var*, %struct.ieee_var** %17, align 8
  %116 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IEEE_GLOBAL, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %132, label %120

120:                                              ; preds = %114
  %121 = load %struct.ieee_var*, %struct.ieee_var** %17, align 8
  %122 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IEEE_EXTERNAL, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.ieee_var*, %struct.ieee_var** %17, align 8
  %128 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IEEE_FUNCTION, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %126, %120, %114
  %133 = load i64, i64* @TRUE, align 8
  store i64 %133, i64* %18, align 8
  br label %134

134:                                              ; preds = %132, %126
  br label %159

135:                                              ; preds = %105
  %136 = load %struct.ieee_var*, %struct.ieee_var** %17, align 8
  %137 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IEEE_STATIC, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.ieee_var*, %struct.ieee_var** %17, align 8
  %143 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @IEEE_FUNCTION, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141, %135
  %148 = load i64, i64* @TRUE, align 8
  store i64 %148, i64* %18, align 8
  br label %149

149:                                              ; preds = %147, %141
  br label %159

150:                                              ; preds = %105
  %151 = load %struct.ieee_var*, %struct.ieee_var** %17, align 8
  %152 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @IEEE_LOCAL, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i64, i64* @TRUE, align 8
  store i64 %157, i64* %18, align 8
  br label %158

158:                                              ; preds = %156, %150
  br label %159

159:                                              ; preds = %158, %149, %134
  %160 = load i64, i64* %18, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %167

163:                                              ; preds = %159
  br label %164

164:                                              ; preds = %163, %104
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %16, align 4
  br label %76

167:                                              ; preds = %162, %76
  %168 = load i32, i32* %16, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load %struct.ieee_var*, %struct.ieee_var** %17, align 8
  %172 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  store i64* %173, i64** %12, align 8
  br label %178

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %53

178:                                              ; preds = %170, %68, %53
  br label %282

179:                                              ; preds = %49
  %180 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %181 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %180, i32 0, i32 1
  %182 = load %struct.ieee_tag*, %struct.ieee_tag** %181, align 8
  store %struct.ieee_tag* %182, %struct.ieee_tag** %19, align 8
  br label %183

183:                                              ; preds = %277, %179
  %184 = load %struct.ieee_tag*, %struct.ieee_tag** %19, align 8
  %185 = icmp ne %struct.ieee_tag* %184, null
  br i1 %185, label %186, label %281

186:                                              ; preds = %183
  %187 = load %struct.ieee_tag*, %struct.ieee_tag** %19, align 8
  %188 = getelementptr inbounds %struct.ieee_tag, %struct.ieee_tag* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = load i8*, i8** %8, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %192, %196
  br i1 %197, label %198, label %276

198:                                              ; preds = %186
  %199 = load %struct.ieee_tag*, %struct.ieee_tag** %19, align 8
  %200 = getelementptr inbounds %struct.ieee_tag, %struct.ieee_tag* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load i8*, i8** %8, align 8
  %203 = load i64, i64* %10, align 8
  %204 = call i64 @strncmp(i8* %201, i8* %202, i64 %203)
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %276

206:                                              ; preds = %198
  %207 = load %struct.ieee_tag*, %struct.ieee_tag** %19, align 8
  %208 = getelementptr inbounds %struct.ieee_tag, %struct.ieee_tag* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i64 @strlen(i8* %209)
  %211 = load i64, i64* %10, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %276

213:                                              ; preds = %206
  %214 = load %struct.ieee_tag*, %struct.ieee_tag** %19, align 8
  %215 = getelementptr inbounds %struct.ieee_tag, %struct.ieee_tag* %214, i32 0, i32 1
  %216 = load i64*, i64** %215, align 8
  %217 = icmp ne i64* %216, null
  br i1 %217, label %218, label %275

218:                                              ; preds = %213
  %219 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %220 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.ieee_tag*, %struct.ieee_tag** %19, align 8
  %223 = getelementptr inbounds %struct.ieee_tag, %struct.ieee_tag* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i64* @debug_get_fields(i32 %221, i32 %224)
  store i64* %225, i64** %20, align 8
  %226 = load i64*, i64** %20, align 8
  %227 = icmp eq i64* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %218
  %229 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %230 = load i32*, i32** %6, align 8
  %231 = call i32 @ieee_error(%struct.ieee_info* %229, i32* %230, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %232 = load i64, i64* @FALSE, align 8
  store i64 %232, i64* %3, align 8
  br label %327

233:                                              ; preds = %218
  store i32 0, i32* %21, align 4
  br label %234

234:                                              ; preds = %269, %233
  %235 = load i64*, i64** %20, align 8
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @DEBUG_FIELD_NULL, align 8
  %238 = icmp ne i64 %236, %237
  br i1 %238, label %239, label %274

239:                                              ; preds = %234
  %240 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %241 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i64*, i64** %20, align 8
  %244 = load i64, i64* %243, align 8
  %245 = call i8* @debug_get_field_name(i32 %242, i64 %244)
  store i8* %245, i8** %22, align 8
  %246 = load i8*, i8** %22, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %239
  %249 = load i64, i64* @FALSE, align 8
  store i64 %249, i64* %3, align 8
  br label %327

250:                                              ; preds = %239
  %251 = load i8*, i8** %22, align 8
  %252 = load i8*, i8** %9, align 8
  %253 = load i64, i64* %11, align 8
  %254 = call i64 @strncmp(i8* %251, i8* %252, i64 %253)
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %250
  %257 = load i8*, i8** %22, align 8
  %258 = call i64 @strlen(i8* %257)
  %259 = load i64, i64* %11, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = load %struct.ieee_tag*, %struct.ieee_tag** %19, align 8
  %263 = getelementptr inbounds %struct.ieee_tag, %struct.ieee_tag* %262, i32 0, i32 1
  %264 = load i64*, i64** %263, align 8
  %265 = load i32, i32* %21, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  store i64* %267, i64** %12, align 8
  br label %274

268:                                              ; preds = %256, %250
  br label %269

269:                                              ; preds = %268
  %270 = load i64*, i64** %20, align 8
  %271 = getelementptr inbounds i64, i64* %270, i32 1
  store i64* %271, i64** %20, align 8
  %272 = load i32, i32* %21, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %21, align 4
  br label %234

274:                                              ; preds = %261, %234
  br label %275

275:                                              ; preds = %274, %213
  br label %281

276:                                              ; preds = %206, %198, %186
  br label %277

277:                                              ; preds = %276
  %278 = load %struct.ieee_tag*, %struct.ieee_tag** %19, align 8
  %279 = getelementptr inbounds %struct.ieee_tag, %struct.ieee_tag* %278, i32 0, i32 3
  %280 = load %struct.ieee_tag*, %struct.ieee_tag** %279, align 8
  store %struct.ieee_tag* %280, %struct.ieee_tag** %19, align 8
  br label %183

281:                                              ; preds = %275, %183
  br label %282

282:                                              ; preds = %281, %178
  %283 = load i64*, i64** %12, align 8
  %284 = icmp eq i64* %283, null
  br i1 %284, label %285, label %291

285:                                              ; preds = %282
  %286 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %287 = load i32*, i32** %6, align 8
  %288 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %289 = call i32 @ieee_error(%struct.ieee_info* %286, i32* %287, i8* %288)
  %290 = load i64, i64* @FALSE, align 8
  store i64 %290, i64* %3, align 8
  br label %327

291:                                              ; preds = %282
  %292 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %293 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i64*, i64** %12, align 8
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @debug_get_type_kind(i32 %294, i64 %296)
  %298 = load i64, i64* @DEBUG_KIND_POINTER, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %306

300:                                              ; preds = %291
  %301 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %302 = load i32*, i32** %6, align 8
  %303 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %304 = call i32 @ieee_error(%struct.ieee_info* %301, i32* %302, i8* %303)
  %305 = load i64, i64* @FALSE, align 8
  store i64 %305, i64* %3, align 8
  br label %327

306:                                              ; preds = %291
  %307 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %308 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i64*, i64** %12, align 8
  %311 = load i64, i64* %310, align 8
  %312 = call i64 @debug_get_target_type(i32 %309, i64 %311)
  store i64 %312, i64* %13, align 8
  %313 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %314 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i64, i64* %13, align 8
  %317 = call i64 @debug_make_reference_type(i32 %315, i64 %316)
  %318 = load i64*, i64** %12, align 8
  store i64 %317, i64* %318, align 8
  %319 = load i64*, i64** %12, align 8
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %306
  %324 = load i64, i64* @FALSE, align 8
  store i64 %324, i64* %3, align 8
  br label %327

325:                                              ; preds = %306
  %326 = load i64, i64* @TRUE, align 8
  store i64 %326, i64* %3, align 8
  br label %327

327:                                              ; preds = %325, %323, %300, %285, %248, %228, %108, %47, %39, %29
  %328 = load i64, i64* %3, align 8
  ret i64 %328
}

declare dso_local i32 @ieee_require_asn(%struct.ieee_info*, i32**, i32*) #1

declare dso_local i32 @ieee_require_atn65(%struct.ieee_info*, i32**, i8**, i64*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @ieee_error(%struct.ieee_info*, i32*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64* @debug_get_fields(i32, i32) #1

declare dso_local i8* @debug_get_field_name(i32, i64) #1

declare dso_local i64 @debug_get_type_kind(i32, i64) #1

declare dso_local i64 @debug_get_target_type(i32, i64) #1

declare dso_local i64 @debug_make_reference_type(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
