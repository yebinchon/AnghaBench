; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-cr16.c_elf32_cr16_relax_delete_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-cr16.c_elf32_cr16_relax_delete_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i64 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { %struct.TYPE_22__*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }

@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, i32*, %struct.TYPE_19__*, i32, i32)* @elf32_cr16_relax_delete_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_cr16_relax_delete_bytes(%struct.bfd_link_info* %0, i32* %1, %struct.TYPE_19__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca %struct.elf_link_hash_entry**, align 8
  %21 = alloca %struct.elf_link_hash_entry**, align 8
  %22 = alloca %struct.elf_link_hash_entry**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_20__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.elf_link_hash_entry*, align 8
  %29 = alloca %struct.elf_link_hash_entry**, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %32 = call i32 @_bfd_elf_section_from_bfd_section(i32* %30, %struct.TYPE_19__* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %34 = call %struct.TYPE_14__* @elf_section_data(%struct.TYPE_19__* %33)
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %13, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %16, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %17, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = call %struct.TYPE_14__* @elf_section_data(%struct.TYPE_19__* %41)
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %14, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i64 %49
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %15, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = call i32 @memmove(i32* %54, i32* %61, i64 %67)
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %75 = call %struct.TYPE_14__* @elf_section_data(%struct.TYPE_19__* %74)
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %14, align 8
  br label %78

78:                                               ; preds = %101, %5
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %81 = icmp ult %struct.TYPE_22__* %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %78
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %88, %82
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 1
  store %struct.TYPE_22__* %103, %struct.TYPE_22__** %14, align 8
  br label %78

104:                                              ; preds = %78
  %105 = load i32*, i32** %7, align 8
  %106 = call %struct.TYPE_23__* @elf_tdata(i32* %105)
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  store %struct.TYPE_21__* %107, %struct.TYPE_21__** %11, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %111, %struct.TYPE_20__** %18, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i64 %116
  store %struct.TYPE_20__* %117, %struct.TYPE_20__** %19, align 8
  br label %118

118:                                              ; preds = %194, %104
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %121 = icmp ult %struct.TYPE_20__* %119, %120
  br i1 %121, label %122, label %197

122:                                              ; preds = %118
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %193

128:                                              ; preds = %122
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %193

134:                                              ; preds = %128
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %17, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %193

140:                                              ; preds = %134
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %142 = call %struct.TYPE_14__* @elf_section_data(%struct.TYPE_19__* %141)
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %143, align 8
  store %struct.TYPE_22__* %144, %struct.TYPE_22__** %14, align 8
  br label %145

145:                                              ; preds = %184, %140
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %148 = icmp ult %struct.TYPE_22__* %146, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %145
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ELF32_R_SYM(i32 %152)
  store i64 %153, i64* %24, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to %struct.TYPE_20__*
  %158 = load i64, i64* %24, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i64 %158
  store %struct.TYPE_20__* %159, %struct.TYPE_20__** %25, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %162 = icmp ne %struct.TYPE_20__* %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %149
  br label %184

164:                                              ; preds = %149
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %26, align 4
  %168 = load i32, i32* %26, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %168, %171
  store i32 %172, i32* %27, align 4
  %173 = load i32, i32* %27, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp sle i32 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %164
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, %177
  store i32 %181, i32* %179, align 4
  br label %183

182:                                              ; preds = %164
  br label %184

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183, %182, %163
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 1
  store %struct.TYPE_22__* %186, %struct.TYPE_22__** %14, align 8
  br label %145

187:                                              ; preds = %145
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %134, %128, %122
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 1
  store %struct.TYPE_20__* %196, %struct.TYPE_20__** %18, align 8
  br label %118

197:                                              ; preds = %118
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = udiv i64 %201, 4
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = sub i64 %202, %206
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %23, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %209)
  store %struct.elf_link_hash_entry** %210, %struct.elf_link_hash_entry*** %22, align 8
  store %struct.elf_link_hash_entry** %210, %struct.elf_link_hash_entry*** %20, align 8
  %211 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %20, align 8
  %212 = load i32, i32* %23, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %211, i64 %213
  store %struct.elf_link_hash_entry** %214, %struct.elf_link_hash_entry*** %21, align 8
  br label %215

215:                                              ; preds = %299, %197
  %216 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %20, align 8
  %217 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %21, align 8
  %218 = icmp ult %struct.elf_link_hash_entry** %216, %217
  br i1 %218, label %219, label %302

219:                                              ; preds = %215
  %220 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %20, align 8
  %221 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %220, align 8
  store %struct.elf_link_hash_entry* %221, %struct.elf_link_hash_entry** %28, align 8
  %222 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %223 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %248

226:                                              ; preds = %219
  %227 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %22, align 8
  store %struct.elf_link_hash_entry** %227, %struct.elf_link_hash_entry*** %29, align 8
  br label %228

228:                                              ; preds = %239, %226
  %229 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %29, align 8
  %230 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %20, align 8
  %231 = icmp ult %struct.elf_link_hash_entry** %229, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %228
  %233 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %29, align 8
  %234 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %233, align 8
  %235 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %236 = icmp eq %struct.elf_link_hash_entry* %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %242

238:                                              ; preds = %232
  br label %239

239:                                              ; preds = %238
  %240 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %29, align 8
  %241 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %240, i32 1
  store %struct.elf_link_hash_entry** %241, %struct.elf_link_hash_entry*** %29, align 8
  br label %228

242:                                              ; preds = %237, %228
  %243 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %29, align 8
  %244 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %20, align 8
  %245 = icmp ult %struct.elf_link_hash_entry** %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  br label %299

247:                                              ; preds = %242
  br label %248

248:                                              ; preds = %247, %219
  %249 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %250 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @bfd_link_hash_defined, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %262, label %255

255:                                              ; preds = %248
  %256 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %257 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @bfd_link_hash_defweak, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %298

262:                                              ; preds = %255, %248
  %263 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %264 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %267, align 8
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %270 = icmp eq %struct.TYPE_19__* %268, %269
  br i1 %270, label %271, label %298

271:                                              ; preds = %262
  %272 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %273 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = icmp sgt i32 %277, %278
  br i1 %279, label %280, label %298

280:                                              ; preds = %271
  %281 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %282 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %17, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %298

289:                                              ; preds = %280
  %290 = load i32, i32* %10, align 4
  %291 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %292 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %296, %290
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %289, %280, %271, %262, %255
  br label %299

299:                                              ; preds = %298, %246
  %300 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %20, align 8
  %301 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %300, i32 1
  store %struct.elf_link_hash_entry** %301, %struct.elf_link_hash_entry*** %20, align 8
  br label %215

302:                                              ; preds = %215
  %303 = load i32, i32* @TRUE, align 4
  ret i32 %303
}

declare dso_local i32 @_bfd_elf_section_from_bfd_section(i32*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_14__* @elf_section_data(%struct.TYPE_19__*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_23__* @elf_tdata(i32*) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
