; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/plockstat/extr_plockstat.c_process_aggregate.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/plockstat/extr_plockstat.c_process_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ps_prochandle = type { i32 }

@g_nent = common dso_local global i64 0, align 8
@DTRACE_AGGWALK_NEXT = common dso_local global i32 0, align 4
@g_opt_s = common dso_local global i64 0, align 8
@DTRACE_QUANTIZE_ZEROBUCKET = common dso_local global i32 0, align 4
@DTRACE_QUANTIZE_NBUCKETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%5llu %8llu \00", align 1
@g_dtp = common dso_local global i32 0, align 4
@PGRAB_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%-28s \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%10llu |%-24.*s| %5llu %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"@@@@@@@@@@@@@@@@@@@@@@@@@@\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%43s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@g_nframes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__**, i32, i8*)* @process_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_aggregate(%struct.TYPE_7__** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ps_prochandle*, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = sext i32 %29 to i64
  %32 = load i64, i64* @g_nent, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @DTRACE_AGGWALK_NEXT, align 4
  store i32 %35, i32* %4, align 4
  br label %330

36:                                               ; preds = %3
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %8, align 8
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %44, i64 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %49, %53
  %55 = inttoptr i64 %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %10, align 8
  %65 = load i64, i64* @g_opt_s, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %104, label %67

67:                                               ; preds = %36
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %68, i64 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %73, i64 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %72, %82
  %84 = inttoptr i64 %83 to i32*
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %17, align 4
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %86, i64 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %90, %100
  %102 = inttoptr i64 %101 to i32*
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %18, align 4
  br label %153

104:                                              ; preds = %36
  %105 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %105, i64 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %110, i64 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %109, %119
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %20, align 8
  %122 = call i32 (...) @print_bar()
  %123 = call i32 (...) @print_legend()
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %124 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  store i32 %124, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %125

125:                                              ; preds = %147, %104
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %125
  %130 = load i32*, i32** %20, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %18, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %18, align 4
  %137 = load i32*, i32** %20, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %16, align 4
  %143 = sub nsw i32 %142, 64
  %144 = shl i32 %141, %143
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %17, align 4
  br label %147

147:                                              ; preds = %129
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  br label %125

152:                                              ; preds = %125
  br label %153

153:                                              ; preds = %152, %67
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %18, align 4
  %156 = sdiv i32 %154, %155
  store i32 %156, i32* %19, align 4
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %159, i8* %162)
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* @g_dtp, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @PGRAB_RDONLY, align 4
  %170 = call %struct.ps_prochandle* @dtrace_proc_grab(i32 %167, i32 %168, i32 %169)
  store %struct.ps_prochandle* %170, %struct.ps_prochandle** %13, align 8
  %171 = load %struct.ps_prochandle*, %struct.ps_prochandle** %13, align 8
  %172 = load i64, i64* %9, align 8
  %173 = trunc i64 %172 to i32
  %174 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %175 = call i64 @getsym(%struct.ps_prochandle* %171, i32 %173, i8* %174, i32 256, i32 0)
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %176)
  store i32 2, i32* %15, align 4
  br label %178

178:                                              ; preds = %193, %153
  %179 = load i32, i32* %15, align 4
  %180 = icmp sle i32 %179, 5
  br i1 %180, label %181, label %196

181:                                              ; preds = %178
  %182 = load %struct.ps_prochandle*, %struct.ps_prochandle** %13, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %189 = call i64 @getsym(%struct.ps_prochandle* %182, i32 %187, i8* %188, i32 256, i32 1)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  br label %196

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %15, align 4
  br label %178

196:                                              ; preds = %191, %178
  %197 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %197)
  %199 = load i64, i64* @g_opt_s, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %325

201:                                              ; preds = %196
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %202 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %202, i64 1
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %207, i64 1
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i64 3
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %206, %216
  %218 = inttoptr i64 %217 to i32*
  store i32* %218, i32** %26, align 8
  %219 = call i32 (...) @print_histogram_header()
  %220 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  store i32 %220, i32* %23, align 4
  br label %221

221:                                              ; preds = %229, %201
  %222 = load i32*, i32** %26, align 8
  %223 = load i32, i32* %23, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %23, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %23, align 4
  br label %221

