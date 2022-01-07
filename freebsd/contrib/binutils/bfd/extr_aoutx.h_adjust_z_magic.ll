; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_adjust_z_magic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_adjust_z_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.internal_exec = type { i8*, i64, i64 }
%struct.aout_backend_data = type { i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i32, i32 }

@q_magic_format = common dso_local global i64 0, align 8
@HAS_RELOC = common dso_local global i32 0, align 4
@QMAGIC = common dso_local global i32 0, align 4
@ZMAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.internal_exec*)* @adjust_z_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_z_magic(%struct.TYPE_15__* %0, %struct.internal_exec* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.internal_exec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.aout_backend_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__, align 4
  %11 = alloca %struct.TYPE_14__, align 4
  %12 = alloca %struct.TYPE_14__, align 4
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca %struct.TYPE_14__, align 4
  %15 = alloca %struct.TYPE_14__, align 4
  %16 = alloca %struct.TYPE_14__, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_14__, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca %struct.TYPE_14__, align 4
  %22 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.internal_exec* %1, %struct.internal_exec** %4, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = call %struct.aout_backend_data* @aout_backend_info(%struct.TYPE_15__* %23)
  store %struct.aout_backend_data* %24, %struct.aout_backend_data** %8, align 8
  %25 = load %struct.aout_backend_data*, %struct.aout_backend_data** %8, align 8
  %26 = icmp ne %struct.aout_backend_data* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.aout_backend_data*, %struct.aout_backend_data** %8, align 8
  %29 = getelementptr inbounds %struct.aout_backend_data, %struct.aout_backend_data* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = call i64 @obj_aout_subformat(%struct.TYPE_15__* %33)
  %35 = load i64, i64* @q_magic_format, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ true, %27 ], [ %36, %32 ]
  br label %39

39:                                               ; preds = %37, %2
  %40 = phi i1 [ false, %2 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = call { i64, i64 } @adata(%struct.TYPE_15__* %45)
  %47 = bitcast %struct.TYPE_14__* %10 to { i64, i64 }*
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 0
  %49 = extractvalue { i64, i64 } %46, 0
  store i64 %49, i64* %48, align 4
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 1
  %51 = extractvalue { i64, i64 } %46, 1
  store i64 %51, i64* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %64

54:                                               ; preds = %39
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = call { i64, i64 } @adata(%struct.TYPE_15__* %55)
  %57 = bitcast %struct.TYPE_14__* %11 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = extractvalue { i64, i64 } %56, 0
  store i64 %59, i64* %58, align 4
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = extractvalue { i64, i64 } %56, 1
  store i64 %61, i64* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  br label %64

64:                                               ; preds = %54, %44
  %65 = phi i32 [ %53, %44 ], [ %63, %54 ]
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %66)
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %69)
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %110, label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @HAS_RELOC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %105

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load %struct.aout_backend_data*, %struct.aout_backend_data** %8, align 8
  %87 = getelementptr inbounds %struct.aout_backend_data, %struct.aout_backend_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = call { i64, i64 } @adata(%struct.TYPE_15__* %89)
  %91 = bitcast %struct.TYPE_14__* %12 to { i64, i64 }*
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 0
  %93 = extractvalue { i64, i64 } %90, 0
  store i64 %93, i64* %92, align 4
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 1
  %95 = extractvalue { i64, i64 } %90, 1
  store i64 %95, i64* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %88, %97
  br label %103

99:                                               ; preds = %82
  %100 = load %struct.aout_backend_data*, %struct.aout_backend_data** %8, align 8
  %101 = getelementptr inbounds %struct.aout_backend_data, %struct.aout_backend_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  br label %103

103:                                              ; preds = %99, %85
  %104 = phi i32 [ %98, %85 ], [ %102, %99 ]
  br label %105

105:                                              ; preds = %103, %81
  %106 = phi i32 [ 0, %81 ], [ %104, %103 ]
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %107)
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  store i64 0, i64* %6, align 8
  br label %154

