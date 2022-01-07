; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_dialog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_16__*, i32*, i8*, i32*, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_14__*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"dialog header\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unexpected DIALOGEX version %d\00", align 1
@DS_SETFONT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"dialog font point size\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"dialogex font information\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"dialog control\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"dialogex control\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"dialog control end\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"dialog control data\00", align 1
@RCDATA_BUFFER = common dso_local global i32 0, align 4
@RES_TYPE_DIALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32*, i32)* @bin_to_res_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @bin_to_res_dialog(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__**, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @toosmall(i32 %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = call i64 @res_alloc(i32 96)
  %25 = inttoptr i64 %24 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %8, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = call i8* @windres_get_16(i32* %26, i32* %28, i32 2)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 65535
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @windres_get_32(i32* %36, i32* %37, i32 4)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = call i8* @windres_get_32(i32* %42, i32* %44, i32 4)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 12
  store i8* %45, i8** %47, align 8
  store i32 8, i32* %12, align 4
  br label %85

48:                                               ; preds = %23
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i8* @windres_get_16(i32* %49, i32* %50, i32 2)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @fatal(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %48
  %60 = call i64 @res_alloc(i32 32)
  %61 = inttoptr i64 %60 to %struct.TYPE_15__*
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %63, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = call i8* @windres_get_32(i32* %64, i32* %66, i32 4)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  store i8* %67, i8** %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  %75 = call i8* @windres_get_32(i32* %72, i32* %74, i32 4)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 12
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 12
  %81 = call i8* @windres_get_32(i32* %78, i32* %80, i32 4)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  store i32 16, i32* %12, align 4
  br label %85

85:                                               ; preds = %59, %33
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 10
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %92 = call i32 @toosmall(i32 %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32*, i32** %4, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i8* @windres_get_16(i32* %94, i32* %98, i32 2)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %9, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = call i8* @windres_get_16(i32* %101, i32* %106, i32 2)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 11
  store i8* %107, i8** %109, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = call i8* @windres_get_16(i32* %110, i32* %115, i32 2)
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 10
  store i8* %116, i8** %118, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = getelementptr inbounds i32, i32* %123, i64 6
  %125 = call i8* @windres_get_16(i32* %119, i32* %124, i32 2)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 9
  store i8* %125, i8** %127, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = getelementptr inbounds i32, i32* %132, i64 8
  %134 = call i8* @windres_get_16(i32* %128, i32* %133, i32 2)
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 8
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 10
  store i32 %138, i32* %12, align 4
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 7
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %12, align 4
  %148 = sub nsw i32 %146, %147
  %149 = call i32 @get_resid(i32* %139, i32* %141, i32* %145, i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %12, align 4
  %153 = load i32*, i32** %4, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 6
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %12, align 4
  %162 = sub nsw i32 %160, %161
  %163 = call i32 @get_resid(i32* %153, i32* %155, i32* %159, i32 %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %12, align 4
  %167 = load i32*, i32** %4, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %12, align 4
  %174 = sub nsw i32 %172, %173
  %175 = call i8* @get_unicode(i32* %167, i32* %171, i32 %174, i32* %10)
  %176 = bitcast i8* %175 to i32*
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 5
  store i32* %176, i32** %178, align 8
  %179 = load i32, i32* %10, align 4
  %180 = mul nsw i32 %179, 2
  %181 = add nsw i32 %180, 2
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %93
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 5
  store i32* null, i32** %188, align 8
  br label %189

189:                                              ; preds = %186, %93
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @DS_SETFONT, align 4
  %194 = and i32 %192, %193
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %219

196:                                              ; preds = %189
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 4
  store i8* null, i8** %198, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 3
  store i32* null, i32** %200, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = icmp ne %struct.TYPE_15__* %203, null
  br i1 %204, label %205, label %218

205:                                              ; preds = %196
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 2
  store i8* null, i8** %209, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  store i8* null, i8** %213, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  store i32 1, i32* %217, align 8
  br label %218

218:                                              ; preds = %205, %196
  br label %304

219:                                              ; preds = %189
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 2
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %226 = call i32 @toosmall(i32 %225)
  br label %227

227:                                              ; preds = %224, %219
  %228 = load i32*, i32** %4, align 8
  %229 = load i32*, i32** %5, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = call i8* @windres_get_16(i32* %228, i32* %232, i32 2)
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 4
  store i8* %233, i8** %235, align 8
  %236 = load i32, i32* %12, align 4
  %237 = add nsw i32 %236, 2
  store i32 %237, i32* %12, align 4
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %239, align 8
  %241 = icmp ne %struct.TYPE_15__* %240, null
  br i1 %241, label %242, label %286

242:                                              ; preds = %227
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 4
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %249 = call i32 @toosmall(i32 %248)
  br label %250

250:                                              ; preds = %247, %242
  %251 = load i32*, i32** %4, align 8
  %252 = load i32*, i32** %5, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = call i8* @windres_get_16(i32* %251, i32* %255, i32 2)
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 2
  store i8* %256, i8** %260, align 8
  %261 = load i32*, i32** %4, align 8
  %262 = load i32*, i32** %5, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = getelementptr inbounds i32, i32* %265, i64 2
  %267 = call i8* @windres_get_8(i32* %261, i32* %266, i32 1)
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  store i8* %267, i8** %271, align 8
  %272 = load i32*, i32** %4, align 8
  %273 = load i32*, i32** %5, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = getelementptr inbounds i32, i32* %276, i64 3
  %278 = call i8* @windres_get_8(i32* %272, i32* %277, i32 1)
  %279 = ptrtoint i8* %278 to i32
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 0
  store i32 %279, i32* %283, align 8
  %284 = load i32, i32* %12, align 4
  %285 = add nsw i32 %284, 4
  store i32 %285, i32* %12, align 4
  br label %286

286:                                              ; preds = %250, %227
  %287 = load i32*, i32** %4, align 8
  %288 = load i32*, i32** %5, align 8
  %289 = load i32, i32* %12, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* %12, align 4
  %294 = sub nsw i32 %292, %293
  %295 = call i8* @get_unicode(i32* %287, i32* %291, i32 %294, i32* %10)
  %296 = bitcast i8* %295 to i32*
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 3
  store i32* %296, i32** %298, align 8
  %299 = load i32, i32* %10, align 4
  %300 = mul nsw i32 %299, 2
  %301 = add nsw i32 %300, 2
  %302 = load i32, i32* %12, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* %12, align 4
  br label %304

304:                                              ; preds = %286, %218
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %306, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 2
  store %struct.TYPE_16__** %308, %struct.TYPE_16__*** %13, align 8
  store i32 0, i32* %11, align 4
  br label %309

309:                                              ; preds = %578, %304
  %310 = load i32, i32* %11, align 4
  %311 = load i32, i32* %9, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %581

313:                                              ; preds = %309
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %314, 3
  %316 = and i32 %315, -4
  store i32 %316, i32* %12, align 4
  %317 = call i64 @res_alloc(i32 88)
  %318 = inttoptr i64 %317 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %318, %struct.TYPE_16__** %16, align 8
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %320, align 8
  %322 = icmp eq %struct.TYPE_15__* %321, null
  br i1 %322, label %323, label %353

323:                                              ; preds = %313
  %324 = load i32, i32* %6, align 4
  %325 = load i32, i32* %12, align 4
  %326 = add nsw i32 %325, 8
  %327 = icmp slt i32 %324, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %330 = call i32 @toosmall(i32 %329)
  br label %331

331:                                              ; preds = %328, %323
  %332 = load i32*, i32** %4, align 8
  %333 = load i32*, i32** %5, align 8
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = call i8* @windres_get_32(i32* %332, i32* %336, i32 4)
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 9
  store i8* %337, i8** %339, align 8
  %340 = load i32*, i32** %4, align 8
  %341 = load i32*, i32** %5, align 8
  %342 = load i32, i32* %12, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = getelementptr inbounds i32, i32* %344, i64 4
  %346 = call i8* @windres_get_32(i32* %340, i32* %345, i32 4)
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 10
  store i8* %346, i8** %348, align 8
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 11
  store i8* null, i8** %350, align 8
  %351 = load i32, i32* %12, align 4
  %352 = add nsw i32 %351, 8
  store i32 %352, i32* %12, align 4
  br label %390

353:                                              ; preds = %313
  %354 = load i32, i32* %6, align 4
  %355 = load i32, i32* %12, align 4
  %356 = add nsw i32 %355, 12
  %357 = icmp slt i32 %354, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %353
  %359 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %360 = call i32 @toosmall(i32 %359)
  br label %361

361:                                              ; preds = %358, %353
  %362 = load i32*, i32** %4, align 8
  %363 = load i32*, i32** %5, align 8
  %364 = load i32, i32* %12, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = call i8* @windres_get_32(i32* %362, i32* %366, i32 4)
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 11
  store i8* %367, i8** %369, align 8
  %370 = load i32*, i32** %4, align 8
  %371 = load i32*, i32** %5, align 8
  %372 = load i32, i32* %12, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = getelementptr inbounds i32, i32* %374, i64 4
  %376 = call i8* @windres_get_32(i32* %370, i32* %375, i32 4)
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 10
  store i8* %376, i8** %378, align 8
  %379 = load i32*, i32** %4, align 8
  %380 = load i32*, i32** %5, align 8
  %381 = load i32, i32* %12, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = getelementptr inbounds i32, i32* %383, i64 8
  %385 = call i8* @windres_get_32(i32* %379, i32* %384, i32 4)
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 9
  store i8* %385, i8** %387, align 8
  %388 = load i32, i32* %12, align 4
  %389 = add nsw i32 %388, 12
  store i32 %389, i32* %12, align 4
  br label %390

390:                                              ; preds = %361, %331
  %391 = load i32, i32* %6, align 4
  %392 = load i32, i32* %12, align 4
  %393 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %394, align 8
  %396 = icmp ne %struct.TYPE_15__* %395, null
  %397 = zext i1 %396 to i64
  %398 = select i1 %396, i32 2, i32 0
  %399 = add nsw i32 %392, %398
  %400 = add nsw i32 %399, 10
  %401 = icmp slt i32 %391, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %390
  %403 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %404 = call i32 @toosmall(i32 %403)
  br label %405

405:                                              ; preds = %402, %390
  %406 = load i32*, i32** %4, align 8
  %407 = load i32*, i32** %5, align 8
  %408 = load i32, i32* %12, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = call i8* @windres_get_16(i32* %406, i32* %410, i32 2)
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 8
  store i8* %411, i8** %413, align 8
  %414 = load i32*, i32** %4, align 8
  %415 = load i32*, i32** %5, align 8
  %416 = load i32, i32* %12, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = getelementptr inbounds i32, i32* %418, i64 2
  %420 = call i8* @windres_get_16(i32* %414, i32* %419, i32 2)
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %421, i32 0, i32 7
  store i8* %420, i8** %422, align 8
  %423 = load i32*, i32** %4, align 8
  %424 = load i32*, i32** %5, align 8
  %425 = load i32, i32* %12, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = getelementptr inbounds i32, i32* %427, i64 4
  %429 = call i8* @windres_get_16(i32* %423, i32* %428, i32 2)
  %430 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %430, i32 0, i32 6
  store i8* %429, i8** %431, align 8
  %432 = load i32*, i32** %4, align 8
  %433 = load i32*, i32** %5, align 8
  %434 = load i32, i32* %12, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = getelementptr inbounds i32, i32* %436, i64 6
  %438 = call i8* @windres_get_16(i32* %432, i32* %437, i32 2)
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i32 0, i32 5
  store i8* %438, i8** %440, align 8
  %441 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %442 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %441, i32 0, i32 1
  %443 = load %struct.TYPE_15__*, %struct.TYPE_15__** %442, align 8
  %444 = icmp ne %struct.TYPE_15__* %443, null
  br i1 %444, label %445, label %455

445:                                              ; preds = %405
  %446 = load i32*, i32** %4, align 8
  %447 = load i32*, i32** %5, align 8
  %448 = load i32, i32* %12, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %447, i64 %449
  %451 = getelementptr inbounds i32, i32* %450, i64 8
  %452 = call i8* @windres_get_32(i32* %446, i32* %451, i32 4)
  %453 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %454 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %453, i32 0, i32 4
  store i8* %452, i8** %454, align 8
  br label %465

455:                                              ; preds = %405
  %456 = load i32*, i32** %4, align 8
  %457 = load i32*, i32** %5, align 8
  %458 = load i32, i32* %12, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %457, i64 %459
  %461 = getelementptr inbounds i32, i32* %460, i64 8
  %462 = call i8* @windres_get_16(i32* %456, i32* %461, i32 2)
  %463 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 4
  store i8* %462, i8** %464, align 8
  br label %465

465:                                              ; preds = %455, %445
  %466 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %466, i32 0, i32 1
  %468 = load %struct.TYPE_15__*, %struct.TYPE_15__** %467, align 8
  %469 = icmp ne %struct.TYPE_15__* %468, null
  %470 = zext i1 %469 to i64
  %471 = select i1 %469, i32 2, i32 0
  %472 = add nsw i32 10, %471
  %473 = load i32, i32* %12, align 4
  %474 = add nsw i32 %473, %472
  store i32 %474, i32* %12, align 4
  %475 = load i32*, i32** %4, align 8
  %476 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %476, i32 0, i32 3
  %478 = load i32*, i32** %5, align 8
  %479 = load i32, i32* %12, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  %482 = load i32, i32* %6, align 4
  %483 = load i32, i32* %12, align 4
  %484 = sub nsw i32 %482, %483
  %485 = call i32 @get_resid(i32* %475, i32* %477, i32* %481, i32 %484)
  store i32 %485, i32* %10, align 4
  %486 = load i32, i32* %10, align 4
  %487 = load i32, i32* %12, align 4
  %488 = add nsw i32 %487, %486
  store i32 %488, i32* %12, align 4
  %489 = load i32*, i32** %4, align 8
  %490 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %491 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %490, i32 0, i32 2
  %492 = load i32*, i32** %5, align 8
  %493 = load i32, i32* %12, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  %496 = load i32, i32* %6, align 4
  %497 = load i32, i32* %12, align 4
  %498 = sub nsw i32 %496, %497
  %499 = call i32 @get_resid(i32* %489, i32* %491, i32* %495, i32 %498)
  store i32 %499, i32* %10, align 4
  %500 = load i32, i32* %10, align 4
  %501 = load i32, i32* %12, align 4
  %502 = add nsw i32 %501, %500
  store i32 %502, i32* %12, align 4
  %503 = load i32, i32* %6, align 4
  %504 = load i32, i32* %12, align 4
  %505 = add nsw i32 %504, 2
  %506 = icmp slt i32 %503, %505
  br i1 %506, label %507, label %510

507:                                              ; preds = %465
  %508 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %509 = call i32 @toosmall(i32 %508)
  br label %510

510:                                              ; preds = %507, %465
  %511 = load i32*, i32** %4, align 8
  %512 = load i32*, i32** %5, align 8
  %513 = load i32, i32* %12, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  %516 = call i8* @windres_get_16(i32* %511, i32* %515, i32 2)
  %517 = ptrtoint i8* %516 to i32
  store i32 %517, i32* %17, align 4
  %518 = load i32, i32* %12, align 4
  %519 = add nsw i32 %518, 2
  store i32 %519, i32* %12, align 4
  %520 = load i32, i32* %17, align 4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %525

522:                                              ; preds = %510
  %523 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %524 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %523, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %524, align 8
  br label %571

525:                                              ; preds = %510
  %526 = load i32, i32* %12, align 4
  %527 = add nsw i32 %526, 3
  %528 = and i32 %527, -4
  store i32 %528, i32* %12, align 4
  %529 = load i32, i32* %6, align 4
  %530 = load i32, i32* %12, align 4
  %531 = load i32, i32* %17, align 4
  %532 = add nsw i32 %530, %531
  %533 = icmp slt i32 %529, %532
  br i1 %533, label %534, label %537

534:                                              ; preds = %525
  %535 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %536 = call i32 @toosmall(i32 %535)
  br label %537

537:                                              ; preds = %534, %525
  %538 = call i64 @res_alloc(i32 32)
  %539 = inttoptr i64 %538 to %struct.TYPE_14__*
  %540 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %541 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %540, i32 0, i32 1
  store %struct.TYPE_14__* %539, %struct.TYPE_14__** %541, align 8
  %542 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %543 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %542, i32 0, i32 1
  %544 = load %struct.TYPE_14__*, %struct.TYPE_14__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %544, i32 0, i32 2
  store i32* null, i32** %545, align 8
  %546 = load i32, i32* @RCDATA_BUFFER, align 4
  %547 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %548 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %547, i32 0, i32 1
  %549 = load %struct.TYPE_14__*, %struct.TYPE_14__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %549, i32 0, i32 1
  store i32 %546, i32* %550, align 8
  %551 = load i32, i32* %17, align 4
  %552 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %553 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %552, i32 0, i32 1
  %554 = load %struct.TYPE_14__*, %struct.TYPE_14__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 0
  store i32 %551, i32* %557, align 8
  %558 = load i32*, i32** %5, align 8
  %559 = load i32, i32* %12, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %558, i64 %560
  %562 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %563 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %562, i32 0, i32 1
  %564 = load %struct.TYPE_14__*, %struct.TYPE_14__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %566, i32 0, i32 1
  store i32* %561, i32** %567, align 8
  %568 = load i32, i32* %17, align 4
  %569 = load i32, i32* %12, align 4
  %570 = add nsw i32 %569, %568
  store i32 %570, i32* %12, align 4
  br label %571

571:                                              ; preds = %537, %522
  %572 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %573 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %572, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %573, align 8
  %574 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %575 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  store %struct.TYPE_16__* %574, %struct.TYPE_16__** %575, align 8
  %576 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %577 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %576, i32 0, i32 0
  store %struct.TYPE_16__** %577, %struct.TYPE_16__*** %13, align 8
  br label %578

578:                                              ; preds = %571
  %579 = load i32, i32* %11, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %11, align 4
  br label %309

581:                                              ; preds = %309
  %582 = call i64 @res_alloc(i32 16)
  %583 = inttoptr i64 %582 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %583, %struct.TYPE_13__** %14, align 8
  %584 = load i32, i32* @RES_TYPE_DIALOG, align 4
  %585 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %586 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %585, i32 0, i32 1
  store i32 %584, i32* %586, align 8
  %587 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %588 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %589 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %589, i32 0, i32 0
  store %struct.TYPE_17__* %587, %struct.TYPE_17__** %590, align 8
  %591 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  ret %struct.TYPE_13__* %591
}

declare dso_local i32 @toosmall(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i8* @windres_get_16(i32*, i32*, i32) #1

declare dso_local i8* @windres_get_32(i32*, i32*, i32) #1

declare dso_local i32 @fatal(i32, i32) #1

declare dso_local i32 @get_resid(i32*, i32*, i32*, i32) #1

declare dso_local i8* @get_unicode(i32*, i32*, i32, i32*) #1

declare dso_local i8* @windres_get_8(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
