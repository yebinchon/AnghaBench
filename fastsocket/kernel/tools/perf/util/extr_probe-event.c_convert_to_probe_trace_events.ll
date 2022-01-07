; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_convert_to_probe_trace_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_convert_to_probe_trace_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i64, i32 }
%struct.probe_trace_event = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i64, i32*, i32, i32* }
%struct.TYPE_7__ = type { i32*, i32*, i32* }
%struct.symbol = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Kernel symbol '%s' not found.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Offset specified is greater than size of %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_probe_event*, %struct.probe_trace_event**, i32, i8*)* @convert_to_probe_trace_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_probe_trace_events(%struct.perf_probe_event* %0, %struct.probe_trace_event** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_probe_event*, align 8
  %7 = alloca %struct.probe_trace_event**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.probe_trace_event*, align 8
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %6, align 8
  store %struct.probe_trace_event** %1, %struct.probe_trace_event*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %15 = load %struct.probe_trace_event**, %struct.probe_trace_event*** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @try_to_find_probe_trace_events(%struct.perf_probe_event* %14, %struct.probe_trace_event** %15, i32 %16, i8* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %292

23:                                               ; preds = %4
  %24 = call i8* @zalloc(i32 56)
  %25 = bitcast i8* %24 to %struct.probe_trace_event*
  %26 = load %struct.probe_trace_event**, %struct.probe_trace_event*** %7, align 8
  store %struct.probe_trace_event* %25, %struct.probe_trace_event** %26, align 8
  store %struct.probe_trace_event* %25, %struct.probe_trace_event** %13, align 8
  %27 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %28 = icmp eq %struct.probe_trace_event* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %292

32:                                               ; preds = %23
  %33 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %34 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @strdup(i8* %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %40 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32* %38, i32** %41, align 8
  %42 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %43 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %285

50:                                               ; preds = %32
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = call i8* @strdup(i8* %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %58 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  store i32* %56, i32** %59, align 8
  %60 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %61 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %285

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %50
  %70 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %71 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %75 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %78 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %82 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %85 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %88 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %90 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %93 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %95 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %240

98:                                               ; preds = %69
  %99 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %100 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = mul i64 4, %102
  %104 = trunc i64 %103 to i32
  %105 = call i8* @zalloc(i32 %104)
  %106 = bitcast i8* %105 to %struct.TYPE_7__*
  %107 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %108 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %107, i32 0, i32 2
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %108, align 8
  %109 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %110 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %109, i32 0, i32 2
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = icmp eq %struct.TYPE_7__* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %98
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %11, align 4
  br label %285

116:                                              ; preds = %98
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %236, %116
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %120 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %239

123:                                              ; preds = %117
  %124 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %125 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %124, i32 0, i32 2
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %164

133:                                              ; preds = %123
  %134 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %135 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %134, i32 0, i32 2
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @strdup(i8* %141)
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %145 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %144, i32 0, i32 2
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  store i32* %143, i32** %150, align 8
  %151 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %152 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %151, i32 0, i32 2
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %133
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %11, align 4
  br label %285

163:                                              ; preds = %133
  br label %164

164:                                              ; preds = %163, %123
  %165 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %166 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %165, i32 0, i32 2
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @strdup(i8* %172)
  %174 = bitcast i8* %173 to i32*
  %175 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %176 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %175, i32 0, i32 2
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  store i32* %174, i32** %181, align 8
  %182 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %183 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %182, i32 0, i32 2
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %164
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %11, align 4
  br label %285

194:                                              ; preds = %164
  %195 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %196 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %195, i32 0, i32 2
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %235

204:                                              ; preds = %194
  %205 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %206 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %205, i32 0, i32 2
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = call i8* @strdup(i8* %212)
  %214 = bitcast i8* %213 to i32*
  %215 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %216 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %215, i32 0, i32 2
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  store i32* %214, i32** %221, align 8
  %222 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %223 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %222, i32 0, i32 2
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = icmp eq i32* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %204
  %232 = load i32, i32* @ENOMEM, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %11, align 4
  br label %285

234:                                              ; preds = %204
  br label %235

235:                                              ; preds = %234, %194
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %12, align 4
  br label %117

239:                                              ; preds = %117
  br label %240

240:                                              ; preds = %239, %69
  %241 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %242 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  store i32 1, i32* %5, align 4
  br label %292

246:                                              ; preds = %240
  %247 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %248 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = call %struct.symbol* @__find_kernel_function_by_name(i32* %250, i32* null)
  store %struct.symbol* %251, %struct.symbol** %10, align 8
  %252 = load %struct.symbol*, %struct.symbol** %10, align 8
  %253 = icmp ne %struct.symbol* %252, null
  br i1 %253, label %262, label %254

254:                                              ; preds = %246
  %255 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %256 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %258)
  %260 = load i32, i32* @ENOENT, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %11, align 4
  br label %285

262:                                              ; preds = %246
  %263 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %264 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.symbol*, %struct.symbol** %10, align 8
  %268 = getelementptr inbounds %struct.symbol, %struct.symbol* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.symbol*, %struct.symbol** %10, align 8
  %271 = getelementptr inbounds %struct.symbol, %struct.symbol* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = sub nsw i64 %269, %272
  %274 = icmp sgt i64 %266, %273
  br i1 %274, label %275, label %283

275:                                              ; preds = %262
  %276 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %277 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @pr_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32* %279)
  %281 = load i32, i32* @ENOENT, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %11, align 4
  br label %285

283:                                              ; preds = %262
  br label %284

284:                                              ; preds = %283
  store i32 1, i32* %5, align 4
  br label %292

285:                                              ; preds = %275, %254, %231, %191, %160, %113, %65, %47
  %286 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %287 = call i32 @clear_probe_trace_event(%struct.probe_trace_event* %286)
  %288 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %289 = call i32 @free(%struct.probe_trace_event* %288)
  %290 = load %struct.probe_trace_event**, %struct.probe_trace_event*** %7, align 8
  store %struct.probe_trace_event* null, %struct.probe_trace_event** %290, align 8
  %291 = load i32, i32* %11, align 4
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %285, %284, %245, %29, %21
  %293 = load i32, i32* %5, align 4
  ret i32 %293
}

declare dso_local i32 @try_to_find_probe_trace_events(%struct.perf_probe_event*, %struct.probe_trace_event**, i32, i8*) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.symbol* @__find_kernel_function_by_name(i32*, i32*) #1

declare dso_local i32 @pr_warning(i8*, i32*) #1

declare dso_local i32 @clear_probe_trace_event(%struct.probe_trace_event*) #1

declare dso_local i32 @free(%struct.probe_trace_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
