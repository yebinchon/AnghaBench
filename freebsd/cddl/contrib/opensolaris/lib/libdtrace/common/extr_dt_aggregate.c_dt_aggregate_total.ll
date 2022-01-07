; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_total.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_total.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64 }

@DTRACE_AGGVARIDNONE = common dso_local global i32 0, align 4
@DTRACE_A_TOTAL = common dso_local global i32 0, align 4
@DTRACE_A_HASNEGATIVES = common dso_local global i32 0, align 4
@DTRACE_A_HASPOSITIVES = common dso_local global i32 0, align 4
@DTRACEOPT_AGGZOOM = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i64 0, align 8
@DTRACE_AGGZOOM_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64)* @dt_aggregate_total to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_aggregate_total(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  %23 = load i32, i32* @DTRACE_AGGVARIDNONE, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %10, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %11, align 8
  %28 = load i32, i32* @DTRACE_A_TOTAL, align 4
  %29 = load i32, i32* @DTRACE_A_HASNEGATIVES, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DTRACE_A_HASPOSITIVES, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %6, align 8
  br label %36

36:                                               ; preds = %57, %2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = icmp ne %struct.TYPE_18__* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %13, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = call i32 @dt_aggregate_aggvarid(%struct.TYPE_18__* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %39
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* %12, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %48
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %6, align 8
  br label %36

61:                                               ; preds = %36
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @DTRACE_AGGVARIDNONE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %61
  store i32 0, i32* %3, align 4
  br label %270

69:                                               ; preds = %64
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = call %struct.TYPE_17__** @dt_zalloc(%struct.TYPE_15__* %70, i32 %75)
  store %struct.TYPE_17__** %76, %struct.TYPE_17__*** %7, align 8
  %77 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %78 = icmp eq %struct.TYPE_17__** %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 -1, i32* %3, align 4
  br label %270

80:                                               ; preds = %69
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %6, align 8
  br label %84

84:                                               ; preds = %218, %80
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = icmp ne %struct.TYPE_18__* %85, null
  br i1 %86, label %87, label %222

87:                                               ; preds = %84
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %14, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %15, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %100
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %16, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %17, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = inttoptr i64 %109 to i32*
  store i32* %110, i32** %19, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %136 [
    i32 129, label %114
    i32 128, label %117
    i32 130, label %117
    i32 131, label %120
  ]

114:                                              ; preds = %87
  %115 = load i32*, i32** %19, align 8
  %116 = call i32 @dt_stddev(i32* %115, i32 1)
  store i32 %116, i32* %18, align 4
  br label %137

117:                                              ; preds = %87, %87
  %118 = load i32*, i32** %19, align 8
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %18, align 4
  br label %137

120:                                              ; preds = %87
  %121 = load i32*, i32** %19, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load i32*, i32** %19, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %19, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %128, %131
  br label %134

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %125
  %135 = phi i32 [ %132, %125 ], [ 0, %133 ]
  store i32 %135, i32* %18, align 4
  br label %137

136:                                              ; preds = %87
  br label %218

137:                                              ; preds = %134, %117, %114
  %138 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %138, i64 %141
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = icmp eq %struct.TYPE_17__* %143, null
  br i1 %144, label %145, label %157

145:                                              ; preds = %137
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %147 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %147, i64 %150
  store %struct.TYPE_17__* %146, %struct.TYPE_17__** %151, align 8
  %152 = load i32, i32* @DTRACE_A_TOTAL, align 4
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %164

157:                                              ; preds = %137
  %158 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %158, i64 %161
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %162, align 8
  store %struct.TYPE_17__* %163, %struct.TYPE_17__** %14, align 8
  br label %164

164:                                              ; preds = %157, %145
  %165 = load i32, i32* %18, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i32, i32* @DTRACE_A_HASPOSITIVES, align 4
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %167, %164
  %174 = load i32, i32* %18, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load i32, i32* @DTRACE_A_HASNEGATIVES, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* %18, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %18, align 4
  br label %184

184:                                              ; preds = %176, %173
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = load i64, i64* @DTRACEOPT_AGGZOOM, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %211

193:                                              ; preds = %184
  %194 = load i32, i32* %18, align 4
  %195 = sitofp i32 %194 to x86_fp80
  %196 = load i32, i32* @DTRACE_AGGZOOM_MAX, align 4
  %197 = sdiv i32 1, %196
  %198 = sitofp i32 %197 to x86_fp80
  %199 = fmul x86_fp80 %195, %198
  %200 = fptosi x86_fp80 %199 to i32
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp sgt i32 %201, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %193
  %207 = load i32, i32* %18, align 4
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %206, %193
  br label %217

211:                                              ; preds = %184
  %212 = load i32, i32* %18, align 4
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %211, %210
  br label %218

218:                                              ; preds = %217, %136
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %220, align 8
  store %struct.TYPE_18__* %221, %struct.TYPE_18__** %6, align 8
  br label %84

222:                                              ; preds = %84
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %224, align 8
  store %struct.TYPE_18__* %225, %struct.TYPE_18__** %6, align 8
  br label %226

226:                                              ; preds = %262, %222
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %228 = icmp ne %struct.TYPE_18__* %227, null
  br i1 %228, label %229, label %266

229:                                              ; preds = %226
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 0
  store %struct.TYPE_17__* %231, %struct.TYPE_17__** %20, align 8
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  store %struct.TYPE_16__* %234, %struct.TYPE_16__** %22, align 8
  %235 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %235, i64 %238
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %239, align 8
  store %struct.TYPE_17__* %240, %struct.TYPE_17__** %21, align 8
  %241 = icmp eq %struct.TYPE_17__* %240, null
  br i1 %241, label %246, label %242

242:                                              ; preds = %229
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %245 = icmp eq %struct.TYPE_17__* %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %242, %229
  br label %262

247:                                              ; preds = %242
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %12, align 4
  %257 = and i32 %255, %256
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %247, %246
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %264, align 8
  store %struct.TYPE_18__* %265, %struct.TYPE_18__** %6, align 8
  br label %226

266:                                              ; preds = %226
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %268 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %269 = call i32 @dt_free(%struct.TYPE_15__* %267, %struct.TYPE_17__** %268)
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %266, %79, %68
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @dt_aggregate_aggvarid(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__** @dt_zalloc(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dt_stddev(i32*, i32) #1

declare dso_local i32 @dt_free(%struct.TYPE_15__*, %struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
