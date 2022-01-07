; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf_decode_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf_decode_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_header = type { i8*, i8*, i32, i32, i8**, i8, i8, i8, i32*, %struct.file_entry*, i64 }
%struct.file_entry = type { i32, i32 }
%struct.dwarf2_cu = type { %struct.objfile* }
%struct.objfile = type { i32 }

@current_subfile = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mangled .debug_line section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line_header*, i8*, i32*, %struct.dwarf2_cu*)* @dwarf_decode_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf_decode_lines(%struct.line_header* %0, i8* %1, i32* %2, %struct.dwarf2_cu* %3) #0 {
  %5 = alloca %struct.line_header*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dwarf2_cu*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca %struct.objfile*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.file_entry*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.file_entry*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  store %struct.line_header* %0, %struct.line_header** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.dwarf2_cu* %3, %struct.dwarf2_cu** %8, align 8
  %33 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %34 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %33, i32 0, i32 0
  %35 = load %struct.objfile*, %struct.objfile** %34, align 8
  store %struct.objfile* %35, %struct.objfile** %16, align 8
  %36 = load %struct.objfile*, %struct.objfile** %16, align 8
  %37 = getelementptr inbounds %struct.objfile, %struct.objfile* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.objfile*, %struct.objfile** %16, align 8
  %40 = call i32 @SECT_OFF_TEXT(%struct.objfile* %39)
  %41 = call zeroext i8 @ANOFFSET(i32 %38, i32 %40)
  store i8 %41, i8* %15, align 1
  %42 = load %struct.line_header*, %struct.line_header** %5, align 8
  %43 = getelementptr inbounds %struct.line_header, %struct.line_header* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %9, align 8
  %45 = load %struct.line_header*, %struct.line_header** %5, align 8
  %46 = getelementptr inbounds %struct.line_header, %struct.line_header* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %375, %4
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %52, label %376

52:                                               ; preds = %48
  store i8 0, i8* %17, align 1
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %53 = load %struct.line_header*, %struct.line_header** %5, align 8
  %54 = getelementptr inbounds %struct.line_header, %struct.line_header* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %56 = load %struct.line_header*, %struct.line_header** %5, align 8
  %57 = getelementptr inbounds %struct.line_header, %struct.line_header* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp uge i32 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %52
  %62 = load %struct.line_header*, %struct.line_header** %5, align 8
  %63 = getelementptr inbounds %struct.line_header, %struct.line_header* %62, i32 0, i32 9
  %64 = load %struct.file_entry*, %struct.file_entry** %63, align 8
  %65 = load i32, i32* %18, align 4
  %66 = sub i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %64, i64 %67
  store %struct.file_entry* %68, %struct.file_entry** %24, align 8
  %69 = load %struct.file_entry*, %struct.file_entry** %24, align 8
  %70 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %61
  %74 = load %struct.line_header*, %struct.line_header** %5, align 8
  %75 = getelementptr inbounds %struct.line_header, %struct.line_header* %74, i32 0, i32 4
  %76 = load i8**, i8*** %75, align 8
  %77 = load %struct.file_entry*, %struct.file_entry** %24, align 8
  %78 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %76, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %25, align 8
  br label %86

84:                                               ; preds = %61
  %85 = load i8*, i8** %6, align 8
  store i8* %85, i8** %25, align 8
  br label %86

86:                                               ; preds = %84, %73
  %87 = load %struct.file_entry*, %struct.file_entry** %24, align 8
  %88 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %25, align 8
  %91 = call i32 @dwarf2_start_subfile(i32 %89, i8* %90)
  br label %92

92:                                               ; preds = %86, %52
  br label %93

93:                                               ; preds = %374, %92
  %94 = load i32, i32* %23, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br i1 %96, label %97, label %375

