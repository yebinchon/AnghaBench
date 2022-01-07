; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_elfread.c_elf_symtab_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_elfread.c_elf_symtab_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.objfile = type { i32, i32, i32, i32, %struct.dbx_symfile_info* }
%struct.dbx_symfile_info = type { %struct.stab_section_info* }
%struct.stab_section_info = type { i32, i8*, i64*, %struct.stab_section_info* }
%struct.TYPE_11__ = type { i8*, i32, i64, %struct.TYPE_12__* }
%struct.minimal_symbol = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i16, i64 }

@bfd_und_section = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BSF_FUNCTION = common dso_local global i32 0, align 4
@mst_solib_trampoline = common dso_local global i32 0, align 4
@BSF_FILE = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@bfd_abs_section = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@mst_text = common dso_local global i32 0, align 4
@mst_data = common dso_local global i32 0, align 4
@mst_bss = common dso_local global i32 0, align 4
@mst_abs = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@mst_file_text = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Bbss.bss\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Ddata.data\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Drodata.rodata\00", align 1
@symfile_complaints = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"elf/stab section information %s without a preceding file symbol\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"duplicated elf/stab section information for %s\00", align 1
@mst_file_data = common dso_local global i32 0, align 4
@mst_file_bss = common dso_local global i32 0, align 4
@mst_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, i32, i64, %struct.TYPE_11__**)* @elf_symtab_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_symtab_read(%struct.objfile* %0, i32 %1, i64 %2, %struct.TYPE_11__** %3) #0 {
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.stab_section_info*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.dbx_symfile_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.minimal_symbol*, align 8
  %20 = alloca %struct.minimal_symbol*, align 8
  %21 = alloca i16, align 2
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.objfile* %0, %struct.objfile** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %8, align 8
  store %struct.stab_section_info* null, %struct.stab_section_info** %15, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %16, align 8
  %27 = load %struct.objfile*, %struct.objfile** %5, align 8
  %28 = getelementptr inbounds %struct.objfile, %struct.objfile* %27, i32 0, i32 4
  %29 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %28, align 8
  store %struct.dbx_symfile_info* %29, %struct.dbx_symfile_info** %17, align 8
  %30 = load %struct.objfile*, %struct.objfile** %5, align 8
  %31 = getelementptr inbounds %struct.objfile, %struct.objfile* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @bfd_get_symcount(i32 %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %18, align 4
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %461, %4
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %464

40:                                               ; preds = %36
  %41 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %41, i64 %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %10, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %40
  br label %461

57:                                               ; preds = %49
  %58 = load %struct.objfile*, %struct.objfile** %5, align 8
  %59 = getelementptr inbounds %struct.objfile, %struct.objfile* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ANOFFSET(i32 %60, i32 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %57
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = icmp eq %struct.TYPE_12__* %72, @bfd_und_section
  br i1 %73, label %74, label %102

74:                                               ; preds = %69
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BSF_FUNCTION, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %74
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %461

88:                                               ; preds = %81
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %12, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %12, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* @mst_solib_trampoline, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load %struct.objfile*, %struct.objfile** %5, align 8
  %101 = call %struct.minimal_symbol* @record_minimal_symbol(i8* %94, i64 %95, i32 %96, %struct.TYPE_12__* %99, %struct.objfile* %100)
  store %struct.minimal_symbol* %101, %struct.minimal_symbol** %19, align 8
  br label %461

102:                                              ; preds = %74, %69, %57
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %461

109:                                              ; preds = %105, %102
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @BSF_FILE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %109
  %117 = load %struct.stab_section_info*, %struct.stab_section_info** %15, align 8
  %118 = icmp ne %struct.stab_section_info* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %17, align 8
  %121 = getelementptr inbounds %struct.dbx_symfile_info, %struct.dbx_symfile_info* %120, i32 0, i32 0
  %122 = load %struct.stab_section_info*, %struct.stab_section_info** %121, align 8
  %123 = load %struct.stab_section_info*, %struct.stab_section_info** %15, align 8
  %124 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %123, i32 0, i32 3
  store %struct.stab_section_info* %122, %struct.stab_section_info** %124, align 8
  %125 = load %struct.stab_section_info*, %struct.stab_section_info** %15, align 8
  %126 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %17, align 8
  %127 = getelementptr inbounds %struct.dbx_symfile_info, %struct.dbx_symfile_info* %126, i32 0, i32 0
  store %struct.stab_section_info* %125, %struct.stab_section_info** %127, align 8
  store %struct.stab_section_info* null, %struct.stab_section_info** %15, align 8
  br label %128

128:                                              ; preds = %119, %116
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %16, align 8
  br label %460

130:                                              ; preds = %109
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @BSF_GLOBAL, align 4
  %135 = load i32, i32* @BSF_LOCAL, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @BSF_WEAK, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %133, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %459

141:                                              ; preds = %130
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %144, %149
  store i64 %150, i64* %12, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = icmp ne %struct.TYPE_12__* %153, @bfd_abs_section
  br i1 %154, label %155, label %159

155:                                              ; preds = %141
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* %12, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* %12, align 8
  br label %159

159:                                              ; preds = %155, %141
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = icmp eq %struct.TYPE_12__* %162, @bfd_abs_section
  br i1 %163, label %164, label %198

164:                                              ; preds = %159
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %166 = bitcast %struct.TYPE_11__* %165 to %struct.TYPE_10__*
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i16, i16* %168, align 8
  store i16 %169, i16* %21, align 2
  %170 = load i16, i16* %21, align 2
  %171 = zext i16 %170 to i32
  switch i32 %171, label %178 [
    i32 128, label %172
    i32 129, label %174
    i32 130, label %176
  ]

172:                                              ; preds = %164
  %173 = load i32, i32* @mst_text, align 4
  store i32 %173, i32* %14, align 4
  br label %180

174:                                              ; preds = %164
  %175 = load i32, i32* @mst_data, align 4
  store i32 %175, i32* %14, align 4
  br label %180

176:                                              ; preds = %164
  %177 = load i32, i32* @mst_bss, align 4
  store i32 %177, i32* %14, align 4
  br label %180

178:                                              ; preds = %164
  %179 = load i32, i32* @mst_abs, align 4
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %178, %176, %174, %172
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @mst_abs, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %180
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 46
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %461

193:                                              ; preds = %184
  %194 = load i64, i64* %13, align 8
  %195 = load i64, i64* %12, align 8
  %196 = add nsw i64 %195, %194
  store i64 %196, i64* %12, align 8
  br label %197

197:                                              ; preds = %193, %180
  br label %435

198:                                              ; preds = %159
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @SEC_CODE, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %260

207:                                              ; preds = %198
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @BSF_GLOBAL, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = load i32, i32* @mst_text, align 4
  store i32 %215, i32* %14, align 4
  br label %259

216:                                              ; preds = %207
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 0
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 46
  br i1 %223, label %224, label %232

224:                                              ; preds = %216
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 76
  br i1 %231, label %255, label %232

232:                                              ; preds = %224, %216
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @BSF_LOCAL, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %232
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 0
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 36
  br i1 %246, label %247, label %256

247:                                              ; preds = %239
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 1
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 76
  br i1 %254, label %255, label %256

255:                                              ; preds = %247, %224
  br label %461

256:                                              ; preds = %247, %239, %232
  %257 = load i32, i32* @mst_file_text, align 4
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %256
  br label %259

259:                                              ; preds = %258, %214
  br label %434

260:                                              ; preds = %198
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @SEC_ALLOC, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %432

269:                                              ; preds = %260
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @BSF_GLOBAL, align 4
  %274 = load i32, i32* @BSF_WEAK, align 4
  %275 = or i32 %273, %274
  %276 = and i32 %272, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %292

278:                                              ; preds = %269
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 3
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @SEC_LOAD, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %278
  %288 = load i32, i32* @mst_data, align 4
  store i32 %288, i32* %14, align 4
  br label %291

289:                                              ; preds = %278
  %290 = load i32, i32* @mst_bss, align 4
  store i32 %290, i32* %14, align 4
  br label %291

291:                                              ; preds = %289, %287
  br label %431

292:                                              ; preds = %269
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @BSF_LOCAL, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %428

299:                                              ; preds = %292
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %302)
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %299
  %306 = load %struct.objfile*, %struct.objfile** %5, align 8
  %307 = call i32 @SECT_OFF_BSS(%struct.objfile* %306)
  store i32 %307, i32* %22, align 4
  br label %329

308:                                              ; preds = %299
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %311)
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %308
  %315 = load %struct.objfile*, %struct.objfile** %5, align 8
  %316 = call i32 @SECT_OFF_DATA(%struct.objfile* %315)
  store i32 %316, i32* %22, align 4
  br label %328