110:                                              ; preds = %64
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %110
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %114)
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %118)
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %117, %121
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %124 = call { i64, i64 } @adata(%struct.TYPE_15__* %123)
  %125 = bitcast %struct.TYPE_14__* %13 to { i64, i64 }*
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 0
  %127 = extractvalue { i64, i64 } %124, 0
  store i64 %127, i64* %126, align 4
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 1
  %129 = extractvalue { i64, i64 } %124, 1
  store i64 %129, i64* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, 1
  %133 = and i32 %122, %132
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %6, align 8
  br label %153

135:                                              ; preds = %110
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %136)
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 0, %139
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = call { i64, i64 } @adata(%struct.TYPE_15__* %141)
  %143 = bitcast %struct.TYPE_14__* %14 to { i64, i64 }*
  %144 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %143, i32 0, i32 0
  %145 = extractvalue { i64, i64 } %142, 0
  store i64 %145, i64* %144, align 4
  %146 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %143, i32 0, i32 1
  %147 = extractvalue { i64, i64 } %142, 1
  store i64 %147, i64* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 1
  %151 = and i32 %140, %150
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %6, align 8
  br label %153

153:                                              ; preds = %135, %113
  br label %154

154:                                              ; preds = %153, %105
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %186

157:                                              ; preds = %154
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %159 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %158)
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %163 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %162)
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %161, %165
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  store i8* %168, i8** %7, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %171 = call { i64, i64 } @adata(%struct.TYPE_15__* %170)
  %172 = bitcast %struct.TYPE_14__* %15 to { i64, i64 }*
  %173 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %172, i32 0, i32 0
  %174 = extractvalue { i64, i64 } %171, 0
  store i64 %174, i64* %173, align 4
  %175 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %172, i32 0, i32 1
  %176 = extractvalue { i64, i64 } %171, 1
  store i64 %176, i64* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @BFD_ALIGN(i8* %169, i32 %178)
  %180 = load i8*, i8** %7, align 8
  %181 = ptrtoint i8* %179 to i64
  %182 = ptrtoint i8* %180 to i64
  %183 = sub i64 %181, %182
  %184 = load i64, i64* %6, align 8
  %185 = add nsw i64 %184, %183
  store i64 %185, i64* %6, align 8
  br label %217

186:                                              ; preds = %154
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %187)
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  store i8* %192, i8** %7, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %195 = call { i64, i64 } @adata(%struct.TYPE_15__* %194)
  %196 = bitcast %struct.TYPE_14__* %16 to { i64, i64 }*
  %197 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %196, i32 0, i32 0
  %198 = extractvalue { i64, i64 } %195, 0
  store i64 %198, i64* %197, align 4
  %199 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %196, i32 0, i32 1
  %200 = extractvalue { i64, i64 } %195, 1
  store i64 %200, i64* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @BFD_ALIGN(i8* %193, i32 %202)
  %204 = load i8*, i8** %7, align 8
  %205 = ptrtoint i8* %203 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  %208 = load i64, i64* %6, align 8
  %209 = add nsw i64 %208, %207
  store i64 %209, i64* %6, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %211 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %210)
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i8*, i8** %7, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr i8, i8* %214, i64 %215
  store i8* %216, i8** %7, align 8
  br label %217

217:                                              ; preds = %186, %157
  %218 = load i64, i64* %6, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %220 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %219)
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %218
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %221, align 4
  %226 = load i64, i64* %6, align 8
  %227 = load i8*, i8** %7, align 8
  %228 = getelementptr i8, i8* %227, i64 %226
  store i8* %228, i8** %7, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %230 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %229)
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %261, label %234

234:                                              ; preds = %217
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %236 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %235)
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %240 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %239)
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %238, %242
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  store i8* %245, i8** %17, align 8
  %246 = load i8*, i8** %17, align 8
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %248 = call { i64, i64 } @adata(%struct.TYPE_15__* %247)
  %249 = bitcast %struct.TYPE_14__* %18 to { i64, i64 }*
  %250 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %249, i32 0, i32 0
  %251 = extractvalue { i64, i64 } %248, 0
  store i64 %251, i64* %250, align 4
  %252 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %249, i32 0, i32 1
  %253 = extractvalue { i64, i64 } %248, 1
  store i64 %253, i64* %252, align 4
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @BFD_ALIGN(i8* %246, i32 %255)
  %257 = ptrtoint i8* %256 to i32
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %259 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %258)
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 4
  br label %261