232:                                              ; preds = %221
  %233 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  %234 = add nsw i32 %233, 63
  store i32 %234, i32* %24, align 4
  br label %235

235:                                              ; preds = %243, %232
  %236 = load i32*, i32** %26, align 8
  %237 = load i32, i32* %24, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %24, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %24, align 4
  br label %235

246:                                              ; preds = %235
  store i32 0, i32* %15, align 4
  br label %247

247:                                              ; preds = %321, %246
  %248 = load i32, i32* %21, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i32, i32* %22, align 4
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  br label %254

254:                                              ; preds = %250, %247
  %255 = phi i1 [ true, %247 ], [ %253, %250 ]
  br i1 %255, label %256, label %324

256:                                              ; preds = %254
  %257 = load i32, i32* %21, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %269, label %259

259:                                              ; preds = %256
  %260 = load %struct.ps_prochandle*, %struct.ps_prochandle** %13, align 8
  %261 = load i32*, i32** %10, align 8
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %262, 2
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %268 = call i64 @getsym(%struct.ps_prochandle* %260, i32 %266, i8* %267, i32 256, i32 0)
  br label %271

269:                                              ; preds = %256
  %270 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %270, align 16
  br label %271

271:                                              ; preds = %269, %259
  %272 = load i32, i32* %22, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %297, label %274

274:                                              ; preds = %271
  %275 = load i32*, i32** %26, align 8
  %276 = load i32, i32* %23, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %25, align 4
  %280 = load i32, i32* %23, align 4
  %281 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  %282 = sub nsw i32 %280, %281
  %283 = zext i32 %282 to i64
  %284 = shl i64 1, %283
  %285 = load i32, i32* %25, align 4
  %286 = sitofp i32 %285 to double
  %287 = fmul double 2.400000e+01, %286
  %288 = load i32, i32* %18, align 4
  %289 = sitofp i32 %288 to double
  %290 = fdiv double %287, %289
  %291 = fptosi double %290 to i32
  %292 = load i32, i32* %25, align 4
  %293 = sext i32 %292 to i64
  %294 = inttoptr i64 %293 to i8*
  %295 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %284, i32 %291, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %294, i8* %295)
  br label %300

297:                                              ; preds = %271
  %298 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* %298)
  br label %300

300:                                              ; preds = %297, %274
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %301, 1
  %303 = load i32, i32* @g_nframes, align 4
  %304 = icmp sge i32 %302, %303
  br i1 %304, label %313, label %305

305:                                              ; preds = %300
  %306 = load i32*, i32** %10, align 8
  %307 = load i32, i32* %15, align 4
  %308 = add nsw i32 %307, 3
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %305, %300
  store i32 1, i32* %21, align 4
  br label %314

314:                                              ; preds = %313, %305
  %315 = load i32, i32* %23, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %23, align 4
  %317 = load i32, i32* %24, align 4
  %318 = icmp eq i32 %315, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  store i32 1, i32* %22, align 4
  br label %320

320:                                              ; preds = %319, %314
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %15, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %15, align 4
  br label %247

324:                                              ; preds = %254
  br label %325

325:                                              ; preds = %324, %196
  %326 = load i32, i32* @g_dtp, align 4
  %327 = load %struct.ps_prochandle*, %struct.ps_prochandle** %13, align 8
  %328 = call i32 @dtrace_proc_release(i32 %326, %struct.ps_prochandle* %327)
  %329 = load i32, i32* @DTRACE_AGGWALK_NEXT, align 4
  store i32 %329, i32* %4, align 4
  br label %330

330:                                              ; preds = %325, %34
  %331 = load i32, i32* %4, align 4
  ret i32 %331
}

declare dso_local i32 @print_bar(...) #1

declare dso_local i32 @print_legend(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.ps_prochandle* @dtrace_proc_grab(i32, i32, i32) #1

declare dso_local i64 @getsym(%struct.ps_prochandle*, i32, i8*, i32, i32) #1

declare dso_local i32 @print_histogram_header(...) #1

declare dso_local i32 @dtrace_proc_release(i32, %struct.ps_prochandle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