317:                                              ; preds = %308
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = call i64 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %320)
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %317
  %324 = load %struct.objfile*, %struct.objfile** %5, align 8
  %325 = call i32 @SECT_OFF_RODATA(%struct.objfile* %324)
  store i32 %325, i32* %22, align 4
  br label %327

326:                                              ; preds = %317
  store i32 -1, i32* %22, align 4
  br label %327

327:                                              ; preds = %326, %323
  br label %328

328:                                              ; preds = %327, %314
  br label %329

329:                                              ; preds = %328, %305
  %330 = load i32, i32* %22, align 4
  %331 = icmp sge i32 %330, 0
  br i1 %331, label %332, label %414

332:                                              ; preds = %329
  %333 = load %struct.stab_section_info*, %struct.stab_section_info** %15, align 8
  %334 = icmp eq %struct.stab_section_info* %333, null
  br i1 %334, label %335, label %374

335:                                              ; preds = %332
  %336 = load %struct.objfile*, %struct.objfile** %5, align 8
  %337 = call i32 @SECT_OFF_BSS(%struct.objfile* %336)
  %338 = load %struct.objfile*, %struct.objfile** %5, align 8
  %339 = call i32 @SECT_OFF_DATA(%struct.objfile* %338)
  %340 = load %struct.objfile*, %struct.objfile** %5, align 8
  %341 = call i32 @SECT_OFF_RODATA(%struct.objfile* %340)
  %342 = call i32 @max(i32 %339, i32 %341)
  %343 = call i32 @max(i32 %337, i32 %342)
  store i32 %343, i32* %23, align 4
  %344 = load i32, i32* %23, align 4
  %345 = sext i32 %344 to i64
  %346 = mul i64 8, %345
  %347 = add i64 32, %346
  store i64 %347, i64* %24, align 8
  %348 = load %struct.objfile*, %struct.objfile** %5, align 8
  %349 = getelementptr inbounds %struct.objfile, %struct.objfile* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i64, i64* %24, align 8
  %352 = call i64 @xmmalloc(i32 %350, i64 %351)
  %353 = inttoptr i64 %352 to %struct.stab_section_info*
  store %struct.stab_section_info* %353, %struct.stab_section_info** %15, align 8
  %354 = load %struct.stab_section_info*, %struct.stab_section_info** %15, align 8
  %355 = load i64, i64* %24, align 8
  %356 = call i32 @memset(%struct.stab_section_info* %354, i32 0, i64 %355)
  %357 = load i32, i32* %23, align 4
  %358 = load %struct.stab_section_info*, %struct.stab_section_info** %15, align 8
  %359 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 8
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %361 = icmp eq %struct.TYPE_11__* %360, null
  br i1 %361, label %362, label %367