261:                                              ; preds = %234, %217
  %262 = load %struct.aout_backend_data*, %struct.aout_backend_data** %8, align 8
  %263 = icmp ne %struct.aout_backend_data* %262, null
  br i1 %263, label %264, label %297

264:                                              ; preds = %261
  %265 = load %struct.aout_backend_data*, %struct.aout_backend_data** %8, align 8
  %266 = getelementptr inbounds %struct.aout_backend_data, %struct.aout_backend_data* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %297

269:                                              ; preds = %264
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %271 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %270)
  store %struct.TYPE_16__* %271, %struct.TYPE_16__** %19, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %273 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %272)
  store %struct.TYPE_16__* %273, %struct.TYPE_16__** %20, align 8
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %279, %282
  %284 = sub nsw i32 %276, %283
  %285 = sext i32 %284 to i64
  store i64 %285, i64* %6, align 8
  %286 = load i64, i64* %6, align 8
  %287 = icmp sgt i64 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %269
  %289 = load i64, i64* %6, align 8
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %289
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %291, align 4
  br label %296

296:                                              ; preds = %288, %269
  br label %297

297:                                              ; preds = %296, %264, %261
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %299 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %298)
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %303 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %302)
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %301, %305
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %308 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %307)
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  store i32 %306, i32* %309, align 4
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %311 = call %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__* %310)
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = inttoptr i64 %314 to i8*
  %316 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %317 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %316, i32 0, i32 0
  store i8* %315, i8** %317, align 8
  %318 = load i32, i32* %9, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %346

320:                                              ; preds = %297
  %321 = load %struct.aout_backend_data*, %struct.aout_backend_data** %8, align 8
  %322 = icmp ne %struct.aout_backend_data* %321, null
  br i1 %322, label %323, label %331

323:                                              ; preds = %320
  %324 = load %struct.aout_backend_data*, %struct.aout_backend_data** %8, align 8
  %325 = icmp ne %struct.aout_backend_data* %324, null
  br i1 %325, label %326, label %346

326:                                              ; preds = %323
  %327 = load %struct.aout_backend_data*, %struct.aout_backend_data** %8, align 8
  %328 = getelementptr inbounds %struct.aout_backend_data, %struct.aout_backend_data* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %346, label %331

331:                                              ; preds = %326, %320
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %333 = call { i64, i64 } @adata(%struct.TYPE_15__* %332)
  %334 = bitcast %struct.TYPE_14__* %21 to { i64, i64 }*
  %335 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %334, i32 0, i32 0
  %336 = extractvalue { i64, i64 } %333, 0
  store i64 %336, i64* %335, align 4
  %337 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %334, i32 0, i32 1
  %338 = extractvalue { i64, i64 } %333, 1
  store i64 %338, i64* %337, align 4
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %342 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  %344 = sext i32 %340 to i64
  %345 = getelementptr i8, i8* %343, i64 %344
  store i8* %345, i8** %342, align 8
  br label %346

346:                                              ; preds = %331, %326, %323, %297
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %348 = call i64 @obj_aout_subformat(%struct.TYPE_15__* %347)
  %349 = load i64, i64* @q_magic_format, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %346
  %352 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %353 = load i32, i32* @QMAGIC, align 4
  %354 = call i32 @N_SET_MAGIC(%struct.internal_exec* byval(%struct.internal_exec) align 8 %352, i32 %353)
  br label %359

355:                                              ; preds = %346
  %356 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %357 = load i32, i32* @ZMAGIC, align 4
  %358 = call i32 @N_SET_MAGIC(%struct.internal_exec* byval(%struct.internal_exec) align 8 %356, i32 %357)
  br label %359