97:                                               ; preds = %93
  %98 = load i32*, i32** %7, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call zeroext i8 @read_1_byte(i32* %98, i8* %99)
  store i8 %100, i8* %12, align 1
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8* %102, i8** %9, align 8
  %103 = load i8, i8* %12, align 1
  %104 = zext i8 %103 to i32
  %105 = load %struct.line_header*, %struct.line_header** %5, align 8
  %106 = getelementptr inbounds %struct.line_header, %struct.line_header* %105, i32 0, i32 5
  %107 = load i8, i8* %106, align 8
  %108 = zext i8 %107 to i32
  %109 = icmp sge i32 %104, %108
  br i1 %109, label %110, label %157

110:                                              ; preds = %97
  %111 = load i8, i8* %12, align 1
  %112 = zext i8 %111 to i32
  %113 = load %struct.line_header*, %struct.line_header** %5, align 8
  %114 = getelementptr inbounds %struct.line_header, %struct.line_header* %113, i32 0, i32 5
  %115 = load i8, i8* %114, align 8
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 %112, %116
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %14, align 1
  %119 = load i8, i8* %14, align 1
  %120 = zext i8 %119 to i32
  %121 = load %struct.line_header*, %struct.line_header** %5, align 8
  %122 = getelementptr inbounds %struct.line_header, %struct.line_header* %121, i32 0, i32 6
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = sdiv i32 %120, %124
  %126 = load %struct.line_header*, %struct.line_header** %5, align 8
  %127 = getelementptr inbounds %struct.line_header, %struct.line_header* %126, i32 0, i32 7
  %128 = load i8, i8* %127, align 2
  %129 = zext i8 %128 to i32
  %130 = mul nsw i32 %125, %129
  %131 = load i8, i8* %17, align 1
  %132 = zext i8 %131 to i32
  %133 = add nsw i32 %132, %130
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %17, align 1
  %135 = load %struct.line_header*, %struct.line_header** %5, align 8
  %136 = getelementptr inbounds %struct.line_header, %struct.line_header* %135, i32 0, i32 10
  %137 = load i64, i64* %136, align 8
  %138 = load i8, i8* %14, align 1
  %139 = zext i8 %138 to i32
  %140 = load %struct.line_header*, %struct.line_header** %5, align 8
  %141 = getelementptr inbounds %struct.line_header, %struct.line_header* %140, i32 0, i32 6
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = srem i32 %139, %143
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %137, %145
  %147 = load i32, i32* %19, align 4
  %148 = zext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* @current_subfile, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load i8, i8* %17, align 1
  %154 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %155 = call zeroext i8 @check_cu_functions(i8 zeroext %153, %struct.dwarf2_cu* %154)
  %156 = call i32 @record_line(i32 %151, i32 %152, i8 zeroext %155)
  store i32 1, i32* %22, align 4
  br label %374

157:                                              ; preds = %97
  %158 = load i8, i8* %12, align 1
  %159 = zext i8 %158 to i32
  switch i32 %159, label %350 [
    i32 133, label %160
    i32 134, label %230
    i32 136, label %237
    i32 137, label %255
    i32 128, label %265
    i32 129, label %304
    i32 131, label %313
    i32 130, label %318
    i32 135, label %319
    i32 132, label %339
  ]

160:                                              ; preds = %157
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  store i8* %162, i8** %9, align 8
  %163 = load i32*, i32** %7, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = call zeroext i8 @read_1_byte(i32* %163, i8* %164)
  store i8 %165, i8* %13, align 1
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  store i8* %167, i8** %9, align 8
  %168 = load i8, i8* %13, align 1
  %169 = zext i8 %168 to i32
  switch i32 %169, label %227 [
    i32 139, label %170
    i32 138, label %174
    i32 140, label %189
  ]

170:                                              ; preds = %160
  store i32 1, i32* %23, align 4
  %171 = load i32, i32* @current_subfile, align 4
  %172 = load i8, i8* %17, align 1
  %173 = call i32 @record_line(i32 %171, i32 0, i8 zeroext %172)
  br label %229

