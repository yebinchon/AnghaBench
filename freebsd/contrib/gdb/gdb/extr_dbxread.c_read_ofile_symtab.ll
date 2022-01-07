; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_read_ofile_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_read_ofile_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32* }
%struct.external_nlist = type { i32 }
%struct.partial_symtab = type { i64, i32, i32, %struct.section_offsets*, %struct.objfile* }
%struct.section_offsets = type { i32 }
%struct.internal_nlist = type { i8, i32, i32 }

@current_objfile = common dso_local global %struct.objfile* null, align 8
@subfile_stack = common dso_local global i32* null, align 8
@stringtab_global = common dso_local global i32 0, align 4
@last_source_file = common dso_local global i32* null, align 8
@symfile_bfd = common dso_local global i32* null, align 8
@symbuf_idx = common dso_local global i64 0, align 8
@symbuf_end = common dso_local global i64 0, align 8
@symbuf_read = common dso_local global i64 0, align 8
@symbuf_left = common dso_local global i32 0, align 4
@processing_acc_compilation = common dso_local global i32 0, align 4
@symbol_size = common dso_local global i32 0, align 4
@symbuf = common dso_local global %struct.external_nlist* null, align 8
@n_stabs = common dso_local global i32 0, align 4
@processing_gcc_compilation = common dso_local global i32 0, align 4
@N_TEXT = common dso_local global i8 0, align 1
@GCC_COMPILED_FLAG_SYMBOL = common dso_local global i32 0, align 4
@GCC2_COMPILED_FLAG_SYMBOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"__gnu_compiled\00", align 1
@N_SO = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"First symbol in segment of executable not a source symbol\00", align 1
@symnum = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@N_STAB = common dso_local global i8 0, align 1
@N_EXT = common dso_local global i8 0, align 1
@N_NBTEXT = common dso_local global i64 0, align 8
@last_source_start_addr = common dso_local global i64 0, align 8
@AUTO_DEMANGLING = common dso_local global i64 0, align 8
@GNU_DEMANGLING_STYLE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symtab*)* @read_ofile_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_ofile_symtab(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.partial_symtab*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.external_nlist*, align 8
  %5 = alloca %struct.internal_nlist, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.objfile*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.section_offsets*, align 8
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca i8*, align 8
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  store %struct.partial_symtab* %0, %struct.partial_symtab** %2, align 8
  %20 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %21 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %20, i32 0, i32 4
  %22 = load %struct.objfile*, %struct.objfile** %21, align 8
  store %struct.objfile* %22, %struct.objfile** %9, align 8
  %23 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %24 = call i32 @LDSYMOFF(%struct.partial_symtab* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %26 = call i32 @LDSYMLEN(%struct.partial_symtab* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %28 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %31 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %35 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %40 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %39, i32 0, i32 3
  %41 = load %struct.section_offsets*, %struct.section_offsets** %40, align 8
  store %struct.section_offsets* %41, %struct.section_offsets** %14, align 8
  %42 = load %struct.objfile*, %struct.objfile** %9, align 8
  store %struct.objfile* %42, %struct.objfile** @current_objfile, align 8
  store i32* null, i32** @subfile_stack, align 8
  %43 = load %struct.objfile*, %struct.objfile** %9, align 8
  %44 = call i32 @DBX_STRINGTAB(%struct.objfile* %43)
  store i32 %44, i32* @stringtab_global, align 4
  store i32* null, i32** @last_source_file, align 8
  %45 = load %struct.objfile*, %struct.objfile** %9, align 8
  %46 = getelementptr inbounds %struct.objfile, %struct.objfile* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %8, align 8
  %48 = load %struct.objfile*, %struct.objfile** %9, align 8
  %49 = getelementptr inbounds %struct.objfile, %struct.objfile* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** @symfile_bfd, align 8
  store i64 0, i64* @symbuf_idx, align 8
  store i64 0, i64* @symbuf_end, align 8
  store i64 0, i64* @symbuf_read, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* @symbuf_left, align 4
  %54 = load i32, i32* @processing_acc_compilation, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %131, label %56

56:                                               ; preds = %1
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @symbol_size, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %131

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @symbol_size, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @stabs_seek(i32 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @fill_symbuf(i32* %65)
  %67 = load %struct.external_nlist*, %struct.external_nlist** @symbuf, align 8
  %68 = load i64, i64* @symbuf_idx, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* @symbuf_idx, align 8
  %70 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %67, i64 %68
  store %struct.external_nlist* %70, %struct.external_nlist** %4, align 8
  %71 = load %struct.external_nlist*, %struct.external_nlist** %4, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = bitcast { i64, i32 }* %15 to i8*
  %74 = bitcast %struct.internal_nlist* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 12, i1 false)
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %76 = load i64, i64* %75, align 4
  %77 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @INTERNALIZE_SYMBOL(i64 %76, i32 %78, %struct.external_nlist* %71, i32* %72)
  %80 = load %struct.objfile*, %struct.objfile** %9, align 8
  %81 = load i32, i32* @n_stabs, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @n_stabs, align 4
  %83 = call i32 @OBJSTAT(%struct.objfile* %80, i32 %81)
  %84 = load %struct.objfile*, %struct.objfile** %9, align 8
  %85 = bitcast { i64, i32 }* %16 to i8*
  %86 = bitcast %struct.internal_nlist* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 12, i1 false)
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %88 = load i64, i64* %87, align 4
  %89 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @set_namestring(%struct.objfile* %84, i64 %88, i32 %90)
  store i8* %91, i8** %3, align 8
  store i32 0, i32* @processing_gcc_compilation, align 4
  %92 = getelementptr inbounds %struct.internal_nlist, %struct.internal_nlist* %5, i32 0, i32 0
  %93 = load i8, i8* %92, align 4
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @N_TEXT, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %60
  %99 = load i8*, i8** %3, align 8
  store i8* %99, i8** %17, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = load i32, i32* @GCC_COMPILED_FLAG_SYMBOL, align 4
  %102 = call i64 @DEPRECATED_STREQ(i8* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 1, i32* @processing_gcc_compilation, align 4
  br label %112

105:                                              ; preds = %98
  %106 = load i8*, i8** %3, align 8
  %107 = load i32, i32* @GCC2_COMPILED_FLAG_SYMBOL, align 4
  %108 = call i64 @DEPRECATED_STREQ(i8* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 2, i32* @processing_gcc_compilation, align 4
  br label %111

111:                                              ; preds = %110, %105
  br label %112

112:                                              ; preds = %111, %104
  %113 = load i8*, i8** %17, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = load i32*, i32** @symfile_bfd, align 8
  %118 = call signext i8 @bfd_get_symbol_leading_char(i32* %117)
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i8*, i8** %17, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %17, align 8
  br label %124

124:                                              ; preds = %121, %112
  %125 = load i8*, i8** %17, align 8
  %126 = call i64 @DEPRECATED_STREQN(i8* %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 14)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 2, i32* @processing_gcc_compilation, align 4
  br label %129

129:                                              ; preds = %128, %124
  br label %130

130:                                              ; preds = %129, %60
  br label %134

131:                                              ; preds = %56, %1
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @stabs_seek(i32 %132)
  store i32 0, i32* @processing_gcc_compilation, align 4
  br label %134

134:                                              ; preds = %131, %130
  %135 = load i64, i64* @symbuf_idx, align 8
  %136 = load i64, i64* @symbuf_end, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @fill_symbuf(i32* %139)
  br label %141

141:                                              ; preds = %138, %134
  %142 = load %struct.external_nlist*, %struct.external_nlist** @symbuf, align 8
  %143 = load i64, i64* @symbuf_idx, align 8
  %144 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %142, i64 %143
  store %struct.external_nlist* %144, %struct.external_nlist** %4, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = load %struct.external_nlist*, %struct.external_nlist** %4, align 8
  %147 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call zeroext i8 @bfd_h_get_8(i32* %145, i32 %148)
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* @N_SO, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %141
  %155 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %141
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @symbol_size, align 4
  %159 = sdiv i32 %157, %158
  store i32 %159, i32* %7, align 4
  store i32 0, i32* @symnum, align 4
  br label %160

160:                                              ; preds = %263, %156
  %161 = load i32, i32* @symnum, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %164, label %266

164:                                              ; preds = %160
  %165 = load i32, i32* @QUIT, align 4
  %166 = load i64, i64* @symbuf_idx, align 8
  %167 = load i64, i64* @symbuf_end, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32*, i32** %8, align 8
  %171 = call i32 @fill_symbuf(i32* %170)
  br label %172

172:                                              ; preds = %169, %164
  %173 = load %struct.external_nlist*, %struct.external_nlist** @symbuf, align 8
  %174 = load i64, i64* @symbuf_idx, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* @symbuf_idx, align 8
  %176 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %173, i64 %174
  store %struct.external_nlist* %176, %struct.external_nlist** %4, align 8
  %177 = load %struct.external_nlist*, %struct.external_nlist** %4, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = bitcast { i64, i32 }* %18 to i8*
  %180 = bitcast %struct.internal_nlist* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %179, i8* align 4 %180, i64 12, i1 false)
  %181 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %182 = load i64, i64* %181, align 4
  %183 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @INTERNALIZE_SYMBOL(i64 %182, i32 %184, %struct.external_nlist* %177, i32* %178)
  %186 = load %struct.objfile*, %struct.objfile** %9, align 8
  %187 = load i32, i32* @n_stabs, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* @n_stabs, align 4
  %189 = call i32 @OBJSTAT(%struct.objfile* %186, i32 %187)
  %190 = load i32*, i32** %8, align 8
  %191 = load %struct.external_nlist*, %struct.external_nlist** %4, align 8
  %192 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call zeroext i8 @bfd_h_get_8(i32* %190, i32 %193)
  store i8 %194, i8* %6, align 1
  %195 = load %struct.objfile*, %struct.objfile** %9, align 8
  %196 = bitcast { i64, i32 }* %19 to i8*
  %197 = bitcast %struct.internal_nlist* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %196, i8* align 4 %197, i64 12, i1 false)
  %198 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %199 = load i64, i64* %198, align 4
  %200 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @set_namestring(%struct.objfile* %195, i64 %199, i32 %201)
  store i8* %202, i8** %3, align 8
  %203 = load i8, i8* %6, align 1
  %204 = zext i8 %203 to i32
  %205 = load i8, i8* @N_STAB, align 1
  %206 = zext i8 %205 to i32
  %207 = and i32 %204, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %172
  %210 = load i8, i8* %6, align 1
  %211 = getelementptr inbounds %struct.internal_nlist, %struct.internal_nlist* %5, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.internal_nlist, %struct.internal_nlist* %5, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i8*, i8** %3, align 8
  %216 = load %struct.section_offsets*, %struct.section_offsets** %14, align 8
  %217 = load %struct.objfile*, %struct.objfile** %9, align 8
  %218 = call i32 @process_one_symbol(i8 zeroext %210, i32 %212, i32 %214, i8* %215, %struct.section_offsets* %216, %struct.objfile* %217)
  br label %262

219:                                              ; preds = %172
  %220 = load i8, i8* %6, align 1
  %221 = zext i8 %220 to i32
  %222 = load i8, i8* @N_TEXT, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %219
  %226 = load i8*, i8** %3, align 8
  %227 = load i32, i32* @GCC_COMPILED_FLAG_SYMBOL, align 4
  %228 = call i64 @DEPRECATED_STREQ(i8* %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  store i32 1, i32* @processing_gcc_compilation, align 4
  br label %238

231:                                              ; preds = %225
  %232 = load i8*, i8** %3, align 8
  %233 = load i32, i32* @GCC2_COMPILED_FLAG_SYMBOL, align 4
  %234 = call i64 @DEPRECATED_STREQ(i8* %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  store i32 2, i32* @processing_gcc_compilation, align 4
  br label %237

237:                                              ; preds = %236, %231
  br label %238

238:                                              ; preds = %237, %230
  br label %261

239:                                              ; preds = %219
  %240 = load i8, i8* %6, align 1
  %241 = zext i8 %240 to i32
  %242 = load i8, i8* @N_EXT, align 1
  %243 = zext i8 %242 to i32
  %244 = and i32 %241, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %259, label %246

246:                                              ; preds = %239
  %247 = load i8, i8* %6, align 1
  %248 = zext i8 %247 to i32
  %249 = load i8, i8* @N_TEXT, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %259, label %252

252:                                              ; preds = %246
  %253 = load i8, i8* %6, align 1
  %254 = zext i8 %253 to i32
  %255 = load i64, i64* @N_NBTEXT, align 8
  %256 = trunc i64 %255 to i8
  %257 = zext i8 %256 to i32
  %258 = icmp eq i32 %254, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %252, %246, %239
  br label %260

260:                                              ; preds = %259, %252
  br label %261

261:                                              ; preds = %260, %238
  br label %262

262:                                              ; preds = %261, %209
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* @symnum, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* @symnum, align 4
  br label %160

266:                                              ; preds = %160
  store %struct.objfile* null, %struct.objfile** @current_objfile, align 8
  %267 = load i64, i64* @last_source_start_addr, align 8
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %266
  %270 = load i64, i64* %12, align 8
  store i64 %270, i64* @last_source_start_addr, align 8
  br label %271

271:                                              ; preds = %269, %266
  %272 = load i64, i64* @last_source_start_addr, align 8
  %273 = load i64, i64* %12, align 8
  %274 = icmp sgt i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = load i64, i64* %12, align 8
  store i64 %276, i64* @last_source_start_addr, align 8
  br label %277

277:                                              ; preds = %275, %271
  %278 = load i64, i64* %12, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %278, %280
  %282 = load %struct.objfile*, %struct.objfile** %9, align 8
  %283 = load %struct.objfile*, %struct.objfile** %9, align 8
  %284 = call i32 @SECT_OFF_TEXT(%struct.objfile* %283)
  %285 = call i32 @end_symtab(i64 %281, %struct.objfile* %282, i32 %284)
  %286 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %287 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 4
  %288 = call i32 (...) @end_stabs()
  ret void
}

declare dso_local i32 @LDSYMOFF(%struct.partial_symtab*) #1

declare dso_local i32 @LDSYMLEN(%struct.partial_symtab*) #1

declare dso_local i32 @DBX_STRINGTAB(%struct.objfile*) #1

declare dso_local i32 @stabs_seek(i32) #1

declare dso_local i32 @fill_symbuf(i32*) #1

declare dso_local i32 @INTERNALIZE_SYMBOL(i64, i32, %struct.external_nlist*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @OBJSTAT(%struct.objfile*, i32) #1

declare dso_local i8* @set_namestring(%struct.objfile*, i64, i32) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i32) #1

declare dso_local signext i8 @bfd_get_symbol_leading_char(i32*) #1

declare dso_local i64 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local zeroext i8 @bfd_h_get_8(i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @process_one_symbol(i8 zeroext, i32, i32, i8*, %struct.section_offsets*, %struct.objfile*) #1

declare dso_local i32 @end_symtab(i64, %struct.objfile*, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i32 @end_stabs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