359:                                              ; preds = %355, %351
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %361 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %360)
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = inttoptr i64 %364 to i8*
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %367 = call %struct.TYPE_17__* @obj_bsssec(%struct.TYPE_15__* %366)
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = call i64 @align_power(i8* %365, i32 %369)
  %371 = trunc i64 %370 to i32
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %373 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %372)
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %373, i32 0, i32 2
  store i32 %371, i32* %374, align 4
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %376 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %375)
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = sext i32 %378 to i64
  %380 = inttoptr i64 %379 to i8*
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %382 = call { i64, i64 } @adata(%struct.TYPE_15__* %381)
  %383 = bitcast %struct.TYPE_14__* %22 to { i64, i64 }*
  %384 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %383, i32 0, i32 0
  %385 = extractvalue { i64, i64 } %382, 0
  store i64 %385, i64* %384, align 4
  %386 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %383, i32 0, i32 1
  %387 = extractvalue { i64, i64 } %382, 1
  store i64 %387, i64* %386, align 4
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = call i8* @BFD_ALIGN(i8* %380, i32 %389)
  %391 = ptrtoint i8* %390 to i64
  %392 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %393 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %392, i32 0, i32 1
  store i64 %391, i64* %393, align 8
  %394 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %395 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %398 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %397)
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = sub nsw i64 %396, %401
  store i64 %402, i64* %5, align 8
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %404 = call %struct.TYPE_17__* @obj_bsssec(%struct.TYPE_15__* %403)
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %422, label %408

408:                                              ; preds = %359
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %410 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %409)
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %414 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %413)
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %412, %416
  %418 = sext i32 %417 to i64
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %420 = call %struct.TYPE_17__* @obj_bsssec(%struct.TYPE_15__* %419)
  %421 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %420, i32 0, i32 0
  store i64 %418, i64* %421, align 8
  br label %422

422:                                              ; preds = %408, %359
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %424 = call %struct.TYPE_17__* @obj_bsssec(%struct.TYPE_15__* %423)
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = inttoptr i64 %426 to i8*
  %428 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %429 = call %struct.TYPE_17__* @obj_bsssec(%struct.TYPE_15__* %428)
  %430 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = call i64 @align_power(i8* %427, i32 %431)
  %433 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %434 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %433)
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %438 = call %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__* %437)
  %439 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 4
  %441 = add nsw i32 %436, %440
  %442 = sext i32 %441 to i64
  %443 = icmp eq i64 %432, %442
  br i1 %443, label %444, label %463

444:                                              ; preds = %422
  %445 = load i64, i64* %5, align 8
  %446 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %447 = call %struct.TYPE_17__* @obj_bsssec(%struct.TYPE_15__* %446)
  %448 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = icmp sgt i64 %445, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %444
  br label %459

452:                                              ; preds = %444
  %453 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %454 = call %struct.TYPE_17__* @obj_bsssec(%struct.TYPE_15__* %453)
  %455 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %454, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* %5, align 8
  %458 = sub nsw i64 %456, %457
  br label %459

459:                                              ; preds = %452, %451
  %460 = phi i64 [ 0, %451 ], [ %458, %452 ]
  %461 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %462 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %461, i32 0, i32 2
  store i64 %460, i64* %462, align 8
  br label %470

463:                                              ; preds = %422
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %465 = call %struct.TYPE_17__* @obj_bsssec(%struct.TYPE_15__* %464)
  %466 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %469 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %468, i32 0, i32 2
  store i64 %467, i64* %469, align 8
  br label %470

470:                                              ; preds = %463, %459
  ret void
}

declare dso_local %struct.aout_backend_data* @aout_backend_info(%struct.TYPE_15__*) #1

declare dso_local i64 @obj_aout_subformat(%struct.TYPE_15__*) #1

declare dso_local { i64, i64 } @adata(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @obj_textsec(%struct.TYPE_15__*) #1

declare dso_local i8* @BFD_ALIGN(i8*, i32) #1

declare dso_local %struct.TYPE_16__* @obj_datasec(%struct.TYPE_15__*) #1

declare dso_local i32 @N_SET_MAGIC(%struct.internal_exec* byval(%struct.internal_exec) align 8, i32) #1

declare dso_local i64 @align_power(i8*, i32) #1

declare dso_local %struct.TYPE_17__* @obj_bsssec(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