174:                                              ; preds = %160
  %175 = load i32*, i32** %7, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %178 = call zeroext i8 @read_address(i32* %175, i8* %176, %struct.dwarf2_cu* %177, i32* %11)
  store i8 %178, i8* %17, align 1
  %179 = load i32, i32* %11, align 4
  %180 = load i8*, i8** %9, align 8
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8* %182, i8** %9, align 8
  %183 = load i8, i8* %15, align 1
  %184 = zext i8 %183 to i32
  %185 = load i8, i8* %17, align 1
  %186 = zext i8 %185 to i32
  %187 = add nsw i32 %186, %184
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %17, align 1
  br label %229

189:                                              ; preds = %160
  %190 = load i32*, i32** %7, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = call i8* @read_string(i32* %190, i8* %191, i32* %11)
  store i8* %192, i8** %26, align 8
  %193 = load i32, i32* %11, align 4
  %194 = load i8*, i8** %9, align 8
  %195 = zext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8* %196, i8** %9, align 8
  %197 = load i32*, i32** %7, align 8
  %198 = load i8*, i8** %9, align 8
  %199 = call zeroext i8 @read_unsigned_leb128(i32* %197, i8* %198, i32* %11)
  %200 = zext i8 %199 to i32
  store i32 %200, i32* %27, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i8*, i8** %9, align 8
  %203 = zext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %9, align 8
  %205 = load i32*, i32** %7, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = call zeroext i8 @read_unsigned_leb128(i32* %205, i8* %206, i32* %11)
  %208 = zext i8 %207 to i32
  store i32 %208, i32* %28, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i8*, i8** %9, align 8
  %211 = zext i32 %209 to i64
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8* %212, i8** %9, align 8
  %213 = load i32*, i32** %7, align 8
  %214 = load i8*, i8** %9, align 8
  %215 = call zeroext i8 @read_unsigned_leb128(i32* %213, i8* %214, i32* %11)
  %216 = zext i8 %215 to i32
  store i32 %216, i32* %29, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load i8*, i8** %9, align 8
  %219 = zext i32 %217 to i64
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8* %220, i8** %9, align 8
  %221 = load %struct.line_header*, %struct.line_header** %5, align 8
  %222 = load i8*, i8** %26, align 8
  %223 = load i32, i32* %27, align 4
  %224 = load i32, i32* %28, align 4
  %225 = load i32, i32* %29, align 4
  %226 = call i32 @add_file_name(%struct.line_header* %221, i8* %222, i32 %223, i32 %224, i32 %225)
  br label %229

227:                                              ; preds = %160
  %228 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %376

229:                                              ; preds = %189, %174, %170
  br label %373

230:                                              ; preds = %157
  %231 = load i32, i32* @current_subfile, align 4
  %232 = load i32, i32* %19, align 4
  %233 = load i8, i8* %17, align 1
  %234 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %235 = call zeroext i8 @check_cu_functions(i8 zeroext %233, %struct.dwarf2_cu* %234)
  %236 = call i32 @record_line(i32 %231, i32 %232, i8 zeroext %235)
  store i32 0, i32* %22, align 4
  br label %373

237:                                              ; preds = %157
  %238 = load %struct.line_header*, %struct.line_header** %5, align 8
  %239 = getelementptr inbounds %struct.line_header, %struct.line_header* %238, i32 0, i32 7
  %240 = load i8, i8* %239, align 2
  %241 = zext i8 %240 to i32
  %242 = load i32*, i32** %7, align 8
  %243 = load i8*, i8** %9, align 8
  %244 = call zeroext i8 @read_unsigned_leb128(i32* %242, i8* %243, i32* %11)
  %245 = zext i8 %244 to i32
  %246 = mul nsw i32 %241, %245
  %247 = load i8, i8* %17, align 1
  %248 = zext i8 %247 to i32
  %249 = add nsw i32 %248, %246
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %17, align 1
  %251 = load i32, i32* %11, align 4
  %252 = load i8*, i8** %9, align 8
  %253 = zext i32 %251 to i64
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  store i8* %254, i8** %9, align 8
  br label %373

