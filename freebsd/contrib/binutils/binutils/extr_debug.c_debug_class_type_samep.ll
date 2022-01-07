; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_class_type_samep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_class_type_samep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { i32 }
%struct.debug_type = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.debug_class_type* }
%struct.debug_class_type = type { %struct.debug_method**, %struct.debug_baseclass**, i32*, %struct.debug_field** }
%struct.debug_method = type { i64*, %struct.debug_method_variant** }
%struct.debug_method_variant = type { i64*, i64, i64, i64, i64, i32*, i32* }
%struct.debug_baseclass = type { i64, i64, i64, i32* }
%struct.debug_field = type { i64*, i64, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_handle*, %struct.debug_type*, %struct.debug_type*)* @debug_class_type_samep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_class_type_samep(%struct.debug_handle* %0, %struct.debug_type* %1, %struct.debug_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.debug_handle*, align 8
  %6 = alloca %struct.debug_type*, align 8
  %7 = alloca %struct.debug_type*, align 8
  %8 = alloca %struct.debug_class_type*, align 8
  %9 = alloca %struct.debug_class_type*, align 8
  %10 = alloca %struct.debug_field**, align 8
  %11 = alloca %struct.debug_field**, align 8
  %12 = alloca %struct.debug_field*, align 8
  %13 = alloca %struct.debug_field*, align 8
  %14 = alloca %struct.debug_baseclass**, align 8
  %15 = alloca %struct.debug_baseclass**, align 8
  %16 = alloca %struct.debug_baseclass*, align 8
  %17 = alloca %struct.debug_baseclass*, align 8
  %18 = alloca %struct.debug_method**, align 8
  %19 = alloca %struct.debug_method**, align 8
  %20 = alloca %struct.debug_method*, align 8
  %21 = alloca %struct.debug_method*, align 8
  %22 = alloca %struct.debug_method_variant**, align 8
  %23 = alloca %struct.debug_method_variant**, align 8
  %24 = alloca %struct.debug_method_variant*, align 8
  %25 = alloca %struct.debug_method_variant*, align 8
  store %struct.debug_handle* %0, %struct.debug_handle** %5, align 8
  store %struct.debug_type* %1, %struct.debug_type** %6, align 8
  store %struct.debug_type* %2, %struct.debug_type** %7, align 8
  %26 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %27 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.debug_class_type*, %struct.debug_class_type** %28, align 8
  store %struct.debug_class_type* %29, %struct.debug_class_type** %8, align 8
  %30 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %31 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.debug_class_type*, %struct.debug_class_type** %32, align 8
  store %struct.debug_class_type* %33, %struct.debug_class_type** %9, align 8
  %34 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %35 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %34, i32 0, i32 3
  %36 = load %struct.debug_field**, %struct.debug_field*** %35, align 8
  %37 = icmp eq %struct.debug_field** %36, null
  %38 = zext i1 %37 to i32
  %39 = load %struct.debug_class_type*, %struct.debug_class_type** %9, align 8
  %40 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %39, i32 0, i32 3
  %41 = load %struct.debug_field**, %struct.debug_field*** %40, align 8
  %42 = icmp eq %struct.debug_field** %41, null
  %43 = zext i1 %42 to i32
  %44 = icmp ne i32 %38, %43
  br i1 %44, label %81, label %45

45:                                               ; preds = %3
  %46 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %47 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %46, i32 0, i32 1
  %48 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %47, align 8
  %49 = icmp eq %struct.debug_baseclass** %48, null
  %50 = zext i1 %49 to i32
  %51 = load %struct.debug_class_type*, %struct.debug_class_type** %9, align 8
  %52 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %51, i32 0, i32 1
  %53 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %52, align 8
  %54 = icmp eq %struct.debug_baseclass** %53, null
  %55 = zext i1 %54 to i32
  %56 = icmp ne i32 %50, %55
  br i1 %56, label %81, label %57

57:                                               ; preds = %45
  %58 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %59 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %58, i32 0, i32 0
  %60 = load %struct.debug_method**, %struct.debug_method*** %59, align 8
  %61 = icmp eq %struct.debug_method** %60, null
  %62 = zext i1 %61 to i32
  %63 = load %struct.debug_class_type*, %struct.debug_class_type** %9, align 8
  %64 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %63, i32 0, i32 0
  %65 = load %struct.debug_method**, %struct.debug_method*** %64, align 8
  %66 = icmp eq %struct.debug_method** %65, null
  %67 = zext i1 %66 to i32
  %68 = icmp ne i32 %62, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %57
  %70 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %71 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = load %struct.debug_class_type*, %struct.debug_class_type** %9, align 8
  %76 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = icmp ne i32 %74, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %69, %57, %45, %3
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %4, align 4
  br label %546

83:                                               ; preds = %69
  %84 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %85 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %84, i32 0, i32 3
  %86 = load %struct.debug_field**, %struct.debug_field*** %85, align 8
  %87 = icmp ne %struct.debug_field** %86, null
  br i1 %87, label %88, label %231

88:                                               ; preds = %83
  %89 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %90 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %89, i32 0, i32 3
  %91 = load %struct.debug_field**, %struct.debug_field*** %90, align 8
  store %struct.debug_field** %91, %struct.debug_field*** %10, align 8
  %92 = load %struct.debug_class_type*, %struct.debug_class_type** %9, align 8
  %93 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %92, i32 0, i32 3
  %94 = load %struct.debug_field**, %struct.debug_field*** %93, align 8
  store %struct.debug_field** %94, %struct.debug_field*** %11, align 8
  br label %95

95:                                               ; preds = %215, %88
  %96 = load %struct.debug_field**, %struct.debug_field*** %10, align 8
  %97 = load %struct.debug_field*, %struct.debug_field** %96, align 8
  %98 = icmp ne %struct.debug_field* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.debug_field**, %struct.debug_field*** %11, align 8
  %101 = load %struct.debug_field*, %struct.debug_field** %100, align 8
  %102 = icmp ne %struct.debug_field* %101, null
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i1 [ false, %95 ], [ %102, %99 ]
  br i1 %104, label %105, label %220

105:                                              ; preds = %103
  %106 = load %struct.debug_field**, %struct.debug_field*** %10, align 8
  %107 = load %struct.debug_field*, %struct.debug_field** %106, align 8
  store %struct.debug_field* %107, %struct.debug_field** %12, align 8
  %108 = load %struct.debug_field**, %struct.debug_field*** %11, align 8
  %109 = load %struct.debug_field*, %struct.debug_field** %108, align 8
  store %struct.debug_field* %109, %struct.debug_field** %13, align 8
  %110 = load %struct.debug_field*, %struct.debug_field** %12, align 8
  %111 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.debug_field*, %struct.debug_field** %13, align 8
  %116 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %114, %119
  br i1 %120, label %137, label %121

121:                                              ; preds = %105
  %122 = load %struct.debug_field*, %struct.debug_field** %12, align 8
  %123 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.debug_field*, %struct.debug_field** %13, align 8
  %126 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %121
  %130 = load %struct.debug_field*, %struct.debug_field** %12, align 8
  %131 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.debug_field*, %struct.debug_field** %13, align 8
  %134 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %129, %121, %105
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %4, align 4
  br label %546

139:                                              ; preds = %129
  %140 = load %struct.debug_field*, %struct.debug_field** %12, align 8
  %141 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %139
  %145 = load %struct.debug_field*, %struct.debug_field** %12, align 8
  %146 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load %struct.debug_field*, %struct.debug_field** %13, align 8
  %151 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = call i64 @strcmp(i64* %149, i64* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %144
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %4, align 4
  br label %546

159:                                              ; preds = %144
  br label %187

160:                                              ; preds = %139
  %161 = load %struct.debug_field*, %struct.debug_field** %12, align 8
  %162 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.debug_field*, %struct.debug_field** %13, align 8
  %167 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %165, %170
  br i1 %171, label %184, label %172

172:                                              ; preds = %160
  %173 = load %struct.debug_field*, %struct.debug_field** %12, align 8
  %174 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.debug_field*, %struct.debug_field** %13, align 8
  %179 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %177, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %172, %160
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %4, align 4
  br label %546

186:                                              ; preds = %172
  br label %187

187:                                              ; preds = %186, %159
  %188 = load %struct.debug_field*, %struct.debug_field** %12, align 8
  %189 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load %struct.debug_field*, %struct.debug_field** %13, align 8
  %192 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = call i64 @strcmp(i64* %190, i64* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %212, label %196

196:                                              ; preds = %187
  %197 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %198 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %199 = bitcast %struct.debug_handle* %198 to i8*
  %200 = load %struct.debug_field*, %struct.debug_field** %12, align 8
  %201 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = call i32* @debug_get_real_type(i8* %199, i32 %202, i32* null)
  %204 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %205 = bitcast %struct.debug_handle* %204 to i8*
  %206 = load %struct.debug_field*, %struct.debug_field** %13, align 8
  %207 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32* @debug_get_real_type(i8* %205, i32 %208, i32* null)
  %210 = call i32 @debug_type_samep(%struct.debug_handle* %197, i32* %203, i32* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %196, %187
  %213 = load i32, i32* @FALSE, align 4
  store i32 %213, i32* %4, align 4
  br label %546

214:                                              ; preds = %196
  br label %215

215:                                              ; preds = %214
  %216 = load %struct.debug_field**, %struct.debug_field*** %10, align 8
  %217 = getelementptr inbounds %struct.debug_field*, %struct.debug_field** %216, i32 1
  store %struct.debug_field** %217, %struct.debug_field*** %10, align 8
  %218 = load %struct.debug_field**, %struct.debug_field*** %11, align 8
  %219 = getelementptr inbounds %struct.debug_field*, %struct.debug_field** %218, i32 1
  store %struct.debug_field** %219, %struct.debug_field*** %11, align 8
  br label %95

220:                                              ; preds = %103
  %221 = load %struct.debug_field**, %struct.debug_field*** %10, align 8
  %222 = load %struct.debug_field*, %struct.debug_field** %221, align 8
  %223 = icmp ne %struct.debug_field* %222, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = load %struct.debug_field**, %struct.debug_field*** %11, align 8
  %226 = load %struct.debug_field*, %struct.debug_field** %225, align 8
  %227 = icmp ne %struct.debug_field* %226, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %224, %220
  %229 = load i32, i32* @FALSE, align 4
  store i32 %229, i32* %4, align 4
  br label %546

230:                                              ; preds = %224
  br label %231

231:                                              ; preds = %230, %83
  %232 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %233 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %249

236:                                              ; preds = %231
  %237 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %238 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %239 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.debug_class_type*, %struct.debug_class_type** %9, align 8
  %242 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @debug_type_samep(%struct.debug_handle* %237, i32* %240, i32* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %236
  %247 = load i32, i32* @FALSE, align 4
  store i32 %247, i32* %4, align 4
  br label %546

248:                                              ; preds = %236
  br label %249

249:                                              ; preds = %248, %231
  %250 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %251 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %250, i32 0, i32 1
  %252 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %251, align 8
  %253 = icmp ne %struct.debug_baseclass** %252, null
  br i1 %253, label %254, label %328

254:                                              ; preds = %249
  %255 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %256 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %255, i32 0, i32 1
  %257 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %256, align 8
  store %struct.debug_baseclass** %257, %struct.debug_baseclass*** %14, align 8
  %258 = load %struct.debug_class_type*, %struct.debug_class_type** %9, align 8
  %259 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %258, i32 0, i32 1
  %260 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %259, align 8
  store %struct.debug_baseclass** %260, %struct.debug_baseclass*** %15, align 8
  br label %261

261:                                              ; preds = %312, %254
  %262 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %14, align 8
  %263 = load %struct.debug_baseclass*, %struct.debug_baseclass** %262, align 8
  %264 = icmp ne %struct.debug_baseclass* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %15, align 8
  %267 = load %struct.debug_baseclass*, %struct.debug_baseclass** %266, align 8
  %268 = icmp ne %struct.debug_baseclass* %267, null
  br label %269

269:                                              ; preds = %265, %261
  %270 = phi i1 [ false, %261 ], [ %268, %265 ]
  br i1 %270, label %271, label %317

271:                                              ; preds = %269
  %272 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %14, align 8
  %273 = load %struct.debug_baseclass*, %struct.debug_baseclass** %272, align 8
  store %struct.debug_baseclass* %273, %struct.debug_baseclass** %16, align 8
  %274 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %15, align 8
  %275 = load %struct.debug_baseclass*, %struct.debug_baseclass** %274, align 8
  store %struct.debug_baseclass* %275, %struct.debug_baseclass** %17, align 8
  %276 = load %struct.debug_baseclass*, %struct.debug_baseclass** %16, align 8
  %277 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.debug_baseclass*, %struct.debug_baseclass** %17, align 8
  %280 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %278, %281
  br i1 %282, label %309, label %283

283:                                              ; preds = %271
  %284 = load %struct.debug_baseclass*, %struct.debug_baseclass** %16, align 8
  %285 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.debug_baseclass*, %struct.debug_baseclass** %17, align 8
  %288 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %286, %289
  br i1 %290, label %309, label %291

291:                                              ; preds = %283
  %292 = load %struct.debug_baseclass*, %struct.debug_baseclass** %16, align 8
  %293 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.debug_baseclass*, %struct.debug_baseclass** %17, align 8
  %296 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %294, %297
  br i1 %298, label %309, label %299

299:                                              ; preds = %291
  %300 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %301 = load %struct.debug_baseclass*, %struct.debug_baseclass** %16, align 8
  %302 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %301, i32 0, i32 3
  %303 = load i32*, i32** %302, align 8
  %304 = load %struct.debug_baseclass*, %struct.debug_baseclass** %17, align 8
  %305 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 @debug_type_samep(%struct.debug_handle* %300, i32* %303, i32* %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %299, %291, %283, %271
  %310 = load i32, i32* @FALSE, align 4
  store i32 %310, i32* %4, align 4
  br label %546

311:                                              ; preds = %299
  br label %312

312:                                              ; preds = %311
  %313 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %14, align 8
  %314 = getelementptr inbounds %struct.debug_baseclass*, %struct.debug_baseclass** %313, i32 1
  store %struct.debug_baseclass** %314, %struct.debug_baseclass*** %14, align 8
  %315 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %15, align 8
  %316 = getelementptr inbounds %struct.debug_baseclass*, %struct.debug_baseclass** %315, i32 1
  store %struct.debug_baseclass** %316, %struct.debug_baseclass*** %15, align 8
  br label %261

317:                                              ; preds = %269
  %318 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %14, align 8
  %319 = load %struct.debug_baseclass*, %struct.debug_baseclass** %318, align 8
  %320 = icmp ne %struct.debug_baseclass* %319, null
  br i1 %320, label %325, label %321

321:                                              ; preds = %317
  %322 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %15, align 8
  %323 = load %struct.debug_baseclass*, %struct.debug_baseclass** %322, align 8
  %324 = icmp ne %struct.debug_baseclass* %323, null
  br i1 %324, label %325, label %327

325:                                              ; preds = %321, %317
  %326 = load i32, i32* @FALSE, align 4
  store i32 %326, i32* %4, align 4
  br label %546

327:                                              ; preds = %321
  br label %328

328:                                              ; preds = %327, %249
  %329 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %330 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %329, i32 0, i32 0
  %331 = load %struct.debug_method**, %struct.debug_method*** %330, align 8
  %332 = icmp ne %struct.debug_method** %331, null
  br i1 %332, label %333, label %544

333:                                              ; preds = %328
  %334 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %335 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %334, i32 0, i32 0
  %336 = load %struct.debug_method**, %struct.debug_method*** %335, align 8
  store %struct.debug_method** %336, %struct.debug_method*** %18, align 8
  %337 = load %struct.debug_class_type*, %struct.debug_class_type** %9, align 8
  %338 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %337, i32 0, i32 0
  %339 = load %struct.debug_method**, %struct.debug_method*** %338, align 8
  store %struct.debug_method** %339, %struct.debug_method*** %19, align 8
  br label %340

340:                                              ; preds = %528, %333
  %341 = load %struct.debug_method**, %struct.debug_method*** %18, align 8
  %342 = load %struct.debug_method*, %struct.debug_method** %341, align 8
  %343 = icmp ne %struct.debug_method* %342, null
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = load %struct.debug_method**, %struct.debug_method*** %19, align 8
  %346 = load %struct.debug_method*, %struct.debug_method** %345, align 8
  %347 = icmp ne %struct.debug_method* %346, null
  br label %348

348:                                              ; preds = %344, %340
  %349 = phi i1 [ false, %340 ], [ %347, %344 ]
  br i1 %349, label %350, label %533

350:                                              ; preds = %348
  %351 = load %struct.debug_method**, %struct.debug_method*** %18, align 8
  %352 = load %struct.debug_method*, %struct.debug_method** %351, align 8
  store %struct.debug_method* %352, %struct.debug_method** %20, align 8
  %353 = load %struct.debug_method**, %struct.debug_method*** %19, align 8
  %354 = load %struct.debug_method*, %struct.debug_method** %353, align 8
  store %struct.debug_method* %354, %struct.debug_method** %21, align 8
  %355 = load %struct.debug_method*, %struct.debug_method** %20, align 8
  %356 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %355, i32 0, i32 0
  %357 = load i64*, i64** %356, align 8
  %358 = getelementptr inbounds i64, i64* %357, i64 0
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.debug_method*, %struct.debug_method** %21, align 8
  %361 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %360, i32 0, i32 0
  %362 = load i64*, i64** %361, align 8
  %363 = getelementptr inbounds i64, i64* %362, i64 0
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %359, %364
  br i1 %365, label %387, label %366

366:                                              ; preds = %350
  %367 = load %struct.debug_method*, %struct.debug_method** %20, align 8
  %368 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %367, i32 0, i32 0
  %369 = load i64*, i64** %368, align 8
  %370 = load %struct.debug_method*, %struct.debug_method** %21, align 8
  %371 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %370, i32 0, i32 0
  %372 = load i64*, i64** %371, align 8
  %373 = call i64 @strcmp(i64* %369, i64* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %387, label %375

375:                                              ; preds = %366
  %376 = load %struct.debug_method*, %struct.debug_method** %20, align 8
  %377 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %376, i32 0, i32 1
  %378 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %377, align 8
  %379 = icmp eq %struct.debug_method_variant** %378, null
  %380 = zext i1 %379 to i32
  %381 = load %struct.debug_method*, %struct.debug_method** %21, align 8
  %382 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %381, i32 0, i32 1
  %383 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %382, align 8
  %384 = icmp eq %struct.debug_method_variant** %383, null
  %385 = zext i1 %384 to i32
  %386 = icmp ne i32 %380, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %375, %366, %350
  %388 = load i32, i32* @FALSE, align 4
  store i32 %388, i32* %4, align 4
  br label %546

389:                                              ; preds = %375
  %390 = load %struct.debug_method*, %struct.debug_method** %20, align 8
  %391 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %390, i32 0, i32 1
  %392 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %391, align 8
  %393 = icmp eq %struct.debug_method_variant** %392, null
  br i1 %393, label %394, label %527

394:                                              ; preds = %389
  %395 = load %struct.debug_method*, %struct.debug_method** %20, align 8
  %396 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %395, i32 0, i32 1
  %397 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %396, align 8
  store %struct.debug_method_variant** %397, %struct.debug_method_variant*** %22, align 8
  %398 = load %struct.debug_method*, %struct.debug_method** %21, align 8
  %399 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %398, i32 0, i32 1
  %400 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %399, align 8
  store %struct.debug_method_variant** %400, %struct.debug_method_variant*** %23, align 8
  br label %401

401:                                              ; preds = %511, %394
  %402 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %22, align 8
  %403 = load %struct.debug_method_variant*, %struct.debug_method_variant** %402, align 8
  %404 = icmp ne %struct.debug_method_variant* %403, null
  br i1 %404, label %405, label %409

405:                                              ; preds = %401
  %406 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %23, align 8
  %407 = load %struct.debug_method_variant*, %struct.debug_method_variant** %406, align 8
  %408 = icmp ne %struct.debug_method_variant* %407, null
  br label %409

409:                                              ; preds = %405, %401
  %410 = phi i1 [ false, %401 ], [ %408, %405 ]
  br i1 %410, label %411, label %516

411:                                              ; preds = %409
  %412 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %22, align 8
  %413 = load %struct.debug_method_variant*, %struct.debug_method_variant** %412, align 8
  store %struct.debug_method_variant* %413, %struct.debug_method_variant** %24, align 8
  %414 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %23, align 8
  %415 = load %struct.debug_method_variant*, %struct.debug_method_variant** %414, align 8
  store %struct.debug_method_variant* %415, %struct.debug_method_variant** %25, align 8
  %416 = load %struct.debug_method_variant*, %struct.debug_method_variant** %24, align 8
  %417 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %416, i32 0, i32 0
  %418 = load i64*, i64** %417, align 8
  %419 = getelementptr inbounds i64, i64* %418, i64 0
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.debug_method_variant*, %struct.debug_method_variant** %25, align 8
  %422 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %421, i32 0, i32 0
  %423 = load i64*, i64** %422, align 8
  %424 = getelementptr inbounds i64, i64* %423, i64 0
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %420, %425
  br i1 %426, label %490, label %427

427:                                              ; preds = %411
  %428 = load %struct.debug_method_variant*, %struct.debug_method_variant** %24, align 8
  %429 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.debug_method_variant*, %struct.debug_method_variant** %25, align 8
  %432 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %430, %433
  br i1 %434, label %490, label %435

435:                                              ; preds = %427
  %436 = load %struct.debug_method_variant*, %struct.debug_method_variant** %24, align 8
  %437 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %436, i32 0, i32 2
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.debug_method_variant*, %struct.debug_method_variant** %25, align 8
  %440 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %439, i32 0, i32 2
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %438, %441
  br i1 %442, label %490, label %443

443:                                              ; preds = %435
  %444 = load %struct.debug_method_variant*, %struct.debug_method_variant** %24, align 8
  %445 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %444, i32 0, i32 3
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.debug_method_variant*, %struct.debug_method_variant** %25, align 8
  %448 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %447, i32 0, i32 3
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %446, %449
  br i1 %450, label %490, label %451

451:                                              ; preds = %443
  %452 = load %struct.debug_method_variant*, %struct.debug_method_variant** %24, align 8
  %453 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %452, i32 0, i32 4
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.debug_method_variant*, %struct.debug_method_variant** %25, align 8
  %456 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %455, i32 0, i32 4
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %454, %457
  br i1 %458, label %490, label %459

459:                                              ; preds = %451
  %460 = load %struct.debug_method_variant*, %struct.debug_method_variant** %24, align 8
  %461 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %460, i32 0, i32 5
  %462 = load i32*, i32** %461, align 8
  %463 = icmp eq i32* %462, null
  %464 = zext i1 %463 to i32
  %465 = load %struct.debug_method_variant*, %struct.debug_method_variant** %25, align 8
  %466 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %465, i32 0, i32 5
  %467 = load i32*, i32** %466, align 8
  %468 = icmp eq i32* %467, null
  %469 = zext i1 %468 to i32
  %470 = icmp ne i32 %464, %469
  br i1 %470, label %490, label %471

471:                                              ; preds = %459
  %472 = load %struct.debug_method_variant*, %struct.debug_method_variant** %24, align 8
  %473 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %472, i32 0, i32 0
  %474 = load i64*, i64** %473, align 8
  %475 = load %struct.debug_method_variant*, %struct.debug_method_variant** %25, align 8
  %476 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %475, i32 0, i32 0
  %477 = load i64*, i64** %476, align 8
  %478 = call i64 @strcmp(i64* %474, i64* %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %490, label %480

480:                                              ; preds = %471
  %481 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %482 = load %struct.debug_method_variant*, %struct.debug_method_variant** %24, align 8
  %483 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %482, i32 0, i32 6
  %484 = load i32*, i32** %483, align 8
  %485 = load %struct.debug_method_variant*, %struct.debug_method_variant** %25, align 8
  %486 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %485, i32 0, i32 6
  %487 = load i32*, i32** %486, align 8
  %488 = call i32 @debug_type_samep(%struct.debug_handle* %481, i32* %484, i32* %487)
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %492, label %490

490:                                              ; preds = %480, %471, %459, %451, %443, %435, %427, %411
  %491 = load i32, i32* @FALSE, align 4
  store i32 %491, i32* %4, align 4
  br label %546

492:                                              ; preds = %480
  %493 = load %struct.debug_method_variant*, %struct.debug_method_variant** %24, align 8
  %494 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %493, i32 0, i32 5
  %495 = load i32*, i32** %494, align 8
  %496 = icmp ne i32* %495, null
  br i1 %496, label %497, label %510

497:                                              ; preds = %492
  %498 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %499 = load %struct.debug_method_variant*, %struct.debug_method_variant** %24, align 8
  %500 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %499, i32 0, i32 5
  %501 = load i32*, i32** %500, align 8
  %502 = load %struct.debug_method_variant*, %struct.debug_method_variant** %25, align 8
  %503 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %502, i32 0, i32 5
  %504 = load i32*, i32** %503, align 8
  %505 = call i32 @debug_type_samep(%struct.debug_handle* %498, i32* %501, i32* %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %509, label %507

507:                                              ; preds = %497
  %508 = load i32, i32* @FALSE, align 4
  store i32 %508, i32* %4, align 4
  br label %546

509:                                              ; preds = %497
  br label %510

510:                                              ; preds = %509, %492
  br label %511

511:                                              ; preds = %510
  %512 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %22, align 8
  %513 = getelementptr inbounds %struct.debug_method_variant*, %struct.debug_method_variant** %512, i32 1
  store %struct.debug_method_variant** %513, %struct.debug_method_variant*** %22, align 8
  %514 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %23, align 8
  %515 = getelementptr inbounds %struct.debug_method_variant*, %struct.debug_method_variant** %514, i32 1
  store %struct.debug_method_variant** %515, %struct.debug_method_variant*** %23, align 8
  br label %401

516:                                              ; preds = %409
  %517 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %22, align 8
  %518 = load %struct.debug_method_variant*, %struct.debug_method_variant** %517, align 8
  %519 = icmp ne %struct.debug_method_variant* %518, null
  br i1 %519, label %524, label %520

520:                                              ; preds = %516
  %521 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %23, align 8
  %522 = load %struct.debug_method_variant*, %struct.debug_method_variant** %521, align 8
  %523 = icmp ne %struct.debug_method_variant* %522, null
  br i1 %523, label %524, label %526

524:                                              ; preds = %520, %516
  %525 = load i32, i32* @FALSE, align 4
  store i32 %525, i32* %4, align 4
  br label %546

526:                                              ; preds = %520
  br label %527

527:                                              ; preds = %526, %389
  br label %528

528:                                              ; preds = %527
  %529 = load %struct.debug_method**, %struct.debug_method*** %18, align 8
  %530 = getelementptr inbounds %struct.debug_method*, %struct.debug_method** %529, i32 1
  store %struct.debug_method** %530, %struct.debug_method*** %18, align 8
  %531 = load %struct.debug_method**, %struct.debug_method*** %19, align 8
  %532 = getelementptr inbounds %struct.debug_method*, %struct.debug_method** %531, i32 1
  store %struct.debug_method** %532, %struct.debug_method*** %19, align 8
  br label %340

533:                                              ; preds = %348
  %534 = load %struct.debug_method**, %struct.debug_method*** %18, align 8
  %535 = load %struct.debug_method*, %struct.debug_method** %534, align 8
  %536 = icmp ne %struct.debug_method* %535, null
  br i1 %536, label %541, label %537

537:                                              ; preds = %533
  %538 = load %struct.debug_method**, %struct.debug_method*** %19, align 8
  %539 = load %struct.debug_method*, %struct.debug_method** %538, align 8
  %540 = icmp ne %struct.debug_method* %539, null
  br i1 %540, label %541, label %543

541:                                              ; preds = %537, %533
  %542 = load i32, i32* @FALSE, align 4
  store i32 %542, i32* %4, align 4
  br label %546

543:                                              ; preds = %537
  br label %544

544:                                              ; preds = %543, %328
  %545 = load i32, i32* @TRUE, align 4
  store i32 %545, i32* %4, align 4
  br label %546

546:                                              ; preds = %544, %541, %524, %507, %490, %387, %325, %309, %246, %228, %212, %184, %157, %137, %81
  %547 = load i32, i32* %4, align 4
  ret i32 %547
}

declare dso_local i64 @strcmp(i64*, i64*) #1

declare dso_local i32 @debug_type_samep(%struct.debug_handle*, i32*, i32*) #1

declare dso_local i32* @debug_get_real_type(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
