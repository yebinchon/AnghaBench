; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsread.c_read_alphacoff_dynamic_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsread.c_read_alphacoff_dynamic_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_offsets = type { i32 }
%struct.objfile = type { i32* }
%struct.alphacoff_dynsecinfo = type { i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.cleanup = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@bfd_arch_alpha = common dso_local global i64 0, align 8
@alphacoff_locate_sections = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@DT_NULL = common dso_local global i64 0, align 8
@DT_MIPS_LOCAL_GOTNO = common dso_local global i64 0, align 8
@DT_MIPS_GOTSYM = common dso_local global i64 0, align 8
@STB_GLOBAL = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i64 0, align 8
@mst_solib_trampoline = common dso_local global i32 0, align 4
@SHN_MIPS_TEXT = common dso_local global i32 0, align 4
@mst_text = common dso_local global i32 0, align 4
@mst_file_text = common dso_local global i32 0, align 4
@SHN_MIPS_DATA = common dso_local global i32 0, align 4
@mst_data = common dso_local global i32 0, align 4
@mst_file_data = common dso_local global i32 0, align 4
@SHN_MIPS_ACOMMON = common dso_local global i32 0, align 4
@mst_bss = common dso_local global i32 0, align 4
@mst_file_bss = common dso_local global i32 0, align 4
@SHN_ABS = common dso_local global i32 0, align 4
@mst_abs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.section_offsets*, %struct.objfile*)* @read_alphacoff_dynamic_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_alphacoff_dynamic_symtab(%struct.section_offsets* %0, %struct.objfile* %1) #0 {
  %3 = alloca %struct.section_offsets*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.alphacoff_dynsecinfo, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.cleanup*, align 8
  %25 = alloca %struct.TYPE_6__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8, align 1
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.section_offsets* %0, %struct.section_offsets** %3, align 8
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  %35 = load %struct.objfile*, %struct.objfile** %4, align 8
  %36 = getelementptr inbounds %struct.objfile, %struct.objfile* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %5, align 8
  store i32 8, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @bfd_get_arch(i32* %38)
  %40 = load i64, i64* @bfd_arch_alpha, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  br label %401

