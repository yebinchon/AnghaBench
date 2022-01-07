; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_descendant_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_descendant_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @descendant_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @descendant_sort(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %294, %105, %28, %2
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %295

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %12, align 4
  br label %15

31:                                               ; preds = %19
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %54

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %32

54:                                               ; preds = %49, %32
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %98, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %101

59:                                               ; preds = %55
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %67, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %59
  br label %98

78:                                               ; preds = %59
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %86, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %78
  br label %101

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %77
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %55

101:                                              ; preds = %96, %55
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %12, align 4
  br label %15

109:                                              ; preds = %101
  store i32 1, i32* %9, align 4
  br label %110

110:                                              ; preds = %136, %109
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %139

116:                                              ; preds = %110
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp sle i32 %125, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  br label %139

135:                                              ; preds = %116
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %110

139:                                              ; preds = %134, %110
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %182, %139
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %143, %144
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %185

147:                                              ; preds = %141
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, %155
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %164, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %147
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %173, %147
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %141

185:                                              ; preds = %141
  br label %186

186:                                              ; preds = %293, %185
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %294

189:                                              ; preds = %186
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %5, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %234

193:                                              ; preds = %189
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 %196
  %198 = bitcast %struct.TYPE_9__* %14 to i8*
  %199 = bitcast %struct.TYPE_9__* %197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %198, i8* align 8 %199, i64 24, i1 false)
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i64 %202
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 1
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* %12, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %211, %212
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = mul i64 %215, 24
  %217 = trunc i64 %216 to i32
  %218 = call i32 @memmove(%struct.TYPE_9__* %203, %struct.TYPE_9__* %208, i32 %217)
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %220, %221
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i64 %224
  %226 = bitcast %struct.TYPE_9__* %225 to i8*
  %227 = bitcast %struct.TYPE_9__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %226, i8* align 8 %227, i64 24, i1 false)
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %5, align 4
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %293

234:                                              ; preds = %189
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %236, %237
  %239 = icmp ne i32 %235, %238
  br i1 %239, label %240, label %285

240:                                              ; preds = %234
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i64 %243
  %245 = bitcast %struct.TYPE_9__* %14 to i8*
  %246 = bitcast %struct.TYPE_9__* %244 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %245, i8* align 8 %246, i64 24, i1 false)
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i64 %249
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i64 1
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %256 = load i32, i32* %5, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i64 %257
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i64 %260
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* %5, align 4
  %264 = sub nsw i32 %262, %263
  %265 = load i32, i32* %9, align 4
  %266 = sub nsw i32 %264, %265
  %267 = sext i32 %266 to i64
  %268 = mul i64 %267, 24
  %269 = trunc i64 %268 to i32
  %270 = call i32 @memmove(%struct.TYPE_9__* %254, %struct.TYPE_9__* %261, i32 %269)
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %272, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i64 %275
  %277 = bitcast %struct.TYPE_9__* %276 to i8*
  %278 = bitcast %struct.TYPE_9__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %277, i8* align 8 %278, i64 24, i1 false)
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %9, align 4
  %281 = load i32, i32* %10, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %10, align 4
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %12, align 4
  br label %292

285:                                              ; preds = %234
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* %9, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %9, align 4
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %292

292:                                              ; preds = %285, %240
  br label %293

293:                                              ; preds = %292, %193
  br label %186

294:                                              ; preds = %186
  br label %15

295:                                              ; preds = %15
  %296 = load i32, i32* %7, align 4
  %297 = add nsw i32 %296, 7
  %298 = sdiv i32 %297, 8
  %299 = call i8* @malloc(i32 %298)
  store i8* %299, i8** %13, align 8
  %300 = load i8*, i8** %13, align 8
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, 7
  %303 = sdiv i32 %302, 8
  %304 = call i32 @memset(i8* %300, i8 signext 0, i32 %303)
  store i32 0, i32* %12, align 4
  br label %305

305:                                              ; preds = %499, %295
  %306 = load i32, i32* %12, align 4
  %307 = load i32, i32* %4, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %502

309:                                              ; preds = %305
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  store i32 %316, i32* %6, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %309
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %320 = load i32, i32* %12, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  store i8* null, i8** %324, align 8
  br label %499

325:                                              ; preds = %309
  %326 = load i32, i32* %6, align 4
  %327 = mul nsw i32 %326, 2
  %328 = add nsw i32 %327, 1
  %329 = call i8* @malloc(i32 %328)
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %331 = load i32, i32* %12, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  store i8* %329, i8** %335, align 8
  %336 = icmp eq i8* %329, null
  br i1 %336, label %337, label %339

337:                                              ; preds = %325
  %338 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %339

339:                                              ; preds = %337, %325
  store i32 0, i32* %8, align 4
  br label %340

340:                                              ; preds = %384, %339
  %341 = load i32, i32* %8, align 4
  %342 = load i32, i32* %6, align 4
  %343 = sub nsw i32 %342, 2
  %344 = icmp slt i32 %341, %343
  br i1 %344, label %345, label %387

