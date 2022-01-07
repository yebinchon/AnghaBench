; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_rtx_costs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_rtx_costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TARGET_HARD_FLOAT = common dso_local global i32 0, align 4
@TARGET_IEEE_FLOAT = common dso_local global i32 0, align 4
@TARGET_FUSED_MADD = common dso_local global i32 0, align 4
@s390_cost = common dso_local global %struct.TYPE_2__* null, align 8
@TARGET_64BIT = common dso_local global i32 0, align 4
@TARGET_CPU_ZARCH = common dso_local global i32 0, align 4
@TImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @s390_rtx_costs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_rtx_costs(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %444 [
    i32 155, label %20
    i32 153, label %20
    i32 148, label %20
    i32 133, label %20
    i32 154, label %20
    i32 146, label %20
    i32 158, label %22
    i32 157, label %22
    i32 147, label %22
    i32 139, label %22
    i32 138, label %22
    i32 159, label %22
    i32 149, label %22
    i32 129, label %22
    i32 142, label %22
    i32 141, label %22
    i32 140, label %25
    i32 145, label %25
    i32 143, label %82
    i32 131, label %203
    i32 130, label %203
    i32 151, label %246
    i32 144, label %246
    i32 134, label %344
    i32 136, label %369
    i32 128, label %369
    i32 156, label %390
  ]

20:                                               ; preds = %4, %4, %4, %4, %4, %4
  %21 = load i32*, i32** %9, align 8
  store i32 0, i32* %21, align 4
  store i32 1, i32* %5, align 4
  br label %445

22:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %23 = call i32 @COSTS_N_INSNS(i32 1)
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %5, align 4
  br label %445

25:                                               ; preds = %4, %4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @GET_MODE(i32 %26)
  %28 = icmp eq i32 %27, 152
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @GET_MODE(i32 %30)
  %32 = icmp eq i32 %31, 137
  br i1 %32, label %33, label %79

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @XEXP(i32 %34, i32 0)
  %36 = call i32 @GET_CODE(i32 %35)
  %37 = icmp eq i32 %36, 143
  br i1 %37, label %38, label %79

38:                                               ; preds = %33
  %39 = load i32, i32* @TARGET_HARD_FLOAT, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = load i32, i32* @TARGET_IEEE_FLOAT, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %41
  %45 = load i32, i32* @TARGET_FUSED_MADD, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @GET_MODE(i32 %48)
  %50 = icmp eq i32 %49, 152
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  br label %61

56:                                               ; preds = %47
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @XEXP(i32 %62, i32 0)
  %64 = call i32 @XEXP(i32 %63, i32 0)
  %65 = call i32 @rtx_cost(i32 %64, i32 143)
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @XEXP(i32 %66, i32 0)
  %68 = call i32 @XEXP(i32 %67, i32 1)
  %69 = call i32 @rtx_cost(i32 %68, i32 143)
  %70 = add nsw i32 %65, %69
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @XEXP(i32 %71, i32 1)
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @rtx_cost(i32 %72, i32 %73)
  %75 = add nsw i32 %70, %74
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %75
  store i32 %78, i32* %76, align 4
  store i32 1, i32* %5, align 4
  br label %445

79:                                               ; preds = %44, %41, %38, %33, %29
  %80 = call i32 @COSTS_N_INSNS(i32 1)
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  store i32 0, i32* %5, align 4
  br label %445

82:                                               ; preds = %4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @GET_MODE(i32 %83)
  switch i32 %84, label %201 [
    i32 135, label %85
    i32 150, label %119
    i32 137, label %191
    i32 152, label %191
    i32 132, label %196
  ]

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @XEXP(i32 %86, i32 0)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @XEXP(i32 %88, i32 1)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @GET_CODE(i32 %90)
  %92 = icmp eq i32 %91, 153
  br i1 %92, label %93, label %103

93:                                               ; preds = %85
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @INTVAL(i32 %94)
  %96 = call i32 @CONST_OK_FOR_K(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  br label %118

103:                                              ; preds = %93, %85
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @GET_CODE(i32 %104)
  %106 = icmp eq i32 %105, 136
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  br label %117

112:                                              ; preds = %103
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %9, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %107
  br label %118

118:                                              ; preds = %117, %98
  br label %202

119:                                              ; preds = %82
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @XEXP(i32 %120, i32 0)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @XEXP(i32 %122, i32 1)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* @TARGET_64BIT, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %156

126:                                              ; preds = %119
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @GET_CODE(i32 %127)
  %129 = icmp eq i32 %128, 153
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @INTVAL(i32 %131)
  %133 = call i32 @CONST_OK_FOR_K(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %9, align 8
  store i32 %138, i32* %139, align 4
  br label %155

140:                                              ; preds = %130, %126
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @GET_CODE(i32 %141)
  %143 = icmp eq i32 %142, 136
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  br label %154

149:                                              ; preds = %140
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %9, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %144
  br label %155

155:                                              ; preds = %154, %135
  br label %190

156:                                              ; preds = %119
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @GET_CODE(i32 %157)
  %159 = icmp eq i32 %158, 136
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @GET_CODE(i32 %161)
  %163 = icmp eq i32 %162, 136
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %9, align 8
  store i32 %167, i32* %168, align 4
  br label %189

169:                                              ; preds = %160, %156
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @GET_CODE(i32 %170)
  %172 = icmp eq i32 %171, 128
  br i1 %172, label %173, label %185

173:                                              ; preds = %169
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @GET_CODE(i32 %174)
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load i32, i32* @TARGET_CPU_ZARCH, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %9, align 8
  store i32 %183, i32* %184, align 4
  br label %188

185:                                              ; preds = %177, %173, %169
  %186 = call i32 @COSTS_N_INSNS(i32 40)
  %187 = load i32*, i32** %9, align 8
  store i32 %186, i32* %187, align 4
  br label %188

188:                                              ; preds = %185, %180
  br label %189

189:                                              ; preds = %188, %164
  br label %190

190:                                              ; preds = %189, %155
  br label %202

191:                                              ; preds = %82, %82
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 10
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %9, align 8
  store i32 %194, i32* %195, align 4
  br label %202

196:                                              ; preds = %82
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 11
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %9, align 8
  store i32 %199, i32* %200, align 4
  br label %202

201:                                              ; preds = %82
  store i32 0, i32* %5, align 4
  br label %445

202:                                              ; preds = %196, %191, %190, %118
  store i32 0, i32* %5, align 4
  br label %445

203:                                              ; preds = %4, %4
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @GET_MODE(i32 %204)
  %206 = load i32, i32* @TImode, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 12
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %9, align 8
  store i32 %211, i32* %212, align 4
  br label %245

213:                                              ; preds = %203
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @GET_MODE(i32 %214)
  %216 = icmp eq i32 %215, 150
  br i1 %216, label %217, label %234

217:                                              ; preds = %213
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @XEXP(i32 %218, i32 1)
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @GET_CODE(i32 %220)
  %222 = icmp eq i32 %221, 128
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 13
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %9, align 8
  store i32 %226, i32* %227, align 4
  br label %233

228:                                              ; preds = %217
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 12
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %9, align 8
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %228, %223
  br label %244

234:                                              ; preds = %213
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @GET_MODE(i32 %235)
  %237 = icmp eq i32 %236, 135
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 13
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %9, align 8
  store i32 %241, i32* %242, align 4
  br label %243

243:                                              ; preds = %238, %234
  br label %244

244:                                              ; preds = %243, %233
  br label %245

245:                                              ; preds = %244, %208
  store i32 0, i32* %5, align 4
  br label %445

246:                                              ; preds = %4, %4
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @GET_MODE(i32 %247)
  %249 = icmp eq i32 %248, 150
  br i1 %249, label %250, label %276

250:                                              ; preds = %246
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @XEXP(i32 %251, i32 1)
  store i32 %252, i32* %15, align 4
  %253 = load i32, i32* %15, align 4
  %254 = call i32 @GET_CODE(i32 %253)
  %255 = icmp eq i32 %254, 128
  br i1 %255, label %256, label %270

256:                                              ; preds = %250
  %257 = load i32, i32* @TARGET_64BIT, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 14
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** %9, align 8
  store i32 %262, i32* %263, align 4
  br label %269

264:                                              ; preds = %256
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 15
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %9, align 8
  store i32 %267, i32* %268, align 4
  br label %269

269:                                              ; preds = %264, %259
  br label %275

270:                                              ; preds = %250
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 16
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %9, align 8
  store i32 %273, i32* %274, align 4
  br label %275

275:                                              ; preds = %270, %269
  br label %343

276:                                              ; preds = %246
  %277 = load i32, i32* %6, align 4
  %278 = call i32 @GET_MODE(i32 %277)
  %279 = icmp eq i32 %278, 135
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 13
  %283 = load i32, i32* %282, align 4
  %284 = load i32*, i32** %9, align 8
  store i32 %283, i32* %284, align 4
  br label %342

285:                                              ; preds = %276
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @GET_MODE(i32 %286)
  %288 = icmp eq i32 %287, 137
  br i1 %288, label %289, label %303

289:                                              ; preds = %285
  %290 = load i32, i32* @TARGET_IEEE_FLOAT, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 17
  %295 = load i32, i32* %294, align 4
  %296 = load i32*, i32** %9, align 8
  store i32 %295, i32* %296, align 4
  br label %302

297:                                              ; preds = %289
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 18
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %9, align 8
  store i32 %300, i32* %301, align 4
  br label %302

302:                                              ; preds = %297, %292
  br label %341

303:                                              ; preds = %285
  %304 = load i32, i32* %6, align 4
  %305 = call i32 @GET_MODE(i32 %304)
  %306 = icmp eq i32 %305, 152
  br i1 %306, label %307, label %321

307:                                              ; preds = %303
  %308 = load i32, i32* @TARGET_IEEE_FLOAT, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 19
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** %9, align 8
  store i32 %313, i32* %314, align 4
  br label %320

315:                                              ; preds = %307
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 20
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %9, align 8
  store i32 %318, i32* %319, align 4
  br label %320

320:                                              ; preds = %315, %310
  br label %340

321:                                              ; preds = %303
  %322 = load i32, i32* %6, align 4
  %323 = call i32 @GET_MODE(i32 %322)
  %324 = icmp eq i32 %323, 132
  br i1 %324, label %325, label %339

325:                                              ; preds = %321
  %326 = load i32, i32* @TARGET_IEEE_FLOAT, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %325
  %329 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 21
  %331 = load i32, i32* %330, align 4
  %332 = load i32*, i32** %9, align 8
  store i32 %331, i32* %332, align 4
  br label %338

333:                                              ; preds = %325
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 22
  %336 = load i32, i32* %335, align 4
  %337 = load i32*, i32** %9, align 8
  store i32 %336, i32* %337, align 4
  br label %338

338:                                              ; preds = %333, %328
  br label %339

339:                                              ; preds = %338, %321
  br label %340

340:                                              ; preds = %339, %320
  br label %341

341:                                              ; preds = %340, %302
  br label %342

342:                                              ; preds = %341, %280
  br label %343

343:                                              ; preds = %342, %275
  store i32 0, i32* %5, align 4
  br label %445

344:                                              ; preds = %4
  %345 = load i32, i32* %6, align 4
  %346 = call i32 @GET_MODE(i32 %345)
  %347 = icmp eq i32 %346, 137
  br i1 %347, label %348, label %353

348:                                              ; preds = %344
  %349 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 23
  %351 = load i32, i32* %350, align 4
  %352 = load i32*, i32** %9, align 8
  store i32 %351, i32* %352, align 4
  br label %368

353:                                              ; preds = %344
  %354 = load i32, i32* %6, align 4
  %355 = call i32 @GET_MODE(i32 %354)
  %356 = icmp eq i32 %355, 152
  br i1 %356, label %357, label %362

357:                                              ; preds = %353
  %358 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 24
  %360 = load i32, i32* %359, align 4
  %361 = load i32*, i32** %9, align 8
  store i32 %360, i32* %361, align 4
  br label %367

362:                                              ; preds = %353
  %363 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s390_cost, align 8
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 25
  %365 = load i32, i32* %364, align 4
  %366 = load i32*, i32** %9, align 8
  store i32 %365, i32* %366, align 4
  br label %367

367:                                              ; preds = %362, %357
  br label %368

368:                                              ; preds = %367, %348
  store i32 0, i32* %5, align 4
  br label %445

369:                                              ; preds = %4, %4
  %370 = load i32, i32* %8, align 4
  %371 = icmp eq i32 %370, 143
  br i1 %371, label %387, label %372

372:                                              ; preds = %369
  %373 = load i32, i32* %8, align 4
  %374 = icmp eq i32 %373, 151
  br i1 %374, label %387, label %375

375:                                              ; preds = %372
  %376 = load i32, i32* %8, align 4
  %377 = icmp eq i32 %376, 144
  br i1 %377, label %387, label %378

378:                                              ; preds = %375
  %379 = load i32, i32* %8, align 4
  %380 = icmp eq i32 %379, 140
  br i1 %380, label %387, label %381

381:                                              ; preds = %378
  %382 = load i32, i32* %8, align 4
  %383 = icmp eq i32 %382, 145
  br i1 %383, label %387, label %384

384:                                              ; preds = %381
  %385 = load i32, i32* %8, align 4
  %386 = icmp eq i32 %385, 156
  br i1 %386, label %387, label %389

387:                                              ; preds = %384, %381, %378, %375, %372, %369
  %388 = load i32*, i32** %9, align 8
  store i32 0, i32* %388, align 4
  br label %389

389:                                              ; preds = %387, %384
  store i32 0, i32* %5, align 4
  br label %445

390:                                              ; preds = %4
  %391 = call i32 @COSTS_N_INSNS(i32 1)
  %392 = load i32*, i32** %9, align 8
  store i32 %391, i32* %392, align 4
  %393 = load i32, i32* %6, align 4
  %394 = call i32 @XEXP(i32 %393, i32 0)
  %395 = call i32 @GET_CODE(i32 %394)
  %396 = icmp eq i32 %395, 159
  br i1 %396, label %397, label %443

397:                                              ; preds = %390
  %398 = load i32, i32* %6, align 4
  %399 = call i32 @XEXP(i32 %398, i32 1)
  %400 = call i32 @GET_CODE(i32 %399)
  %401 = icmp eq i32 %400, 153
  br i1 %401, label %402, label %443

402:                                              ; preds = %397
  %403 = load i32, i32* %6, align 4
  %404 = call i32 @XEXP(i32 %403, i32 0)
  %405 = call i32 @XEXP(i32 %404, i32 1)
  %406 = call i32 @GET_CODE(i32 %405)
  %407 = icmp eq i32 %406, 153
  br i1 %407, label %408, label %443

408:                                              ; preds = %402
  %409 = load i32, i32* %6, align 4
  %410 = call i32 @XEXP(i32 %409, i32 0)
  %411 = call i32 @XEXP(i32 %410, i32 0)
  store i32 %411, i32* %16, align 4
  %412 = load i32, i32* %6, align 4
  %413 = call i32 @XEXP(i32 %412, i32 0)
  %414 = call i32 @XEXP(i32 %413, i32 1)
  store i32 %414, i32* %17, align 4
  %415 = load i32, i32* %6, align 4
  %416 = call i32 @XEXP(i32 %415, i32 1)
  store i32 %416, i32* %18, align 4
  %417 = load i32, i32* %16, align 4
  %418 = load i32, i32* %16, align 4
  %419 = call i32 @GET_MODE(i32 %418)
  %420 = call i32 @memory_operand(i32 %417, i32 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %408
  %423 = load i32, i32* %17, align 4
  %424 = load i32, i32* %18, align 4
  %425 = call i32 @s390_tm_ccmode(i32 %423, i32 %424, i32 0)
  %426 = load i32, i32* @VOIDmode, align 4
  %427 = icmp ne i32 %425, %426
  br i1 %427, label %428, label %429

428:                                              ; preds = %422
  store i32 1, i32* %5, align 4
  br label %445

429:                                              ; preds = %422, %408
  %430 = load i32, i32* %16, align 4
  %431 = load i32, i32* %16, align 4
  %432 = call i32 @GET_MODE(i32 %431)
  %433 = call i32 @register_operand(i32 %430, i32 %432)
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %442

435:                                              ; preds = %429
  %436 = load i32, i32* %17, align 4
  %437 = load i32, i32* %18, align 4
  %438 = call i32 @s390_tm_ccmode(i32 %436, i32 %437, i32 1)
  %439 = load i32, i32* @VOIDmode, align 4
  %440 = icmp ne i32 %438, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %435
  store i32 1, i32* %5, align 4
  br label %445

442:                                              ; preds = %435, %429
  br label %443

443:                                              ; preds = %442, %402, %397, %390
  store i32 0, i32* %5, align 4
  br label %445

444:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %445

445:                                              ; preds = %444, %443, %441, %428, %389, %368, %343, %245, %202, %201, %79, %61, %22, %20
  %446 = load i32, i32* %5, align 4
  ret i32 %446
}

declare dso_local i32 @COSTS_N_INSNS(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @rtx_cost(i32, i32) #1

declare dso_local i32 @CONST_OK_FOR_K(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @memory_operand(i32, i32) #1

declare dso_local i32 @s390_tm_ccmode(i32, i32, i32) #1

declare dso_local i32 @register_operand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