362:                                              ; preds = %335
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %365)
  br label %373

367:                                              ; preds = %335
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 0
  %370 = load i8*, i8** %369, align 8
  %371 = load %struct.stab_section_info*, %struct.stab_section_info** %15, align 8
  %372 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %371, i32 0, i32 1
  store i8* %370, i8** %372, align 8
  br label %373

373:                                              ; preds = %367, %362
  br label %374

374:                                              ; preds = %373, %332
  %375 = load %struct.stab_section_info*, %struct.stab_section_info** %15, align 8
  %376 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %375, i32 0, i32 2
  %377 = load i64*, i64** %376, align 8
  %378 = load i32, i32* %22, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i64, i64* %377, i64 %379
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %374
  %384 = load %struct.stab_section_info*, %struct.stab_section_info** %15, align 8
  %385 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %384, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  %387 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %386)
  br label %388

388:                                              ; preds = %383, %374
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 3
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = add nsw i64 %391, %396
  store i64 %397, i64* %12, align 8
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 3
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %399, align 8
  %401 = icmp ne %struct.TYPE_12__* %400, @bfd_abs_section
  br i1 %401, label %402, label %406

402:                                              ; preds = %388
  %403 = load i64, i64* %13, align 8
  %404 = load i64, i64* %12, align 8
  %405 = add nsw i64 %404, %403
  store i64 %405, i64* %12, align 8
  br label %406

