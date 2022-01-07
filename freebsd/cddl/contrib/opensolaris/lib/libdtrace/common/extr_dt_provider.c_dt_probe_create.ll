; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, %struct.TYPE_16__**, %struct.TYPE_14__*, %struct.TYPE_16__**, i64*, i64, i64, i64, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_18__*, i32* }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, i32, i32, i32* }
%struct.TYPE_17__ = type { i32* }

@DT_IDENT_PROBE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @dt_probe_create(i32* %0, %struct.TYPE_18__* %1, i32 %2, %struct.TYPE_16__* %3, i64 %4, %struct.TYPE_16__* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DT_IDENT_PROBE, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = icmp eq %struct.TYPE_15__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %46

35:                                               ; preds = %7
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %37 = icmp eq %struct.TYPE_16__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i64, i64* %15, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %14, align 8
  %45 = load i64, i64* %13, align 8
  store i64 %45, i64* %15, align 8
  br label %46

46:                                               ; preds = %35, %7
  %47 = load i32*, i32** %9, align 8
  %48 = call i8* @dt_alloc(i32* %47, i32 104)
  %49 = bitcast i8* %48 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %17, align 8
  %50 = icmp eq %struct.TYPE_15__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  br label %265

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 12
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 11
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @strrchr(i32 %60, i8 signext 58)
  store i8* %61, i8** %18, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = icmp ne i8* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i8*, i8** %18, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 10
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %72, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i64, i64* %13, align 8
  %75 = mul i64 8, %74
  %76 = trunc i64 %75 to i32
  %77 = call i8* @dt_alloc(i32* %73, i32 %76)
  %78 = bitcast i8* %77 to %struct.TYPE_16__**
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  store %struct.TYPE_16__** %78, %struct.TYPE_16__*** %80, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 7
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 9
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %86, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i64, i64* %15, align 8
  %89 = mul i64 8, %88
  %90 = trunc i64 %89 to i32
  %91 = call i8* @dt_alloc(i32* %87, i32 %90)
  %92 = bitcast i8* %91 to %struct.TYPE_16__**
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 3
  store %struct.TYPE_16__** %92, %struct.TYPE_16__*** %94, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 6
  store i64 %95, i64* %97, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i64, i64* %15, align 8
  %100 = mul i64 4, %99
  %101 = trunc i64 %100 to i32
  %102 = call i8* @dt_alloc(i32* %98, i32 %101)
  %103 = bitcast i8* %102 to i64*
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 4
  store i64* %103, i64** %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 8
  store i32* null, i32** %107, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i64, i64* %15, align 8
  %110 = mul i64 4, %109
  %111 = trunc i64 %110 to i32
  %112 = call i8* @dt_alloc(i32* %108, i32 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_14__*
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %115, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 5
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %52
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %125, align 8
  %127 = icmp eq %struct.TYPE_16__** %126, null
  br i1 %127, label %158, label %128

128:                                              ; preds = %123, %52
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %135, align 8
  %137 = icmp eq %struct.TYPE_16__** %136, null
  br i1 %137, label %158, label %138

138:                                              ; preds = %133, %128
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 4
  %146 = load i64*, i64** %145, align 8
  %147 = icmp eq i64* %146, null
  br i1 %147, label %158, label %148

148:                                              ; preds = %143, %138
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = icmp eq %struct.TYPE_14__* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %153, %143, %133, %123
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %160 = call i32 @dt_probe_destroy(%struct.TYPE_15__* %159)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  br label %265

161:                                              ; preds = %153, %148
  store i64 0, i64* %19, align 8
  br label %162

162:                                              ; preds = %236, %161
  %163 = load i64, i64* %19, align 8
  %164 = load i64, i64* %15, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %242

166:                                              ; preds = %162
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %174 = call i64 @dt_probe_argmap(%struct.TYPE_16__* %172, %struct.TYPE_16__* %173)
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 4
  %177 = load i64*, i64** %176, align 8
  %178 = load i64, i64* %19, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64 %174, i64* %179, align 8
  br label %187

180:                                              ; preds = %166
  %181 = load i64, i64* %19, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 4
  %184 = load i64*, i64** %183, align 8
  %185 = load i64, i64* %19, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  store i64 %181, i64* %186, align 8
  br label %187

187:                                              ; preds = %180, %171
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %190, align 8
  %192 = load i64, i64* %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %191, i64 %192
  store %struct.TYPE_16__* %188, %struct.TYPE_16__** %193, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call %struct.TYPE_17__* @dt_module_lookup_by_ctf(i32* %194, i32 %197)
  store %struct.TYPE_17__* %198, %struct.TYPE_17__** %16, align 8
  %199 = icmp ne %struct.TYPE_17__* %198, null
  br i1 %199, label %200, label %210

200:                                              ; preds = %187
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %205, align 8
  %207 = load i64, i64* %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  store i32* %203, i32** %209, align 8
  br label %217

210:                                              ; preds = %187
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = load i64, i64* %19, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  store i32* null, i32** %216, align 8
  br label %217

217:                                              ; preds = %210, %200
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = load i64, i64* %19, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  store i32 %220, i32* %226, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = load i64, i64* %19, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  store i32 %229, i32* %235, align 8
  br label %236

236:                                              ; preds = %217
  %237 = load i64, i64* %19, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %19, align 8
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  store %struct.TYPE_16__* %241, %struct.TYPE_16__** %14, align 8
  br label %162

242:                                              ; preds = %162
  store i64 0, i64* %19, align 8
  br label %243

243:                                              ; preds = %254, %242
  %244 = load i64, i64* %19, align 8
  %245 = load i64, i64* %13, align 8
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %247, label %260

247:                                              ; preds = %243
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %250, align 8
  %252 = load i64, i64* %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %251, i64 %252
  store %struct.TYPE_16__* %248, %struct.TYPE_16__** %253, align 8
  br label %254

254:                                              ; preds = %247
  %255 = load i64, i64* %19, align 8
  %256 = add nsw i64 %255, 1
  store i64 %256, i64* %19, align 8
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %258, align 8
  store %struct.TYPE_16__* %259, %struct.TYPE_16__** %12, align 8
  br label %243

260:                                              ; preds = %243
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 1
  store %struct.TYPE_15__* %261, %struct.TYPE_15__** %263, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %264, %struct.TYPE_15__** %8, align 8
  br label %265

265:                                              ; preds = %260, %158, %51
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  ret %struct.TYPE_15__* %266
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @dt_alloc(i32*, i32) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i32 @dt_probe_destroy(%struct.TYPE_15__*) #1

declare dso_local i64 @dt_probe_argmap(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @dt_module_lookup_by_ctf(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
