; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_slurp_version_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_slurp_version_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i64, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32, i32* }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_15__*, i32*, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i64, i32*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32*, i64, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_17__*, i32*, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_18__, %struct.TYPE_14__*, %struct.TYPE_18__ }

@SEEK_SET = common dso_local global i32 0, align 4
@VERSYM_VERSION = common dso_local global i32 0, align 4
@VER_DEF_CURRENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_elf_slurp_version_tables(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca %struct.TYPE_16__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_17__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_16__*, align 8
  %29 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @elf_dynverref(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %309

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = call %struct.TYPE_19__* @elf_tdata(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 5
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %8, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @bfd_zalloc2(i32* %37, i32 %40, i32 64)
  %42 = bitcast i8* %41 to %struct.TYPE_14__*
  %43 = load i32*, i32** %4, align 8
  %44 = call %struct.TYPE_19__* @elf_tdata(i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 4
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call %struct.TYPE_19__* @elf_tdata(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = icmp eq %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  br label %729

52:                                               ; preds = %33
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = call %struct.TYPE_19__* @elf_tdata(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @bfd_malloc(i32 %61)
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %294, %246, %219, %183, %170, %148, %104, %92, %65
  %67 = load i32*, i32** %4, align 8
  %68 = call %struct.TYPE_19__* @elf_tdata(i32* %67)
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %69, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call %struct.TYPE_19__* @elf_tdata(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %729

73:                                               ; preds = %52
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SEEK_SET, align 4
  %79 = call i64 @bfd_seek(i32* %74, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %73
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @bfd_bread(i32* %82, i32 %85, i32* %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81, %73
  br label %66

93:                                               ; preds = %81
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %102, 4
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %66

105:                                              ; preds = %98, %93
  %106 = call i32 @BFD_ASSERT(i32 1)
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = getelementptr inbounds i32, i32* %112, i64 -4
  store i32* %113, i32** %12, align 8
  %114 = load i32*, i32** %6, align 8
  store i32* %114, i32** %9, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = call %struct.TYPE_19__* @elf_tdata(i32* %115)
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %301, %105
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ult i32 %120, %123
  br i1 %124, label %125, label %306

125:                                              ; preds = %119
  %126 = load i32*, i32** %4, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %129 = call i32 @_bfd_elf_swap_verneed_in(i32* %126, i32* %127, %struct.TYPE_14__* %128)
  %130 = load i32*, i32** %4, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 7
  store i32* %130, i32** %132, align 8
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @bfd_elf_string_from_elf_section(i32* %133, i32 %136, i32 %139)
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 5
  store i32* %141, i32** %143, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %125
  br label %66

149:                                              ; preds = %125
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %156, align 8
  br label %172

157:                                              ; preds = %149
  %158 = load i32*, i32** %4, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @bfd_alloc2(i32* %158, i32 %161, i32 40)
  %163 = bitcast i8* %162 to %struct.TYPE_15__*
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 4
  store %struct.TYPE_15__* %163, %struct.TYPE_15__** %165, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = icmp eq %struct.TYPE_15__* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %157
  br label %66

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171, %154
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32*, i32** %12, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = ptrtoint i32* %176 to i64
  %179 = ptrtoint i32* %177 to i64
  %180 = sub i64 %178, %179
  %181 = sdiv exact i64 %180, 4
  %182 = icmp ugt i64 %175, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %66

184:                                              ; preds = %172
  %185 = load i32*, i32** %9, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32* %189, i32** %13, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  store %struct.TYPE_15__* %192, %struct.TYPE_15__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %193

193:                                              ; preds = %263, %184
  %194 = load i32, i32* %15, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %268

199:                                              ; preds = %193
  %200 = load i32*, i32** %4, align 8
  %201 = load i32*, i32** %13, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %203 = call i32 @_bfd_elf_swap_vernaux_in(i32* %200, i32* %201, %struct.TYPE_15__* %202)
  %204 = load i32*, i32** %4, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = call i8* @bfd_elf_string_from_elf_section(i32* %204, i32 %207, i32 %210)
  %212 = bitcast i8* %211 to i32*
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 3
  store i32* %212, i32** %214, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = icmp eq i32* %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %199
  br label %66

220:                                              ; preds = %199
  %221 = load i32, i32* %15, align 4
  %222 = add i32 %221, 1
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ult i32 %222, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %220
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i64 1
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 2
  store %struct.TYPE_15__* %229, %struct.TYPE_15__** %231, align 8
  br label %235

232:                                              ; preds = %220
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %234, align 8
  br label %235

235:                                              ; preds = %232, %227
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i32*, i32** %12, align 8
  %240 = load i32*, i32** %13, align 8
  %241 = ptrtoint i32* %239 to i64
  %242 = ptrtoint i32* %240 to i64
  %243 = sub i64 %241, %242
  %244 = sdiv exact i64 %243, 4
  %245 = icmp ugt i64 %238, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %235
  br label %66

247:                                              ; preds = %235
  %248 = load i32*, i32** %13, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  store i32* %252, i32** %13, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = icmp ugt i32 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %247
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  store i32 %261, i32* %7, align 4
  br label %262

262:                                              ; preds = %258, %247
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %15, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %15, align 4
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 1
  store %struct.TYPE_15__* %267, %struct.TYPE_15__** %14, align 8
  br label %193

268:                                              ; preds = %193
  %269 = load i32, i32* %11, align 4
  %270 = add i32 %269, 1
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp ult i32 %270, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %268
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i64 1
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 3
  store %struct.TYPE_14__* %277, %struct.TYPE_14__** %279, align 8
  br label %283

280:                                              ; preds = %268
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %282, align 8
  br label %283

283:                                              ; preds = %280, %275
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load i32*, i32** %12, align 8
  %288 = load i32*, i32** %9, align 8
  %289 = ptrtoint i32* %287 to i64
  %290 = ptrtoint i32* %288 to i64
  %291 = sub i64 %289, %290
  %292 = sdiv exact i64 %291, 4
  %293 = icmp ugt i64 %286, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %283
  br label %66

295:                                              ; preds = %283
  %296 = load i32*, i32** %9, align 8
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  store i32* %300, i32** %9, align 8
  br label %301

301:                                              ; preds = %295
  %302 = load i32, i32* %11, align 4
  %303 = add i32 %302, 1
  store i32 %303, i32* %11, align 4
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 1
  store %struct.TYPE_14__* %305, %struct.TYPE_14__** %10, align 8
  br label %119

306:                                              ; preds = %119
  %307 = load i32*, i32** %6, align 8
  %308 = call i32 @free(i32* %307)
  store i32* null, i32** %6, align 8
  br label %309

309:                                              ; preds = %306, %2
  %310 = load i32*, i32** %4, align 8
  %311 = call i64 @elf_dynverdef(i32* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %640

313:                                              ; preds = %309
  %314 = load i32*, i32** %4, align 8
  %315 = call %struct.TYPE_19__* @elf_tdata(i32* %314)
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 3
  store %struct.TYPE_18__* %316, %struct.TYPE_18__** %16, align 8
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32* @bfd_malloc(i32 %319)
  store i32* %320, i32** %6, align 8
  %321 = load i32*, i32** %6, align 8
  %322 = icmp eq i32* %321, null
  br i1 %322, label %323, label %324

323:                                              ; preds = %313
  br label %729

324:                                              ; preds = %313
  %325 = load i32*, i32** %4, align 8
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @SEEK_SET, align 4
  %330 = call i64 @bfd_seek(i32* %325, i32 %328, i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %343, label %332

332:                                              ; preds = %324
  %333 = load i32*, i32** %6, align 8
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load i32*, i32** %4, align 8
  %338 = call i32 @bfd_bread(i32* %333, i32 %336, i32* %337)
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %338, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %332, %324
  br label %729

344:                                              ; preds = %332
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %356

349:                                              ; preds = %344
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = icmp ult i64 %353, 4
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  br label %729

356:                                              ; preds = %349, %344
  %357 = call i32 @BFD_ASSERT(i32 1)
  %358 = load i32*, i32** %6, align 8
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %358, i64 %362
  %364 = getelementptr inbounds i32, i32* %363, i64 -4
  store i32* %364, i32** %23, align 8
  %365 = load i32*, i32** %6, align 8
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %365, i64 %369
  %371 = getelementptr inbounds i32, i32* %370, i64 -4
  store i32* %371, i32** %24, align 8
  %372 = load i32*, i32** %6, align 8
  store i32* %372, i32** %17, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %373

373:                                              ; preds = %410, %356
  %374 = load i32, i32* %21, align 4
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = icmp ult i32 %374, %377
  br i1 %378, label %379, label %413

379:                                              ; preds = %373
  %380 = load i32*, i32** %4, align 8
  %381 = load i32*, i32** %17, align 8
  %382 = call i32 @_bfd_elf_swap_verdef_in(i32* %380, i32* %381, %struct.TYPE_16__* %20)
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @VERSYM_VERSION, align 4
  %386 = and i32 %384, %385
  %387 = load i32, i32* %22, align 4
  %388 = icmp ugt i32 %386, %387
  br i1 %388, label %389, label %394

389:                                              ; preds = %379
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @VERSYM_VERSION, align 4
  %393 = and i32 %391, %392
  store i32 %393, i32* %22, align 4
  br label %394

394:                                              ; preds = %389, %379
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = load i32*, i32** %23, align 8
  %398 = load i32*, i32** %17, align 8
  %399 = ptrtoint i32* %397 to i64
  %400 = ptrtoint i32* %398 to i64
  %401 = sub i64 %399, %400
  %402 = sdiv exact i64 %401, 4
  %403 = icmp ugt i64 %396, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %394
  br label %729

405:                                              ; preds = %394
  %406 = load i32*, i32** %17, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  store i32* %409, i32** %17, align 8
  br label %410

410:                                              ; preds = %405
  %411 = load i32, i32* %21, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %21, align 4
  br label %373

413:                                              ; preds = %373
  %414 = load i64, i64* %5, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %427

416:                                              ; preds = %413
  %417 = load i32, i32* %7, align 4
  %418 = load i32, i32* %22, align 4
  %419 = icmp ugt i32 %417, %418
  br i1 %419, label %420, label %423

420:                                              ; preds = %416
  %421 = load i32, i32* %7, align 4
  %422 = add i32 %421, 1
  store i32 %422, i32* %7, align 4
  store i32 %422, i32* %22, align 4
  br label %426

423:                                              ; preds = %416
  %424 = load i32, i32* %22, align 4
  %425 = add i32 %424, 1
  store i32 %425, i32* %22, align 4
  store i32 %425, i32* %7, align 4
  br label %426

426:                                              ; preds = %423, %420
  br label %427

427:                                              ; preds = %426, %413
  %428 = load i32*, i32** %4, align 8
  %429 = load i32, i32* %22, align 4
  %430 = call i8* @bfd_zalloc2(i32* %428, i32 %429, i32 80)
  %431 = bitcast i8* %430 to %struct.TYPE_16__*
  %432 = load i32*, i32** %4, align 8
  %433 = call %struct.TYPE_19__* @elf_tdata(i32* %432)
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i32 0, i32 2
  store %struct.TYPE_16__* %431, %struct.TYPE_16__** %434, align 8
  %435 = load i32*, i32** %4, align 8
  %436 = call %struct.TYPE_19__* @elf_tdata(i32* %435)
  %437 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %436, i32 0, i32 2
  %438 = load %struct.TYPE_16__*, %struct.TYPE_16__** %437, align 8
  %439 = icmp eq %struct.TYPE_16__* %438, null
  br i1 %439, label %440, label %441

440:                                              ; preds = %427
  br label %729

441:                                              ; preds = %427
  %442 = load i32, i32* %22, align 4
  %443 = load i32*, i32** %4, align 8
  %444 = call %struct.TYPE_19__* @elf_tdata(i32* %443)
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i32 0, i32 1
  store i32 %442, i32* %445, align 4
  %446 = load i32*, i32** %6, align 8
  store i32* %446, i32** %17, align 8
  %447 = load i32*, i32** %4, align 8
  %448 = call %struct.TYPE_19__* @elf_tdata(i32* %447)
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %448, i32 0, i32 2
  %450 = load %struct.TYPE_16__*, %struct.TYPE_16__** %449, align 8
  store %struct.TYPE_16__* %450, %struct.TYPE_16__** %19, align 8
  store i32 0, i32* %21, align 4
  br label %451

451:                                              ; preds = %634, %441
  %452 = load i32, i32* %21, align 4
  %453 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = icmp ult i32 %452, %455
  br i1 %456, label %457, label %637

457:                                              ; preds = %451
  %458 = load i32*, i32** %4, align 8
  %459 = load i32*, i32** %17, align 8
  %460 = call i32 @_bfd_elf_swap_verdef_in(i32* %458, i32* %459, %struct.TYPE_16__* %20)
  %461 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* @VERSYM_VERSION, align 4
  %464 = and i32 %462, %463
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %474

466:                                              ; preds = %457
  br label %467

467:                                              ; preds = %715, %703, %584, %557, %521, %508, %466
  %468 = load i32*, i32** %4, align 8
  %469 = call %struct.TYPE_19__* @elf_tdata(i32* %468)
  %470 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %469, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %470, align 8
  %471 = load i32*, i32** %4, align 8
  %472 = call %struct.TYPE_19__* @elf_tdata(i32* %471)
  %473 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %472, i32 0, i32 1
  store i32 0, i32* %473, align 4
  br label %729

474:                                              ; preds = %457
  %475 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %476 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @VERSYM_VERSION, align 4
  %479 = and i32 %477, %478
  %480 = sub i32 %479, 1
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %475, i64 %481
  store %struct.TYPE_16__* %482, %struct.TYPE_16__** %18, align 8
  %483 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %484 = call i32 @memcpy(%struct.TYPE_16__* %483, %struct.TYPE_16__* %20, i32 80)
  %485 = load i32*, i32** %4, align 8
  %486 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %487 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %486, i32 0, i32 7
  store i32* %485, i32** %487, align 8
  %488 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i32 0, i32 2
  %490 = load i32, i32* %489, align 8
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %495

492:                                              ; preds = %474
  %493 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %494 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %493, i32 0, i32 5
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %494, align 8
  br label %510

495:                                              ; preds = %474
  %496 = load i32*, i32** %4, align 8
  %497 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %498 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 8
  %500 = call i8* @bfd_alloc2(i32* %496, i32 %499, i32 32)
  %501 = bitcast i8* %500 to %struct.TYPE_17__*
  %502 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %503 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i32 0, i32 5
  store %struct.TYPE_17__* %501, %struct.TYPE_17__** %503, align 8
  %504 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %505 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %504, i32 0, i32 5
  %506 = load %struct.TYPE_17__*, %struct.TYPE_17__** %505, align 8
  %507 = icmp eq %struct.TYPE_17__* %506, null
  br i1 %507, label %508, label %509

508:                                              ; preds = %495
  br label %467

509:                                              ; preds = %495
  br label %510

510:                                              ; preds = %509, %492
  %511 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %512 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %511, i32 0, i32 3
  %513 = load i64, i64* %512, align 8
  %514 = load i32*, i32** %24, align 8
  %515 = load i32*, i32** %17, align 8
  %516 = ptrtoint i32* %514 to i64
  %517 = ptrtoint i32* %515 to i64
  %518 = sub i64 %516, %517
  %519 = sdiv exact i64 %518, 4
  %520 = icmp ugt i64 %513, %519
  br i1 %520, label %521, label %522

521:                                              ; preds = %510
  br label %467

522:                                              ; preds = %510
  %523 = load i32*, i32** %17, align 8
  %524 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %525 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %524, i32 0, i32 3
  %526 = load i64, i64* %525, align 8
  %527 = getelementptr inbounds i32, i32* %523, i64 %526
  store i32* %527, i32** %25, align 8
  %528 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %529 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %528, i32 0, i32 5
  %530 = load %struct.TYPE_17__*, %struct.TYPE_17__** %529, align 8
  store %struct.TYPE_17__* %530, %struct.TYPE_17__** %26, align 8
  store i32 0, i32* %27, align 4
  br label %531

531:                                              ; preds = %591, %522
  %532 = load i32, i32* %27, align 4
  %533 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %534 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = icmp ult i32 %532, %535
  br i1 %536, label %537, label %596

537:                                              ; preds = %531
  %538 = load i32*, i32** %4, align 8
  %539 = load i32*, i32** %25, align 8
  %540 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %541 = call i32 @_bfd_elf_swap_verdaux_in(i32* %538, i32* %539, %struct.TYPE_17__* %540)
  %542 = load i32*, i32** %4, align 8
  %543 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %544 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %547 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %546, i32 0, i32 3
  %548 = load i32, i32* %547, align 8
  %549 = call i8* @bfd_elf_string_from_elf_section(i32* %542, i32 %545, i32 %548)
  %550 = bitcast i8* %549 to i32*
  %551 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %552 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %551, i32 0, i32 2
  store i32* %550, i32** %552, align 8
  %553 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %554 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %553, i32 0, i32 2
  %555 = load i32*, i32** %554, align 8
  %556 = icmp eq i32* %555, null
  br i1 %556, label %557, label %558

557:                                              ; preds = %537
  br label %467

558:                                              ; preds = %537
  %559 = load i32, i32* %27, align 4
  %560 = add i32 %559, 1
  %561 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %562 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %561, i32 0, i32 2
  %563 = load i32, i32* %562, align 8
  %564 = icmp ult i32 %560, %563
  br i1 %564, label %565, label %570

565:                                              ; preds = %558
  %566 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %567 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %566, i64 1
  %568 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %569 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %568, i32 0, i32 1
  store %struct.TYPE_17__* %567, %struct.TYPE_17__** %569, align 8
  br label %573

570:                                              ; preds = %558
  %571 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %572 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %571, i32 0, i32 1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %572, align 8
  br label %573

573:                                              ; preds = %570, %565
  %574 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %575 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = load i32*, i32** %24, align 8
  %578 = load i32*, i32** %25, align 8
  %579 = ptrtoint i32* %577 to i64
  %580 = ptrtoint i32* %578 to i64
  %581 = sub i64 %579, %580
  %582 = sdiv exact i64 %581, 4
  %583 = icmp ugt i64 %576, %582
  br i1 %583, label %584, label %585

584:                                              ; preds = %573
  br label %467

585:                                              ; preds = %573
  %586 = load i32*, i32** %25, align 8
  %587 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %588 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %587, i32 0, i32 0
  %589 = load i64, i64* %588, align 8
  %590 = getelementptr inbounds i32, i32* %586, i64 %589
  store i32* %590, i32** %25, align 8
  br label %591

591:                                              ; preds = %585
  %592 = load i32, i32* %27, align 4
  %593 = add i32 %592, 1
  store i32 %593, i32* %27, align 4
  %594 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %595 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %594, i32 1
  store %struct.TYPE_17__* %595, %struct.TYPE_17__** %26, align 8
  br label %531

596:                                              ; preds = %531
  %597 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %598 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %597, i32 0, i32 2
  %599 = load i32, i32* %598, align 8
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %609

601:                                              ; preds = %596
  %602 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %603 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %602, i32 0, i32 5
  %604 = load %struct.TYPE_17__*, %struct.TYPE_17__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %604, i32 0, i32 2
  %606 = load i32*, i32** %605, align 8
  %607 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %608 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %607, i32 0, i32 4
  store i32* %606, i32** %608, align 8
  br label %609

609:                                              ; preds = %601, %596
  %610 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %611 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %612 = ptrtoint %struct.TYPE_16__* %610 to i64
  %613 = ptrtoint %struct.TYPE_16__* %611 to i64
  %614 = sub i64 %612, %613
  %615 = sdiv exact i64 %614, 80
  %616 = add i64 %615, 1
  %617 = load i32, i32* %22, align 4
  %618 = zext i32 %617 to i64
  %619 = icmp ult i64 %616, %618
  br i1 %619, label %620, label %625

620:                                              ; preds = %609
  %621 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %622 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %621, i64 1
  %623 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %624 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %623, i32 0, i32 6
  store %struct.TYPE_16__* %622, %struct.TYPE_16__** %624, align 8
  br label %628

625:                                              ; preds = %609
  %626 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %627 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %626, i32 0, i32 6
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %627, align 8
  br label %628

628:                                              ; preds = %625, %620
  %629 = load i32*, i32** %17, align 8
  %630 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %631 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %630, i32 0, i32 1
  %632 = load i64, i64* %631, align 8
  %633 = getelementptr inbounds i32, i32* %629, i64 %632
  store i32* %633, i32** %17, align 8
  br label %634

634:                                              ; preds = %628
  %635 = load i32, i32* %21, align 4
  %636 = add i32 %635, 1
  store i32 %636, i32* %21, align 4
  br label %451

637:                                              ; preds = %451
  %638 = load i32*, i32** %6, align 8
  %639 = call i32 @free(i32* %638)
  store i32* null, i32** %6, align 8
  br label %670

640:                                              ; preds = %309
  %641 = load i64, i64* %5, align 8
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %669

643:                                              ; preds = %640
  %644 = load i32, i32* %7, align 4
  %645 = icmp ult i32 %644, 3
  br i1 %645, label %646, label %647

646:                                              ; preds = %643
  store i32 3, i32* %7, align 4
  br label %650

647:                                              ; preds = %643
  %648 = load i32, i32* %7, align 4
  %649 = add i32 %648, 1
  store i32 %649, i32* %7, align 4
  br label %650

650:                                              ; preds = %647, %646
  %651 = load i32*, i32** %4, align 8
  %652 = load i32, i32* %7, align 4
  %653 = call i8* @bfd_zalloc2(i32* %651, i32 %652, i32 80)
  %654 = bitcast i8* %653 to %struct.TYPE_16__*
  %655 = load i32*, i32** %4, align 8
  %656 = call %struct.TYPE_19__* @elf_tdata(i32* %655)
  %657 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %656, i32 0, i32 2
  store %struct.TYPE_16__* %654, %struct.TYPE_16__** %657, align 8
  %658 = load i32*, i32** %4, align 8
  %659 = call %struct.TYPE_19__* @elf_tdata(i32* %658)
  %660 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %659, i32 0, i32 2
  %661 = load %struct.TYPE_16__*, %struct.TYPE_16__** %660, align 8
  %662 = icmp eq %struct.TYPE_16__* %661, null
  br i1 %662, label %663, label %664

663:                                              ; preds = %650
  br label %729

664:                                              ; preds = %650
  %665 = load i32, i32* %7, align 4
  %666 = load i32*, i32** %4, align 8
  %667 = call %struct.TYPE_19__* @elf_tdata(i32* %666)
  %668 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %667, i32 0, i32 1
  store i32 %665, i32* %668, align 4
  br label %669

669:                                              ; preds = %664, %640
  br label %670

670:                                              ; preds = %669, %637
  %671 = load i64, i64* %5, align 8
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %673, label %727

673:                                              ; preds = %670
  %674 = load i32*, i32** %4, align 8
  %675 = call %struct.TYPE_19__* @elf_tdata(i32* %674)
  %676 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %675, i32 0, i32 2
  %677 = load %struct.TYPE_16__*, %struct.TYPE_16__** %676, align 8
  %678 = load i32, i32* %7, align 4
  %679 = sub i32 %678, 1
  %680 = zext i32 %679 to i64
  %681 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %677, i64 %680
  store %struct.TYPE_16__* %681, %struct.TYPE_16__** %28, align 8
  %682 = load i32, i32* @VER_DEF_CURRENT, align 4
  %683 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %684 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %683, i32 0, i32 9
  store i32 %682, i32* %684, align 8
  %685 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %686 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %685, i32 0, i32 8
  store i64 0, i64* %686, align 8
  %687 = load i32, i32* %7, align 4
  %688 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %689 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %688, i32 0, i32 0
  store i32 %687, i32* %689, align 8
  %690 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %691 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %690, i32 0, i32 2
  store i32 1, i32* %691, align 8
  %692 = load i32*, i32** %4, align 8
  %693 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %694 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %693, i32 0, i32 7
  store i32* %692, i32** %694, align 8
  %695 = load i32*, i32** %4, align 8
  %696 = call i32* @bfd_elf_get_dt_soname(i32* %695)
  %697 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %698 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %697, i32 0, i32 4
  store i32* %696, i32** %698, align 8
  %699 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %700 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %699, i32 0, i32 4
  %701 = load i32*, i32** %700, align 8
  %702 = icmp eq i32* %701, null
  br i1 %702, label %703, label %704

703:                                              ; preds = %673
  br label %467

704:                                              ; preds = %673
  %705 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %706 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %705, i32 0, i32 6
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %706, align 8
  %707 = load i32*, i32** %4, align 8
  %708 = call %struct.TYPE_17__* @bfd_alloc(i32* %707, i32 32)
  %709 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %710 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %709, i32 0, i32 5
  store %struct.TYPE_17__* %708, %struct.TYPE_17__** %710, align 8
  %711 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %712 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %711, i32 0, i32 5
  %713 = load %struct.TYPE_17__*, %struct.TYPE_17__** %712, align 8
  %714 = icmp eq %struct.TYPE_17__* %713, null
  br i1 %714, label %715, label %716

715:                                              ; preds = %704
  br label %467

716:                                              ; preds = %704
  %717 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %718 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %717, i32 0, i32 5
  %719 = load %struct.TYPE_17__*, %struct.TYPE_17__** %718, align 8
  store %struct.TYPE_17__* %719, %struct.TYPE_17__** %29, align 8
  %720 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %721 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %720, i32 0, i32 4
  %722 = load i32*, i32** %721, align 8
  %723 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %724 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %723, i32 0, i32 2
  store i32* %722, i32** %724, align 8
  %725 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %726 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %725, i32 0, i32 1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %726, align 8
  br label %727

727:                                              ; preds = %716, %670
  %728 = load i64, i64* @TRUE, align 8
  store i64 %728, i64* %3, align 8
  br label %737

729:                                              ; preds = %663, %467, %440, %404, %355, %343, %323, %66, %51
  %730 = load i32*, i32** %6, align 8
  %731 = icmp ne i32* %730, null
  br i1 %731, label %732, label %735

732:                                              ; preds = %729
  %733 = load i32*, i32** %6, align 8
  %734 = call i32 @free(i32* %733)
  br label %735

735:                                              ; preds = %732, %729
  %736 = load i64, i64* @FALSE, align 8
  store i64 %736, i64* %3, align 8
  br label %737

737:                                              ; preds = %735, %727
  %738 = load i64, i64* %3, align 8
  ret i64 %738
}

declare dso_local i64 @elf_dynverref(i32*) #1

declare dso_local %struct.TYPE_19__* @elf_tdata(i32*) #1

declare dso_local i8* @bfd_zalloc2(i32*, i32, i32) #1

declare dso_local i32* @bfd_malloc(i32) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @bfd_bread(i32*, i32, i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_elf_swap_verneed_in(i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(i32*, i32, i32) #1

declare dso_local i8* @bfd_alloc2(i32*, i32, i32) #1

declare dso_local i32 @_bfd_elf_swap_vernaux_in(i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @elf_dynverdef(i32*) #1

declare dso_local i32 @_bfd_elf_swap_verdef_in(i32*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @_bfd_elf_swap_verdaux_in(i32*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32* @bfd_elf_get_dt_soname(i32*) #1

declare dso_local %struct.TYPE_17__* @bfd_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
