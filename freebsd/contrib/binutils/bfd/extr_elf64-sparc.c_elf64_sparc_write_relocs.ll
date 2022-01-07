; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-sparc.c_elf64_sparc_write_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-sparc.c_elf64_sparc_write_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32, i32, i64, %struct.TYPE_25__** }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_21__*, %struct.TYPE_23__** }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32, i64, i32* }
%struct.TYPE_27__ = type { i32, i64, i8* }
%struct.TYPE_28__ = type { %struct.TYPE_26__ }

@SEC_RELOC = common dso_local global i32 0, align 4
@R_SPARC_LO10 = common dso_local global i64 0, align 8
@R_SPARC_13 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@EXEC_P = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@STN_UNDEF = common dso_local global i32 0, align 4
@R_SPARC_OLO10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_24__*, i32*)* @elf64_sparc_write_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf64_sparc_write_relocs(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_27__, align 8
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i32* %2, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to i64*
  store i64* %24, i64** %7, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  store i32 0, i32* %15, align 4
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %359

29:                                               ; preds = %3
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SEC_RELOC, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %359

37:                                               ; preds = %29
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %359

43:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %126, %43
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %129

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %55, i64 %57
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %16, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %64, i64 %66
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @R_SPARC_LO10, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %125

75:                                               ; preds = %50
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub i32 %79, 1
  %81 = icmp ult i32 %76, %80
  br i1 %81, label %82, label %125

82:                                               ; preds = %75
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %85, i64 %88
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  store %struct.TYPE_25__* %90, %struct.TYPE_25__** %17, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @R_SPARC_13, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %82
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %16, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %98
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %106, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @bfd_is_abs_section(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %104
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %115, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i32, i32* %12, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %121, %113, %104, %98, %82
  br label %125

125:                                              ; preds = %124, %75, %50
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %44

129:                                              ; preds = %44
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %131 = call %struct.TYPE_28__* @elf_section_data(%struct.TYPE_24__* %130)
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  store %struct.TYPE_26__* %132, %struct.TYPE_26__** %8, align 8
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %13, align 4
  %137 = mul i32 %135, %136
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @bfd_alloc(%struct.TYPE_22__* %140, i32 %143)
  %145 = inttoptr i64 %144 to i32*
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 3
  store i32* %145, i32** %147, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %129
  %153 = load i64, i64* @TRUE, align 8
  %154 = load i64*, i64** %7, align 8
  store i64 %153, i64* %154, align 8
  br label %359

155:                                              ; preds = %129
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SHT_RELA, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = call i32 (...) @abort() #3
  unreachable

163:                                              ; preds = %155
  store i64 0, i64* %9, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @EXEC_P, align 4
  %168 = load i32, i32* @DYNAMIC, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %163
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %9, align 8
  br label %176

176:                                              ; preds = %172, %163
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  store i32* %179, i32** %10, align 8
  %180 = load i32*, i32** %10, align 8
  store i32* %180, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %181

181:                                              ; preds = %356, %176
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ult i32 %182, %185
  br i1 %186, label %187, label %359

187:                                              ; preds = %181
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %190, i64 %192
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %193, align 8
  store %struct.TYPE_25__* %194, %struct.TYPE_25__** %19, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %196, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %197, align 8
  store %struct.TYPE_23__* %198, %struct.TYPE_23__** %20, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %201 = icmp eq %struct.TYPE_23__* %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %187
  %203 = load i32, i32* %15, align 4
  store i32 %203, i32* %21, align 4
  br label %229

204:                                              ; preds = %187
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @bfd_is_abs_section(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %204
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = load i32, i32* @STN_UNDEF, align 4
  store i32 %216, i32* %21, align 4
  br label %228

217:                                              ; preds = %210, %204
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %218, %struct.TYPE_23__** %14, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %220 = call i32 @_bfd_elf_symbol_from_bfd_symbol(%struct.TYPE_22__* %219, %struct.TYPE_23__** %20)
  store i32 %220, i32* %21, align 4
  %221 = load i32, i32* %21, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %217
  %224 = load i64, i64* @TRUE, align 8
  %225 = load i64*, i64** %7, align 8
  store i64 %224, i64* %225, align 8
  br label %359

226:                                              ; preds = %217
  %227 = load i32, i32* %21, align 4
  store i32 %227, i32* %15, align 4
  br label %228

228:                                              ; preds = %226, %215
  br label %229

229:                                              ; preds = %228, %202
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %231, align 8
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %234, align 8
  %236 = icmp ne %struct.TYPE_20__* %235, null
  br i1 %236, label %237, label %258

237:                                              ; preds = %229
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %239, align 8
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %245, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %237
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %253 = call i32 @_bfd_elf_validate_reloc(%struct.TYPE_22__* %251, %struct.TYPE_25__* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %250
  %256 = load i64, i64* @TRUE, align 8
  %257 = load i64*, i64** %7, align 8
  store i64 %256, i64* %257, align 8
  br label %359

258:                                              ; preds = %250, %237, %229
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @R_SPARC_LO10, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %331

266:                                              ; preds = %258
  %267 = load i32, i32* %12, align 4
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = sub i32 %270, 1
  %272 = icmp ult i32 %267, %271
  br i1 %272, label %273, label %331

273:                                              ; preds = %266
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 3
  %276 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %275, align 8
  %277 = load i32, i32* %12, align 4
  %278 = add i32 %277, 1
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %276, i64 %279
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %280, align 8
  store %struct.TYPE_25__* %281, %struct.TYPE_25__** %22, align 8
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @R_SPARC_13, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %325

289:                                              ; preds = %273
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp eq i64 %292, %295
  br i1 %296, label %297, label %325

297:                                              ; preds = %289
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %299, align 8
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = call i64 @bfd_is_abs_section(i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %325

306:                                              ; preds = %297
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 3
  %309 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %308, align 8
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %325

314:                                              ; preds = %306
  %315 = load i32, i32* %12, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %12, align 4
  %317 = load i32, i32* %21, align 4
  %318 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %319 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @R_SPARC_OLO10, align 4
  %322 = call i64 @ELF64_R_TYPE_INFO(i32 %320, i32 %321)
  %323 = call i8* @ELF64_R_INFO(i32 %317, i64 %322)
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 2
  store i8* %323, i8** %324, align 8
  br label %330

325:                                              ; preds = %306, %297, %289, %273
  %326 = load i32, i32* %21, align 4
  %327 = load i64, i64* @R_SPARC_LO10, align 8
  %328 = call i8* @ELF64_R_INFO(i32 %326, i64 %327)
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 2
  store i8* %328, i8** %329, align 8
  br label %330

330:                                              ; preds = %325, %314
  br label %340

331:                                              ; preds = %266, %258
  %332 = load i32, i32* %21, align 4
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 2
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = call i8* @ELF64_R_INFO(i32 %332, i64 %337)
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 2
  store i8* %338, i8** %339, align 8
  br label %340

340:                                              ; preds = %331, %330
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* %9, align 8
  %345 = add nsw i64 %343, %344
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  store i64 %345, i64* %346, align 8
  %347 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  store i32 %349, i32* %350, align 8
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %352 = load i32*, i32** %11, align 8
  %353 = call i32 @bfd_elf64_swap_reloca_out(%struct.TYPE_22__* %351, %struct.TYPE_27__* %18, i32* %352)
  %354 = load i32*, i32** %11, align 8
  %355 = getelementptr inbounds i32, i32* %354, i32 1
  store i32* %355, i32** %11, align 8
  br label %356

356:                                              ; preds = %340
  %357 = load i32, i32* %12, align 4
  %358 = add i32 %357, 1
  store i32 %358, i32* %12, align 4
  br label %181

359:                                              ; preds = %28, %36, %42, %152, %223, %255, %181
  ret void
}

declare dso_local i64 @bfd_is_abs_section(i32) #1

declare dso_local %struct.TYPE_28__* @elf_section_data(%struct.TYPE_24__*) #1

declare dso_local i64 @bfd_alloc(%struct.TYPE_22__*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @_bfd_elf_symbol_from_bfd_symbol(%struct.TYPE_22__*, %struct.TYPE_23__**) #1

declare dso_local i32 @_bfd_elf_validate_reloc(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

declare dso_local i8* @ELF64_R_INFO(i32, i64) #1

declare dso_local i64 @ELF64_R_TYPE_INFO(i32, i32) #1

declare dso_local i32 @bfd_elf64_swap_reloca_out(%struct.TYPE_22__*, %struct.TYPE_27__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