406:                                              ; preds = %402, %388
  %407 = load i64, i64* %12, align 8
  %408 = load %struct.stab_section_info*, %struct.stab_section_info** %15, align 8
  %409 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %408, i32 0, i32 2
  %410 = load i64*, i64** %409, align 8
  %411 = load i32, i32* %22, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i64, i64* %410, i64 %412
  store i64 %407, i64* %413, align 8
  br label %461

414:                                              ; preds = %329
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i32 0, i32 3
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @SEC_LOAD, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %414
  %424 = load i32, i32* @mst_file_data, align 4
  store i32 %424, i32* %14, align 4
  br label %427

425:                                              ; preds = %414
  %426 = load i32, i32* @mst_file_bss, align 4
  store i32 %426, i32* %14, align 4
  br label %427

427:                                              ; preds = %425, %423
  br label %430

428:                                              ; preds = %292
  %429 = load i32, i32* @mst_unknown, align 4
  store i32 %429, i32* %14, align 4
  br label %430

430:                                              ; preds = %428, %427
  br label %431

431:                                              ; preds = %430, %291
  br label %433

432:                                              ; preds = %260
  br label %461

433:                                              ; preds = %431
  br label %434

434:                                              ; preds = %433, %259
  br label %435

435:                                              ; preds = %434, %197
  %436 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i32 0, i32 0
  %438 = load i8*, i8** %437, align 8
  %439 = load i64, i64* %12, align 8
  %440 = load i32, i32* %14, align 4
  %441 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i32 0, i32 3
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %442, align 8
  %444 = load %struct.objfile*, %struct.objfile** %5, align 8
  %445 = call %struct.minimal_symbol* @record_minimal_symbol(i8* %438, i64 %439, i32 %440, %struct.TYPE_12__* %443, %struct.objfile* %444)
  store %struct.minimal_symbol* %445, %struct.minimal_symbol** %20, align 8
  %446 = load %struct.minimal_symbol*, %struct.minimal_symbol** %20, align 8
  %447 = icmp ne %struct.minimal_symbol* %446, null
  br i1 %447, label %448, label %455

448:                                              ; preds = %435
  %449 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %450 = bitcast %struct.TYPE_11__* %449 to %struct.TYPE_10__*
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %25, align 8
  %454 = load i64, i64* %25, align 8
  store i64 %454, i64* %26, align 8
  br label %455

455:                                              ; preds = %448, %435
  %456 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %457 = load %struct.minimal_symbol*, %struct.minimal_symbol** %20, align 8
  %458 = call i32 @ELF_MAKE_MSYMBOL_SPECIAL(%struct.TYPE_11__* %456, %struct.minimal_symbol* %457)
  br label %459

459:                                              ; preds = %455, %130
  br label %460

460:                                              ; preds = %459, %128
  br label %461

461:                                              ; preds = %460, %432, %406, %255, %192, %108, %88, %87, %56
  %462 = load i64, i64* %11, align 8
  %463 = add nsw i64 %462, 1
  store i64 %463, i64* %11, align 8
  br label %36

464:                                              ; preds = %36
  ret void
}

declare dso_local i64 @bfd_get_symcount(i32) #1

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local %struct.minimal_symbol* @record_minimal_symbol(i8*, i64, i32, %struct.TYPE_12__*, %struct.objfile*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SECT_OFF_BSS(%struct.objfile*) #1

declare dso_local i32 @SECT_OFF_DATA(%struct.objfile*) #1

declare dso_local i32 @SECT_OFF_RODATA(%struct.objfile*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @xmmalloc(i32, i64) #1

declare dso_local i32 @memset(%struct.stab_section_info*, i32, i64) #1

declare dso_local i32 @complaint(i32*, i8*, i8*) #1

declare dso_local i32 @ELF_MAKE_MSYMBOL_SPECIAL(%struct.TYPE_11__*, %struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