255:                                              ; preds = %157
  %256 = load i32*, i32** %7, align 8
  %257 = load i8*, i8** %9, align 8
  %258 = call i32 @read_signed_leb128(i32* %256, i8* %257, i32* %11)
  %259 = load i32, i32* %19, align 4
  %260 = add i32 %259, %258
  store i32 %260, i32* %19, align 4
  %261 = load i32, i32* %11, align 4
  %262 = load i8*, i8** %9, align 8
  %263 = zext i32 %261 to i64
  %264 = getelementptr inbounds i8, i8* %262, i64 %263
  store i8* %264, i8** %9, align 8
  br label %373

265:                                              ; preds = %157
  %266 = load i32*, i32** %7, align 8
  %267 = load i8*, i8** %9, align 8
  %268 = call zeroext i8 @read_unsigned_leb128(i32* %266, i8* %267, i32* %11)
  %269 = zext i8 %268 to i32
  store i32 %269, i32* %18, align 4
  %270 = load i32, i32* %11, align 4
  %271 = load i8*, i8** %9, align 8
  %272 = zext i32 %270 to i64
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  store i8* %273, i8** %9, align 8
  %274 = load %struct.line_header*, %struct.line_header** %5, align 8
  %275 = getelementptr inbounds %struct.line_header, %struct.line_header* %274, i32 0, i32 9
  %276 = load %struct.file_entry*, %struct.file_entry** %275, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sub i32 %277, 1
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %276, i64 %279
  store %struct.file_entry* %280, %struct.file_entry** %30, align 8
  %281 = load %struct.file_entry*, %struct.file_entry** %30, align 8
  %282 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %265
  %286 = load %struct.line_header*, %struct.line_header** %5, align 8
  %287 = getelementptr inbounds %struct.line_header, %struct.line_header* %286, i32 0, i32 4
  %288 = load i8**, i8*** %287, align 8
  %289 = load %struct.file_entry*, %struct.file_entry** %30, align 8
  %290 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %288, i64 %293
  %295 = load i8*, i8** %294, align 8
  store i8* %295, i8** %31, align 8
  br label %298

296:                                              ; preds = %265
  %297 = load i8*, i8** %6, align 8
  store i8* %297, i8** %31, align 8
  br label %298

298:                                              ; preds = %296, %285
  %299 = load %struct.file_entry*, %struct.file_entry** %30, align 8
  %300 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i8*, i8** %31, align 8
  %303 = call i32 @dwarf2_start_subfile(i32 %301, i8* %302)
  br label %373

304:                                              ; preds = %157
  %305 = load i32*, i32** %7, align 8
  %306 = load i8*, i8** %9, align 8
  %307 = call zeroext i8 @read_unsigned_leb128(i32* %305, i8* %306, i32* %11)
  %308 = zext i8 %307 to i32
  store i32 %308, i32* %20, align 4
  %309 = load i32, i32* %11, align 4
  %310 = load i8*, i8** %9, align 8
  %311 = zext i32 %309 to i64
  %312 = getelementptr inbounds i8, i8* %310, i64 %311
  store i8* %312, i8** %9, align 8
  br label %373

313:                                              ; preds = %157
  %314 = load i32, i32* %21, align 4
  %315 = icmp ne i32 %314, 0
  %316 = xor i1 %315, true
  %317 = zext i1 %316 to i32
  store i32 %317, i32* %21, align 4
  br label %373

318:                                              ; preds = %157
  store i32 1, i32* %22, align 4
  br label %373

