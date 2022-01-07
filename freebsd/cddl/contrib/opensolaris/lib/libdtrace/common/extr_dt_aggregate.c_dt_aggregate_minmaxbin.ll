; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_minmaxbin.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_aggregate.c_dt_aggregate_minmaxbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64 }

@DTRACE_AGGVARIDNONE = common dso_local global i32 0, align 4
@DTRACE_A_MINMAXBIN = common dso_local global i32 0, align 4
@DTRACE_QUANTIZE_ZEROBUCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64)* @dt_aggregate_minmaxbin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_aggregate_minmaxbin(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  %26 = load i32, i32* @DTRACE_AGGVARIDNONE, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %10, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %11, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %6, align 8
  br label %34

34:                                               ; preds = %57, %2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = icmp ne %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %12, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = call i32 @dt_aggregate_aggvarid(%struct.TYPE_18__* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %37
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @DTRACE_A_MINMAXBIN, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %46
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %6, align 8
  br label %34

61:                                               ; preds = %34
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
  br label %281

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
  br label %281

80:                                               ; preds = %69
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %6, align 8
  br label %84

84:                                               ; preds = %228, %80
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = icmp ne %struct.TYPE_18__* %85, null
  br i1 %86, label %87, label %232

87:                                               ; preds = %84
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %13, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %14, align 8
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %100
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %15, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = udiv i64 %105, 4
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %22, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %16, align 8
  %111 = load i64, i64* %16, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %17, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %160 [
    i32 129, label %120
    i32 128, label %126
  ]

120:                                              ; preds = %87
  store i32 1, i32* %21, align 4
  %121 = load i32, i32* %21, align 4
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %22, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load i32, i32* %21, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %19, align 4
  br label %161

126:                                              ; preds = %87
  %127 = load i32, i32* %21, align 4
  store i32 %127, i32* %20, align 4
  br label %128

128:                                              ; preds = %151, %126
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %22, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %128
  %133 = load i32*, i32** %17, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  br label %151

140:                                              ; preds = %132
  %141 = load i32, i32* %18, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %21, align 4
  %146 = sub nsw i32 %144, %145
  store i32 %146, i32* %18, align 4
  br label %147

147:                                              ; preds = %143, %140
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %21, align 4
  %150 = sub nsw i32 %148, %149
  store i32 %150, i32* %19, align 4
  br label %151

151:                                              ; preds = %147, %139
  %152 = load i32, i32* %20, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %20, align 4
  br label %128

154:                                              ; preds = %128
  %155 = load i32, i32* %18, align 4
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  store i32 %158, i32* %19, align 4
  store i32 %158, i32* %18, align 4
  br label %159

159:                                              ; preds = %157, %154
  br label %161

160:                                              ; preds = %87
  br label %228

161:                                              ; preds = %159, %120
  %162 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %162, i64 %165
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  %168 = icmp eq %struct.TYPE_17__* %167, null
  br i1 %168, label %169, label %187

169:                                              ; preds = %161
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %171 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %171, i64 %174
  store %struct.TYPE_17__* %170, %struct.TYPE_17__** %175, align 8
  %176 = load i32, i32* @DTRACE_A_MINMAXBIN, align 4
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %19, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  br label %228

187:                                              ; preds = %161
  %188 = load i32, i32* %18, align 4
  %189 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %189, i64 %192
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %188, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %187
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %200, i64 %203
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  store i32 %199, i32* %206, align 8
  br label %207

207:                                              ; preds = %198, %187
  %208 = load i32, i32* %19, align 4
  %209 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %209, i64 %212
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp sgt i32 %208, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %207
  %219 = load i32, i32* %19, align 4
  %220 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %220, i64 %223
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  store i32 %219, i32* %226, align 4
  br label %227

227:                                              ; preds = %218, %207
  br label %228

228:                                              ; preds = %227, %169, %160
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %230, align 8
  store %struct.TYPE_18__* %231, %struct.TYPE_18__** %6, align 8
  br label %84

232:                                              ; preds = %84
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %234, align 8
  store %struct.TYPE_18__* %235, %struct.TYPE_18__** %6, align 8
  br label %236

236:                                              ; preds = %273, %232
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %238 = icmp ne %struct.TYPE_18__* %237, null
  br i1 %238, label %239, label %277

239:                                              ; preds = %236
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  store %struct.TYPE_17__* %241, %struct.TYPE_17__** %23, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %243, align 8
  store %struct.TYPE_16__* %244, %struct.TYPE_16__** %25, align 8
  %245 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %245, i64 %248
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  store %struct.TYPE_17__* %250, %struct.TYPE_17__** %24, align 8
  %251 = icmp eq %struct.TYPE_17__* %250, null
  br i1 %251, label %256, label %252

252:                                              ; preds = %239
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %255 = icmp eq %struct.TYPE_17__* %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252, %239
  br label %273

257:                                              ; preds = %252
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* @DTRACE_A_MINMAXBIN, align 4
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %257, %256
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %275, align 8
  store %struct.TYPE_18__* %276, %struct.TYPE_18__** %6, align 8
  br label %236

277:                                              ; preds = %236
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %279 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %280 = call i32 @dt_free(%struct.TYPE_15__* %278, %struct.TYPE_17__** %279)
  store i32 0, i32* %3, align 4
  br label %281

281:                                              ; preds = %277, %79, %68
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @dt_aggregate_aggvarid(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__** @dt_zalloc(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dt_free(%struct.TYPE_15__*, %struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