345:                                              ; preds = %340
  %346 = load i8*, i8** %13, align 8
  %347 = load i32, i32* %8, align 4
  %348 = sdiv i32 %347, 8
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, i8* %346, i64 %349
  %351 = load i8, i8* %350, align 1
  %352 = zext i8 %351 to i32
  %353 = load i32, i32* %8, align 4
  %354 = srem i32 %353, 8
  %355 = shl i32 1, %354
  %356 = and i32 %352, %355
  %357 = icmp ne i32 %356, 0
  %358 = zext i1 %357 to i64
  %359 = select i1 %357, i32 124, i32 32
  %360 = trunc i32 %359 to i8
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %362 = load i32, i32* %12, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 1
  %367 = load i8*, i8** %366, align 8
  %368 = load i32, i32* %8, align 4
  %369 = mul nsw i32 %368, 2
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %367, i64 %370
  store i8 %360, i8* %371, align 1
  %372 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %373 = load i32, i32* %12, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 1
  %378 = load i8*, i8** %377, align 8
  %379 = load i32, i32* %8, align 4
  %380 = mul nsw i32 %379, 2
  %381 = add nsw i32 %380, 1
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %378, i64 %382
  store i8 32, i8* %383, align 1
  br label %384

384:                                              ; preds = %345
  %385 = load i32, i32* %8, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %8, align 4
  br label %340

387:                                              ; preds = %340
  %388 = load i32, i32* %8, align 4
  %389 = load i32, i32* %6, align 4
  %390 = sub nsw i32 %389, 2
  %391 = icmp eq i32 %388, %390
  br i1 %391, label %392, label %486

392:                                              ; preds = %387
  store i32 0, i32* %11, align 4
  %393 = load i32, i32* %12, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %5, align 4
  br label %395

395:                                              ; preds = %422, %392
  %396 = load i32, i32* %5, align 4
  %397 = load i32, i32* %4, align 4
  %398 = icmp slt i32 %396, %397
  br i1 %398, label %399, label %425

399:                                              ; preds = %395
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %401 = load i32, i32* %5, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* %6, align 4
  %408 = icmp sgt i32 %406, %407
  br i1 %408, label %409, label %410

409:                                              ; preds = %399
  br label %422

410:                                              ; preds = %399
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %412 = load i32, i32* %5, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* %6, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %420, label %421

420:                                              ; preds = %410
  store i32 1, i32* %11, align 4
  br label %421

421:                                              ; preds = %420, %410
  br label %425

422:                                              ; preds = %409
  %423 = load i32, i32* %5, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %5, align 4
  br label %395

425:                                              ; preds = %421, %395
  %426 = load i32, i32* %11, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %441

428:                                              ; preds = %425
  %429 = load i32, i32* %8, align 4
  %430 = srem i32 %429, 8
  %431 = shl i32 1, %430
  %432 = load i8*, i8** %13, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sdiv i32 %433, 8
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, i8* %432, i64 %435
  %437 = load i8, i8* %436, align 1
  %438 = zext i8 %437 to i32
  %439 = or i32 %438, %431
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %436, align 1
  br label %455

441:                                              ; preds = %425
  %442 = load i32, i32* %8, align 4
  %443 = srem i32 %442, 8
  %444 = shl i32 1, %443
  %445 = xor i32 %444, -1
  %446 = load i8*, i8** %13, align 8
  %447 = load i32, i32* %8, align 4
  %448 = sdiv i32 %447, 8
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, i8* %446, i64 %449
  %451 = load i8, i8* %450, align 1
  %452 = zext i8 %451 to i32
  %453 = and i32 %452, %445
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %450, align 1
  br label %455

455:                                              ; preds = %441, %428
  %456 = load i32, i32* %11, align 4
  %457 = icmp ne i32 %456, 0
  %458 = zext i1 %457 to i64
  %459 = select i1 %457, i32 124, i32 96
  %460 = trunc i32 %459 to i8
  %461 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %462 = load i32, i32* %12, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %461, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %465, i32 0, i32 1
  %467 = load i8*, i8** %466, align 8
  %468 = load i32, i32* %8, align 4
  %469 = mul nsw i32 %468, 2
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i8, i8* %467, i64 %470
  store i8 %460, i8* %471, align 1
  %472 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %473 = load i32, i32* %12, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %472, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %476, i32 0, i32 1
  %478 = load i8*, i8** %477, align 8
  %479 = load i32, i32* %8, align 4
  %480 = mul nsw i32 %479, 2
  %481 = add nsw i32 %480, 1
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8, i8* %478, i64 %482
  store i8 45, i8* %483, align 1
  %484 = load i32, i32* %8, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %8, align 4
  br label %486

486:                                              ; preds = %455, %387
  %487 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %488 = load i32, i32* %12, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %491, i32 0, i32 1
  %493 = load i8*, i8** %492, align 8
  %494 = load i32, i32* %8, align 4
  %495 = mul nsw i32 %494, 2
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8, i8* %493, i64 %496
  %498 = call i32 @strcpy(i8* %497, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %499

499:                                              ; preds = %486, %318
  %500 = load i32, i32* %12, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %12, align 4
  br label %305

502:                                              ; preds = %305
  %503 = load i8*, i8** %13, align 8
  %504 = call i32 @free(i8* %503)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memmove(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @xo_errx(i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