319:                                              ; preds = %157
  %320 = load %struct.line_header*, %struct.line_header** %5, align 8
  %321 = getelementptr inbounds %struct.line_header, %struct.line_header* %320, i32 0, i32 7
  %322 = load i8, i8* %321, align 2
  %323 = zext i8 %322 to i32
  %324 = load %struct.line_header*, %struct.line_header** %5, align 8
  %325 = getelementptr inbounds %struct.line_header, %struct.line_header* %324, i32 0, i32 5
  %326 = load i8, i8* %325, align 8
  %327 = zext i8 %326 to i32
  %328 = sub nsw i32 255, %327
  %329 = load %struct.line_header*, %struct.line_header** %5, align 8
  %330 = getelementptr inbounds %struct.line_header, %struct.line_header* %329, i32 0, i32 6
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = sdiv i32 %328, %332
  %334 = mul nsw i32 %323, %333
  %335 = load i8, i8* %17, align 1
  %336 = zext i8 %335 to i32
  %337 = add nsw i32 %336, %334
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %17, align 1
  br label %373

339:                                              ; preds = %157
  %340 = load i32*, i32** %7, align 8
  %341 = load i8*, i8** %9, align 8
  %342 = call zeroext i8 @read_2_bytes(i32* %340, i8* %341)
  %343 = zext i8 %342 to i32
  %344 = load i8, i8* %17, align 1
  %345 = zext i8 %344 to i32
  %346 = add nsw i32 %345, %343
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %17, align 1
  %348 = load i8*, i8** %9, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 2
  store i8* %349, i8** %9, align 8
  br label %373

350:                                              ; preds = %157
  store i32 0, i32* %32, align 4
  br label %351

351:                                              ; preds = %369, %350
  %352 = load i32, i32* %32, align 4
  %353 = load %struct.line_header*, %struct.line_header** %5, align 8
  %354 = getelementptr inbounds %struct.line_header, %struct.line_header* %353, i32 0, i32 8
  %355 = load i32*, i32** %354, align 8
  %356 = load i8, i8* %12, align 1
  %357 = zext i8 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = icmp slt i32 %352, %359
  br i1 %360, label %361, label %372

361:                                              ; preds = %351
  %362 = load i32*, i32** %7, align 8
  %363 = load i8*, i8** %9, align 8
  %364 = call zeroext i8 @read_unsigned_leb128(i32* %362, i8* %363, i32* %11)
  %365 = load i32, i32* %11, align 4
  %366 = load i8*, i8** %9, align 8
  %367 = zext i32 %365 to i64
  %368 = getelementptr inbounds i8, i8* %366, i64 %367
  store i8* %368, i8** %9, align 8
  br label %369

369:                                              ; preds = %361
  %370 = load i32, i32* %32, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %32, align 4
  br label %351

372:                                              ; preds = %351
  br label %373

373:                                              ; preds = %372, %339, %319, %318, %313, %304, %298, %255, %237, %230, %229
  br label %374

374:                                              ; preds = %373, %110
  br label %93

375:                                              ; preds = %93
  br label %48

376:                                              ; preds = %227, %48
  ret void
}

declare dso_local zeroext i8 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i32 @dwarf2_start_subfile(i32, i8*) #1

declare dso_local zeroext i8 @read_1_byte(i32*, i8*) #1

declare dso_local i32 @record_line(i32, i32, i8 zeroext) #1

declare dso_local zeroext i8 @check_cu_functions(i8 zeroext, %struct.dwarf2_cu*) #1

declare dso_local zeroext i8 @read_address(i32*, i8*, %struct.dwarf2_cu*, i32*) #1

declare dso_local i8* @read_string(i32*, i8*, i32*) #1

declare dso_local zeroext i8 @read_unsigned_leb128(i32*, i8*, i32*) #1

declare dso_local i32 @add_file_name(%struct.line_header*, i8*, i32, i32, i32) #1

declare dso_local i32 @complaint(i32*, i8*) #1

declare dso_local i32 @read_signed_leb128(i32*, i8*, i32*) #1

declare dso_local zeroext i8 @read_2_bytes(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
