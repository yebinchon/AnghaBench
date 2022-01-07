; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_find_symbol_for_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_find_symbol_for_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.disassemble_info = type { i64 (%struct.TYPE_14__*, %struct.disassemble_info*)*, i64 }
%struct.objdump_disasm_info = type { i64, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@sorted_symcount = common dso_local global i32 0, align 4
@sorted_syms = common dso_local global %struct.TYPE_14__** null, align 8
@HAS_RELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i64, %struct.disassemble_info*, i64*)* @find_symbol_for_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @find_symbol_for_address(i64 %0, %struct.disassemble_info* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.disassemble_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.objdump_disasm_info*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.disassemble_info* %1, %struct.disassemble_info** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  %19 = load i32, i32* @sorted_symcount, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* @sorted_symcount, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %312

24:                                               ; preds = %3
  %25 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %26 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.objdump_disasm_info*
  store %struct.objdump_disasm_info* %28, %struct.objdump_disasm_info** %11, align 8
  %29 = load %struct.objdump_disasm_info*, %struct.objdump_disasm_info** %11, align 8
  %30 = getelementptr inbounds %struct.objdump_disasm_info, %struct.objdump_disasm_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %12, align 8
  %32 = load %struct.objdump_disasm_info*, %struct.objdump_disasm_info** %11, align 8
  %33 = getelementptr inbounds %struct.objdump_disasm_info, %struct.objdump_disasm_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %13, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %36 = call i32 @bfd_octets_per_byte(%struct.TYPE_13__* %35)
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %67, %24
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, 1
  %40 = load i64, i64* %9, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %43, %44
  %46 = sdiv i64 %45, 2
  store i64 %46, i64* %10, align 8
  %47 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %47, i64 %48
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %16, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %52 = call i64 @bfd_asymbol_value(%struct.TYPE_14__* %51)
  %53 = load i64, i64* %5, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i64, i64* %10, align 8
  store i64 %56, i64* %9, align 8
  br label %67

57:                                               ; preds = %42
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %59 = call i64 @bfd_asymbol_value(%struct.TYPE_14__* %58)
  %60 = load i64, i64* %5, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %8, align 8
  br label %66

64:                                               ; preds = %57
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %8, align 8
  br label %68

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %55
  br label %37

68:                                               ; preds = %64, %37
  %69 = load i64, i64* %8, align 8
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %88, %68
  %71 = load i64, i64* %10, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %74, i64 %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = call i64 @bfd_asymbol_value(%struct.TYPE_14__* %77)
  %79 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %80 = load i64, i64* %10, align 8
  %81 = sub nsw i64 %80, 1
  %82 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %79, i64 %81
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call i64 @bfd_asymbol_value(%struct.TYPE_14__* %83)
  %85 = icmp eq i64 %78, %84
  br label %86

86:                                               ; preds = %73, %70
  %87 = phi i1 [ false, %70 ], [ %85, %73 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %10, align 8
  br label %70

91:                                               ; preds = %86
  %92 = load %struct.objdump_disasm_info*, %struct.objdump_disasm_info** %11, align 8
  %93 = getelementptr inbounds %struct.objdump_disasm_info, %struct.objdump_disasm_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %124, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @HAS_RELOC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %96
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = call i64 @bfd_get_section_vma(%struct.TYPE_13__* %105, i32* %106)
  %108 = icmp sge i64 %104, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %103
  %110 = load i64, i64* %5, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = call i64 @bfd_get_section_vma(%struct.TYPE_13__* %111, i32* %112)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @bfd_section_size(%struct.TYPE_13__* %114, i32* %115)
  %117 = load i32, i32* %14, align 4
  %118 = udiv i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = add nsw i64 %113, %119
  %121 = icmp slt i64 %110, %120
  br label %122

122:                                              ; preds = %109, %103, %96
  %123 = phi i1 [ false, %103 ], [ false, %96 ], [ %121, %109 ]
  br label %124

124:                                              ; preds = %122, %91
  %125 = phi i1 [ true, %91 ], [ %123, %122 ]
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %15, align 4
  %127 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %127, i64 %128
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = icmp ne i32* %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %135, %124
  %139 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %140 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %139, i32 0, i32 0
  %141 = load i64 (%struct.TYPE_14__*, %struct.disassemble_info*)*, i64 (%struct.TYPE_14__*, %struct.disassemble_info*)** %140, align 8
  %142 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %142, i64 %143
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %147 = call i64 %141(%struct.TYPE_14__* %145, %struct.disassemble_info* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %301, label %149

149:                                              ; preds = %138, %135
  %150 = load i64, i64* %10, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %17, align 8
  br label %152

152:                                              ; preds = %171, %149
  %153 = load i64, i64* %17, align 8
  %154 = load i32, i32* @sorted_symcount, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp slt i64 %153, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %152
  %158 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %159 = load i64, i64* %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %158, i64 %159
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = call i64 @bfd_asymbol_value(%struct.TYPE_14__* %161)
  %163 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %163, i64 %164
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = call i64 @bfd_asymbol_value(%struct.TYPE_14__* %166)
  %168 = icmp ne i64 %162, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %174

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %17, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %17, align 8
  br label %152

174:                                              ; preds = %169, %152
  %175 = load i64, i64* %17, align 8
  %176 = add nsw i64 %175, -1
  store i64 %176, i64* %17, align 8
  %177 = load i32, i32* @sorted_symcount, align 4
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %18, align 8
  br label %179

179:                                              ; preds = %228, %174
  %180 = load i64, i64* %17, align 8
  %181 = icmp sge i64 %180, 0
  br i1 %181, label %182, label %231

182:                                              ; preds = %179
  %183 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %184 = load i64, i64* %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %183, i64 %184
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32*, i32** %13, align 8
  %190 = icmp eq i32* %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %182
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %227, label %194

194:                                              ; preds = %191, %182
  %195 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %196 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %195, i32 0, i32 0
  %197 = load i64 (%struct.TYPE_14__*, %struct.disassemble_info*)*, i64 (%struct.TYPE_14__*, %struct.disassemble_info*)** %196, align 8
  %198 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %199 = load i64, i64* %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %198, i64 %199
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %203 = call i64 %197(%struct.TYPE_14__* %201, %struct.disassemble_info* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %227

205:                                              ; preds = %194
  %206 = load i64, i64* %18, align 8
  %207 = load i32, i32* @sorted_symcount, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp eq i64 %206, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i64, i64* %17, align 8
  store i64 %211, i64* %18, align 8
  br label %212

212:                                              ; preds = %210, %205
  %213 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %214 = load i64, i64* %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %213, i64 %214
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = call i64 @bfd_asymbol_value(%struct.TYPE_14__* %216)
  %218 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %219 = load i64, i64* %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %218, i64 %219
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = call i64 @bfd_asymbol_value(%struct.TYPE_14__* %221)
  %223 = icmp ne i64 %217, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %212
  br label %231

225:                                              ; preds = %212
  %226 = load i64, i64* %17, align 8
  store i64 %226, i64* %18, align 8
  br label %227

227:                                              ; preds = %225, %194, %191
  br label %228

228:                                              ; preds = %227
  %229 = load i64, i64* %17, align 8
  %230 = add nsw i64 %229, -1
  store i64 %230, i64* %17, align 8
  br label %179

231:                                              ; preds = %224, %179
  %232 = load i64, i64* %18, align 8
  %233 = load i32, i32* @sorted_symcount, align 4
  %234 = sext i32 %233 to i64
  %235 = icmp ne i64 %232, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load i64, i64* %18, align 8
  store i64 %237, i64* %10, align 8
  br label %276

238:                                              ; preds = %231
  %239 = load i64, i64* %10, align 8
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %17, align 8
  br label %241

241:                                              ; preds = %272, %238
  %242 = load i64, i64* %17, align 8
  %243 = load i32, i32* @sorted_symcount, align 4
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %242, %244
  br i1 %245, label %246, label %275

246:                                              ; preds = %241
  %247 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %248 = load i64, i64* %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %247, i64 %248
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32*, i32** %13, align 8
  %254 = icmp eq i32* %252, %253
  br i1 %254, label %258, label %255

255:                                              ; preds = %246
  %256 = load i32, i32* %15, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %255, %246
  %259 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %260 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %259, i32 0, i32 0
  %261 = load i64 (%struct.TYPE_14__*, %struct.disassemble_info*)*, i64 (%struct.TYPE_14__*, %struct.disassemble_info*)** %260, align 8
  %262 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %263 = load i64, i64* %17, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %262, i64 %263
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %264, align 8
  %266 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %267 = call i64 %261(%struct.TYPE_14__* %265, %struct.disassemble_info* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %258
  %270 = load i64, i64* %17, align 8
  store i64 %270, i64* %10, align 8
  br label %275

271:                                              ; preds = %258, %255
  br label %272

272:                                              ; preds = %271
  %273 = load i64, i64* %17, align 8
  %274 = add nsw i64 %273, 1
  store i64 %274, i64* %17, align 8
  br label %241

275:                                              ; preds = %269, %241
  br label %276

276:                                              ; preds = %275, %236
  %277 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %278 = load i64, i64* %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %277, i64 %278
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load i32*, i32** %13, align 8
  %284 = icmp ne i32* %282, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %276
  %286 = load i32, i32* %15, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %299, label %288

288:                                              ; preds = %285, %276
  %289 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %290 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %289, i32 0, i32 0
  %291 = load i64 (%struct.TYPE_14__*, %struct.disassemble_info*)*, i64 (%struct.TYPE_14__*, %struct.disassemble_info*)** %290, align 8
  %292 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %293 = load i64, i64* %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %292, i64 %293
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %294, align 8
  %296 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %297 = call i64 %291(%struct.TYPE_14__* %295, %struct.disassemble_info* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %288, %285
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %312

300:                                              ; preds = %288
  br label %301

301:                                              ; preds = %300, %138
  %302 = load i64*, i64** %7, align 8
  %303 = icmp ne i64* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i64, i64* %10, align 8
  %306 = load i64*, i64** %7, align 8
  store i64 %305, i64* %306, align 8
  br label %307

307:                                              ; preds = %304, %301
  %308 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %309 = load i64, i64* %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %308, i64 %309
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %310, align 8
  store %struct.TYPE_14__* %311, %struct.TYPE_14__** %4, align 8
  br label %312

312:                                              ; preds = %307, %299, %23
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %313
}

declare dso_local i32 @bfd_octets_per_byte(%struct.TYPE_13__*) #1

declare dso_local i64 @bfd_asymbol_value(%struct.TYPE_14__*) #1

declare dso_local i64 @bfd_get_section_vma(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @bfd_section_size(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