43:                                               ; preds = %2
  %44 = bitcast %struct.alphacoff_dynsecinfo* %6 to i8*
  %45 = call i32 @memset(i8* %44, i32 0, i32 32)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @alphacoff_locate_sections, align 4
  %48 = bitcast %struct.alphacoff_dynsecinfo* %6 to i8*
  %49 = call i32 @bfd_map_over_sections(i32* %46, i32 %47, i8* %48)
  %50 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57, %53, %43
  br label %401

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @bfd_get_section_size(i32* %68)
  store i32 %69, i32* %11, align 4
  %70 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @bfd_get_section_size(i32* %71)
  store i32 %72, i32* %12, align 4
  %73 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @bfd_get_section_size(i32* %74)
  store i32 %75, i32* %13, align 4
  %76 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bfd_get_section_size(i32* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i8* @xmalloc(i32 %79)
  store i8* %80, i8** %7, align 8
  %81 = load i32, i32* @free, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call %struct.cleanup* @make_cleanup(i32 %81, i8* %82)
  store %struct.cleanup* %83, %struct.cleanup** %24, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i8* @xmalloc(i32 %84)
  store i8* %85, i8** %8, align 8
  %86 = load i32, i32* @free, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = call %struct.cleanup* @make_cleanup(i32 %86, i8* %87)
  %89 = load i32, i32* %13, align 4
  %90 = call i8* @xmalloc(i32 %89)
  store i8* %90, i8** %9, align 8
  %91 = load i32, i32* @free, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = call %struct.cleanup* @make_cleanup(i32 %91, i8* %92)
  %94 = load i32, i32* %14, align 4
  %95 = call i8* @xmalloc(i32 %94)
  store i8* %95, i8** %10, align 8
  %96 = load i32, i32* @free, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = call %struct.cleanup* @make_cleanup(i32 %96, i8* %97)
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @bfd_get_section_contents(i32* %99, i32* %101, i8* %102, i32 0, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %66
  br label %401

107:                                              ; preds = %66
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @bfd_get_section_contents(i32* %108, i32* %110, i8* %111, i32 0, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  br label %401

116:                                              ; preds = %107
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @bfd_get_section_contents(i32* %117, i32* %119, i8* %120, i32 0, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  br label %401

125:                                              ; preds = %116
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds %struct.alphacoff_dynsecinfo, %struct.alphacoff_dynsecinfo* %6, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @bfd_get_section_contents(i32* %126, i32* %128, i8* %129, i32 0, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %125
  br label %401

134:                                              ; preds = %125
  %135 = load i8*, i8** %9, align 8
  store i8* %135, i8** %19, align 8
  %136 = load i8*, i8** %19, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8* %139, i8** %20, align 8
  br label %140

140:                                              ; preds = %195, %134
  %141 = load i8*, i8** %19, align 8
  %142 = load i8*, i8** %20, align 8
  %143 = icmp ult i8* %141, %142
  br i1 %143, label %144, label %198

144:                                              ; preds = %140
  %145 = load i8*, i8** %19, align 8
  %146 = bitcast i8* %145 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %146, %struct.TYPE_6__** %25, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i32*
  %152 = call i8* @bfd_h_get_32(i32* %147, i32* %151)
  %153 = ptrtoint i8* %152 to i64
  store i64 %153, i64* %26, align 8
  %154 = load i64, i64* %26, align 8
  %155 = load i64, i64* @DT_NULL, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  br label %198

158:                                              ; preds = %144
  %159 = load i64, i64* %26, align 8
  %160 = load i64, i64* @DT_MIPS_LOCAL_GOTNO, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load i32, i32* %22, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i32*, i32** %5, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i32*
  %172 = call i8* @bfd_h_get_32(i32* %166, i32* %171)
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %22, align 4
  br label %174

174:                                              ; preds = %165, %162
  br label %193

175:                                              ; preds = %158
  %176 = load i64, i64* %26, align 8
  %177 = load i64, i64* @DT_MIPS_GOTSYM, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %175
  %180 = load i32, i32* %23, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load i32*, i32** %5, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i32*
  %189 = call i8* @bfd_h_get_32(i32* %183, i32* %188)
  %190 = ptrtoint i8* %189 to i32
  store i32 %190, i32* %23, align 4
  br label %191

191:                                              ; preds = %182, %179
  br label %192

192:                                              ; preds = %191, %175
  br label %193

193:                                              ; preds = %192, %174
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  %196 = load i8*, i8** %19, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 16
  store i8* %197, i8** %19, align 8
  br label %140

198:                                              ; preds = %157, %140
  %199 = load i32, i32* %22, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %23, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201, %198
  br label %401

205:                                              ; preds = %201
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = udiv i64 %207, 32
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %15, align 4
  %210 = load i32*, i32** %5, align 8
  %211 = call i64 @bfd_get_symcount(i32* %210)
  %212 = icmp eq i64 %211, 0
  %213 = zext i1 %212 to i32
  store i32 %213, i32* %17, align 4
  store i32 1, i32* %16, align 4
  %214 = load i8*, i8** %7, align 8
  %215 = bitcast i8* %214 to %struct.TYPE_5__*
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 1
  store %struct.TYPE_5__* %216, %struct.TYPE_5__** %18, align 8
  br label %217

217:                                              ; preds = %393, %205
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %15, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %398

221:                                              ; preds = %217
  %222 = load i32*, i32** %5, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = inttoptr i64 %225 to i32*
  %227 = call i8* @bfd_h_get_32(i32* %222, i32* %226)
  %228 = ptrtoint i8* %227 to i64
  store i64 %228, i64* %27, align 8
  %229 = load i64, i64* %27, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = icmp uge i64 %229, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %221
  br label %393

234:                                              ; preds = %221
  %235 = load i8*, i8** %8, align 8
  %236 = load i64, i64* %27, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %28, align 8
  %238 = load i8*, i8** %28, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %234
  %243 = load i8*, i8** %28, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 46
  br i1 %246, label %247, label %248

247:                                              ; preds = %242, %234
  br label %393

248:                                              ; preds = %242
  %249 = load i32*, i32** %5, align 8
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to i32*
  %254 = call i64 @bfd_h_get_64(i32* %249, i32* %253)
  store i64 %254, i64* %29, align 8
  %255 = load i32*, i32** %5, align 8
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = inttoptr i64 %258 to i32*
  %260 = call zeroext i8 @bfd_h_get_8(i32* %255, i32* %259)
  store i8 %260, i8* %30, align 1
  %261 = load i32*, i32** %5, align 8
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = inttoptr i64 %264 to i32*
  %266 = call i32 @bfd_h_get_16(i32* %261, i32* %265)
  store i32 %266, i32* %31, align 4
  %267 = load i8, i8* %30, align 1
  %268 = call i64 @ELF_ST_BIND(i8 zeroext %267)
  %269 = load i64, i64* @STB_GLOBAL, align 8
  %270 = icmp eq i64 %268, %269
  %271 = zext i1 %270 to i32
  store i32 %271, i32* %32, align 4
  %272 = load i32, i32* %31, align 4
  %273 = load i32, i32* @SHN_UNDEF, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %318

275:                                              ; preds = %248
  %276 = load i8, i8* %30, align 1
  %277 = call i64 @ELF_ST_TYPE(i8 zeroext %276)
  %278 = load i64, i64* @STT_FUNC, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %285, label %280

280:                                              ; preds = %275
  %281 = load i8, i8* %30, align 1
  %282 = call i64 @ELF_ST_BIND(i8 zeroext %281)
  %283 = load i64, i64* @STB_GLOBAL, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %280, %275
  br label %393

286:                                              ; preds = %280
  %287 = load i32, i32* @mst_solib_trampoline, align 4
  store i32 %287, i32* %33, align 4
  %288 = load i64, i64* %29, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %317

290:                                              ; preds = %286
  %291 = load i32, i32* %16, align 4
  %292 = load i32, i32* %23, align 4
  %293 = sub nsw i32 %291, %292
  %294 = load i32, i32* %22, align 4
  %295 = add nsw i32 %293, %294
  %296 = load i32, i32* %21, align 4
  %297 = mul nsw i32 %295, %296
  store i32 %297, i32* %34, align 4
  %298 = load i32, i32* %34, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %290
  %301 = load i32, i32* %34, align 4
  %302 = load i32, i32* %14, align 4
  %303 = icmp sge i32 %301, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %300, %290
  br label %393

305:                                              ; preds = %300
  %306 = load i32*, i32** %5, align 8
  %307 = load i8*, i8** %10, align 8
  %308 = load i32, i32* %34, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  %311 = bitcast i8* %310 to i32*
  %312 = call i64 @bfd_h_get_64(i32* %306, i32* %311)
  store i64 %312, i64* %29, align 8
  %313 = load i64, i64* %29, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %305
  br label %393

316:                                              ; preds = %305
  br label %317

317:                                              ; preds = %316, %286
  br label %387

318:                                              ; preds = %248
  %319 = load i32, i32* %17, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %318
  br label %393

322:                                              ; preds = %318
  %323 = load i32, i32* %31, align 4
  %324 = load i32, i32* @SHN_MIPS_TEXT, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %340

326:                                              ; preds = %322
  %327 = load i32, i32* %32, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %326
  %330 = load i32, i32* @mst_text, align 4
  store i32 %330, i32* %33, align 4
  br label %333

331:                                              ; preds = %326
  %332 = load i32, i32* @mst_file_text, align 4
  store i32 %332, i32* %33, align 4
  br label %333

333:                                              ; preds = %331, %329
  %334 = load %struct.section_offsets*, %struct.section_offsets** %3, align 8
  %335 = load %struct.objfile*, %struct.objfile** %4, align 8
  %336 = call i32 @SECT_OFF_TEXT(%struct.objfile* %335)
  %337 = call i64 @ANOFFSET(%struct.section_offsets* %334, i32 %336)
  %338 = load i64, i64* %29, align 8
  %339 = add nsw i64 %338, %337
  store i64 %339, i64* %29, align 8
  br label %386

340:                                              ; preds = %322
  %341 = load i32, i32* %31, align 4
  %342 = load i32, i32* @SHN_MIPS_DATA, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %358

344:                                              ; preds = %340
  %345 = load i32, i32* %32, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %344
  %348 = load i32, i32* @mst_data, align 4
  store i32 %348, i32* %33, align 4
  br label %351

349:                                              ; preds = %344
  %350 = load i32, i32* @mst_file_data, align 4
  store i32 %350, i32* %33, align 4
  br label %351

351:                                              ; preds = %349, %347
  %352 = load %struct.section_offsets*, %struct.section_offsets** %3, align 8
  %353 = load %struct.objfile*, %struct.objfile** %4, align 8
  %354 = call i32 @SECT_OFF_DATA(%struct.objfile* %353)
  %355 = call i64 @ANOFFSET(%struct.section_offsets* %352, i32 %354)
  %356 = load i64, i64* %29, align 8
  %357 = add nsw i64 %356, %355
  store i64 %357, i64* %29, align 8
  br label %385

358:                                              ; preds = %340
  %359 = load i32, i32* %31, align 4
  %360 = load i32, i32* @SHN_MIPS_ACOMMON, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %376

362:                                              ; preds = %358
  %363 = load i32, i32* %32, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %362
  %366 = load i32, i32* @mst_bss, align 4
  store i32 %366, i32* %33, align 4
  br label %369

367:                                              ; preds = %362
  %368 = load i32, i32* @mst_file_bss, align 4
  store i32 %368, i32* %33, align 4
  br label %369

369:                                              ; preds = %367, %365
  %370 = load %struct.section_offsets*, %struct.section_offsets** %3, align 8
  %371 = load %struct.objfile*, %struct.objfile** %4, align 8
  %372 = call i32 @SECT_OFF_BSS(%struct.objfile* %371)
  %373 = call i64 @ANOFFSET(%struct.section_offsets* %370, i32 %372)
  %374 = load i64, i64* %29, align 8
  %375 = add nsw i64 %374, %373
  store i64 %375, i64* %29, align 8
  br label %384

376:                                              ; preds = %358
  %377 = load i32, i32* %31, align 4
  %378 = load i32, i32* @SHN_ABS, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %376
  %381 = load i32, i32* @mst_abs, align 4
  store i32 %381, i32* %33, align 4
  br label %383

382:                                              ; preds = %376
  br label %393

383:                                              ; preds = %380
  br label %384

384:                                              ; preds = %383, %369
  br label %385

385:                                              ; preds = %384, %351
  br label %386

386:                                              ; preds = %385, %333
  br label %387

387:                                              ; preds = %386, %317
  %388 = load i8*, i8** %28, align 8
  %389 = load i64, i64* %29, align 8
  %390 = load i32, i32* %33, align 4
  %391 = load %struct.objfile*, %struct.objfile** %4, align 8
  %392 = call i32 @prim_record_minimal_symbol(i8* %388, i64 %389, i32 %390, %struct.objfile* %391)
  br label %393

393:                                              ; preds = %387, %382, %321, %315, %304, %285, %247, %233
  %394 = load i32, i32* %16, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %16, align 4
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 1
  store %struct.TYPE_5__* %397, %struct.TYPE_5__** %18, align 8
  br label %217

398:                                              ; preds = %217
  %399 = load %struct.cleanup*, %struct.cleanup** %24, align 8
  %400 = call i32 @do_cleanups(%struct.cleanup* %399)
  br label %401

401:                                              ; preds = %398, %204, %133, %124, %115, %106, %65, %42
  ret void
}

declare dso_local i64 @bfd_get_arch(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bfd_map_over_sections(i32*, i32, i8*) #1

declare dso_local i32 @bfd_get_section_size(i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @bfd_get_section_contents(i32*, i32*, i8*, i32, i32) #1

declare dso_local i8* @bfd_h_get_32(i32*, i32*) #1

declare dso_local i64 @bfd_get_symcount(i32*) #1

declare dso_local i64 @bfd_h_get_64(i32*, i32*) #1

declare dso_local zeroext i8 @bfd_h_get_8(i32*, i32*) #1

declare dso_local i32 @bfd_h_get_16(i32*, i32*) #1

declare dso_local i64 @ELF_ST_BIND(i8 zeroext) #1

declare dso_local i64 @ELF_ST_TYPE(i8 zeroext) #1

declare dso_local i64 @ANOFFSET(%struct.section_offsets*, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i32 @SECT_OFF_DATA(%struct.objfile*) #1

declare dso_local i32 @SECT_OFF_BSS(%struct.objfile*) #1

declare dso_local i32 @prim_record_minimal_symbol(i8*, i64, i32, %struct.objfile*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
