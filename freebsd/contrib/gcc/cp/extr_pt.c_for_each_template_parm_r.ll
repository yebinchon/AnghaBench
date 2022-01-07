; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_for_each_template_parm_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_for_each_template_parm_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pair_fn_data = type { i32, i8*, i32 (i32, i8*)* }

@error_mark_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @for_each_template_parm_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @for_each_template_parm_r(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pair_fn_data*, align 8
  %10 = alloca i32 (i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.pair_fn_data*
  store %struct.pair_fn_data* %16, %struct.pair_fn_data** %9, align 8
  %17 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %18 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %17, i32 0, i32 2
  %19 = load i32 (i32, i8*)*, i32 (i32, i8*)** %18, align 8
  store i32 (i32, i8*)* %19, i32 (i32, i8*)** %10, align 8
  %20 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %21 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @TYPE_P(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @TYPE_CONTEXT(i32 %27)
  %29 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %32 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @for_each_template_parm(i32 %28, i32 (i32, i8*)* %29, i8* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @error_mark_node, align 4
  store i32 %37, i32* %4, align 4
  br label %310

38:                                               ; preds = %26, %3
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @TREE_CODE(i32 %39)
  switch i32 %40, label %307 [
    i32 139, label %41
    i32 129, label %47
    i32 147, label %47
    i32 143, label %68
    i32 145, label %81
    i32 130, label %117
    i32 146, label %130
    i32 128, label %130
    i32 141, label %151
    i32 150, label %151
    i32 155, label %188
    i32 134, label %201
    i32 133, label %201
    i32 135, label %201
    i32 136, label %219
    i32 131, label %237
    i32 152, label %253
    i32 144, label %276
    i32 153, label %276
    i32 142, label %286
    i32 154, label %286
    i32 138, label %286
    i32 151, label %286
    i32 137, label %286
    i32 148, label %286
    i32 157, label %286
    i32 149, label %286
    i32 132, label %286
    i32 140, label %286
    i32 156, label %292
  ]

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @TYPE_PTRMEMFUNC_P(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %308

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %38, %38, %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @TYPE_TEMPLATE_INFO(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  store i32 0, i32* %52, align 4
  br label %67

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @TYPE_TEMPLATE_INFO(i32 %54)
  %56 = call i32 @TREE_VALUE(i32 %55)
  %57 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %60 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @for_each_template_parm(i32 %56, i32 (i32, i8*)* %57, i8* %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @error_mark_node, align 4
  store i32 %65, i32* %4, align 4
  br label %310

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %51
  br label %308

68:                                               ; preds = %38
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @TYPE_METHOD_BASETYPE(i32 %69)
  %71 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %74 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @for_each_template_parm(i32 %70, i32 (i32, i8*)* %71, i8* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @error_mark_node, align 4
  store i32 %79, i32* %4, align 4
  br label %310

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %38, %80
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @TREE_TYPE(i32 %82)
  %84 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %87 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @for_each_template_parm(i32 %83, i32 (i32, i8*)* %84, i8* %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* @error_mark_node, align 4
  store i32 %92, i32* %4, align 4
  br label %310

93:                                               ; preds = %81
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @TYPE_ARG_TYPES(i32 %94)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %112, %93
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @TREE_VALUE(i32 %100)
  %102 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %105 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @for_each_template_parm(i32 %101, i32 (i32, i8*)* %102, i8* %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @error_mark_node, align 4
  store i32 %110, i32* %4, align 4
  br label %310

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @TREE_CHAIN(i32 %113)
  store i32 %114, i32* %12, align 4
  br label %96

115:                                              ; preds = %96
  %116 = load i32*, i32** %6, align 8
  store i32 0, i32* %116, align 4
  br label %308

117:                                              ; preds = %38
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @TYPE_FIELDS(i32 %118)
  %120 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %123 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @for_each_template_parm(i32 %119, i32 (i32, i8*)* %120, i8* %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* @error_mark_node, align 4
  store i32 %128, i32* %4, align 4
  br label %310

129:                                              ; preds = %117
  br label %308

130:                                              ; preds = %38, %38
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @DECL_LANG_SPECIFIC(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %130
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @DECL_TEMPLATE_INFO(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @DECL_TI_ARGS(i32 %139)
  %141 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %144 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @for_each_template_parm(i32 %140, i32 (i32, i8*)* %141, i8* %142, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i32, i32* @error_mark_node, align 4
  store i32 %149, i32* %4, align 4
  br label %310

150:                                              ; preds = %138, %134, %130
  br label %151

151:                                              ; preds = %38, %38, %150
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @TREE_CODE(i32 %152)
  %154 = icmp eq i32 %153, 150
  br i1 %154, label %155, label %171

155:                                              ; preds = %151
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @DECL_TEMPLATE_PARM_P(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %155
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @DECL_INITIAL(i32 %160)
  %162 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %165 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @for_each_template_parm(i32 %161, i32 (i32, i8*)* %162, i8* %163, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %159
  %170 = load i32, i32* @error_mark_node, align 4
  store i32 %170, i32* %4, align 4
  br label %310

171:                                              ; preds = %159, %155, %151
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @DECL_CONTEXT(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %171
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @DECL_CONTEXT(i32 %176)
  %178 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %179 = load i8*, i8** %11, align 8
  %180 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %181 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @for_each_template_parm(i32 %177, i32 (i32, i8*)* %178, i8* %179, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = load i32, i32* @error_mark_node, align 4
  store i32 %186, i32* %4, align 4
  br label %310

187:                                              ; preds = %175, %171
  br label %308

188:                                              ; preds = %38
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @TYPE_TI_ARGS(i32 %189)
  %191 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %192 = load i8*, i8** %11, align 8
  %193 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %194 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i64 @for_each_template_parm(i32 %190, i32 (i32, i8*)* %191, i8* %192, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %188
  %199 = load i32, i32* @error_mark_node, align 4
  store i32 %199, i32* %4, align 4
  br label %310

200:                                              ; preds = %188
  br label %201

201:                                              ; preds = %38, %38, %38, %200
  %202 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %203 = icmp ne i32 (i32, i8*)* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load i8*, i8** %11, align 8
  %208 = call i32 %205(i32 %206, i8* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %204
  %211 = load i32, i32* @error_mark_node, align 4
  store i32 %211, i32* %4, align 4
  br label %310

212:                                              ; preds = %204, %201
  %213 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %214 = icmp ne i32 (i32, i8*)* %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* @error_mark_node, align 4
  store i32 %216, i32* %4, align 4
  br label %310

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %217
  br label %308

219:                                              ; preds = %38
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @DECL_TEMPLATE_TEMPLATE_PARM_P(i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %219
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @TREE_TYPE(i32 %224)
  %226 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %227 = load i8*, i8** %11, align 8
  %228 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %229 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i64 @for_each_template_parm(i32 %225, i32 (i32, i8*)* %226, i8* %227, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %223
  %234 = load i32, i32* @error_mark_node, align 4
  store i32 %234, i32* %4, align 4
  br label %310

235:                                              ; preds = %223, %219
  %236 = load i32*, i32** %6, align 8
  store i32 0, i32* %236, align 4
  br label %308

237:                                              ; preds = %38
  %238 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %239 = icmp ne i32 (i32, i8*)* %238, null
  br i1 %239, label %240, label %250

240:                                              ; preds = %237
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @TYPENAME_TYPE_FULLNAME(i32 %241)
  %243 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %246 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i64 @for_each_template_parm(i32 %242, i32 (i32, i8*)* %243, i8* %244, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %240, %237
  %251 = load i32, i32* @error_mark_node, align 4
  store i32 %251, i32* %4, align 4
  br label %310

252:                                              ; preds = %240
  br label %308

253:                                              ; preds = %38
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @TREE_TYPE(i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %275

257:                                              ; preds = %253
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @TREE_TYPE(i32 %258)
  %260 = call i32 @TYPE_PTRMEMFUNC_P(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %275

262:                                              ; preds = %257
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @TREE_TYPE(i32 %263)
  %265 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32 %264)
  %266 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %267 = load i8*, i8** %11, align 8
  %268 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %269 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i64 @for_each_template_parm(i32 %265, i32 (i32, i8*)* %266, i8* %267, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %262
  %274 = load i32, i32* @error_mark_node, align 4
  store i32 %274, i32* %4, align 4
  br label %310

275:                                              ; preds = %262, %257, %253
  br label %308

276:                                              ; preds = %38, %38
  %277 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %278 = icmp ne i32 (i32, i8*)* %277, null
  br i1 %278, label %285, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @TREE_TYPE(i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* @error_mark_node, align 4
  store i32 %284, i32* %4, align 4
  br label %310

285:                                              ; preds = %279, %276
  br label %308

286:                                              ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %287 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %288 = icmp ne i32 (i32, i8*)* %287, null
  br i1 %288, label %291, label %289

289:                                              ; preds = %286
  %290 = load i32, i32* @error_mark_node, align 4
  store i32 %290, i32* %4, align 4
  br label %310

291:                                              ; preds = %286
  br label %308

292:                                              ; preds = %38
  %293 = load i32*, i32** %6, align 8
  store i32 0, i32* %293, align 4
  %294 = load i32*, i32** %5, align 8
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @BASELINK_FUNCTIONS(i32 %295)
  %297 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %298 = load i8*, i8** %11, align 8
  %299 = load %struct.pair_fn_data*, %struct.pair_fn_data** %9, align 8
  %300 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i64 @for_each_template_parm(i32 %296, i32 (i32, i8*)* %297, i8* %298, i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %292
  %305 = load i32, i32* @error_mark_node, align 4
  store i32 %305, i32* %4, align 4
  br label %310

306:                                              ; preds = %292
  br label %308

307:                                              ; preds = %38
  br label %308

308:                                              ; preds = %307, %306, %291, %285, %275, %252, %235, %218, %187, %129, %115, %67, %45
  %309 = load i32, i32* @NULL_TREE, align 4
  store i32 %309, i32* %4, align 4
  br label %310

310:                                              ; preds = %308, %304, %289, %283, %273, %250, %233, %215, %210, %198, %185, %169, %148, %127, %109, %91, %78, %64, %36
  %311 = load i32, i32* %4, align 4
  ret i32 %311
}

declare dso_local i64 @TYPE_P(i32) #1

declare dso_local i64 @for_each_template_parm(i32, i32 (i32, i8*)*, i8*, i32) #1

declare dso_local i32 @TYPE_CONTEXT(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @TYPE_TEMPLATE_INFO(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TYPE_METHOD_BASETYPE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i32 @DECL_TEMPLATE_INFO(i32) #1

declare dso_local i32 @DECL_TI_ARGS(i32) #1

declare dso_local i32 @DECL_TEMPLATE_PARM_P(i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i32 @DECL_CONTEXT(i32) #1

declare dso_local i32 @TYPE_TI_ARGS(i32) #1

declare dso_local i32 @DECL_TEMPLATE_TEMPLATE_PARM_P(i32) #1

declare dso_local i32 @TYPENAME_TYPE_FULLNAME(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32) #1

declare dso_local i32 @BASELINK_FUNCTIONS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
