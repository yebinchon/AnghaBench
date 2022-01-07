; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_decode_locdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_decode_locdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_block = type { i32, i8* }
%struct.dwarf2_cu = type { %struct.comp_unit_head, %struct.objfile* }
%struct.comp_unit_head = type { i32 }
%struct.objfile = type { i32 }

@isreg = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unsupported stack op: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwarf_block*, %struct.dwarf2_cu*)* @decode_locdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_locdesc(%struct.dwarf_block* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwarf_block*, align 8
  %5 = alloca %struct.dwarf2_cu*, align 8
  %6 = alloca %struct.objfile*, align 8
  %7 = alloca %struct.comp_unit_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [64 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.dwarf_block* %0, %struct.dwarf_block** %4, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  %16 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %17 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %16, i32 0, i32 1
  %18 = load %struct.objfile*, %struct.objfile** %17, align 8
  store %struct.objfile* %18, %struct.objfile** %6, align 8
  %19 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %20 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %19, i32 0, i32 0
  store %struct.comp_unit_head* %20, %struct.comp_unit_head** %7, align 8
  %21 = load %struct.dwarf_block*, %struct.dwarf_block** %4, align 8
  %22 = getelementptr inbounds %struct.dwarf_block, %struct.dwarf_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.dwarf_block*, %struct.dwarf_block** %4, align 8
  %25 = getelementptr inbounds %struct.dwarf_block, %struct.dwarf_block* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %28
  store i32 0, i32* %29, align 4
  store i32 0, i32* @isreg, align 4
  br label %30

30:                                               ; preds = %296, %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %297

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %15, align 1
  %41 = load i8, i8* %15, align 1
  %42 = zext i8 %41 to i32
  switch i32 %42, label %288 [
    i32 195, label %43
    i32 194, label %43
    i32 183, label %43
    i32 172, label %43
    i32 169, label %43
    i32 168, label %43
    i32 167, label %43
    i32 166, label %43
    i32 165, label %43
    i32 164, label %43
    i32 193, label %43
    i32 192, label %43
    i32 191, label %43
    i32 190, label %43
    i32 189, label %43
    i32 188, label %43
    i32 187, label %43
    i32 186, label %43
    i32 185, label %43
    i32 184, label %43
    i32 182, label %43
    i32 181, label %43
    i32 180, label %43
    i32 179, label %43
    i32 178, label %43
    i32 177, label %43
    i32 176, label %43
    i32 175, label %43
    i32 174, label %43
    i32 173, label %43
    i32 171, label %43
    i32 170, label %43
    i32 160, label %51
    i32 159, label %51
    i32 148, label %51
    i32 137, label %51
    i32 134, label %51
    i32 133, label %51
    i32 132, label %51
    i32 131, label %51
    i32 130, label %51
    i32 129, label %51
    i32 158, label %51
    i32 157, label %51
    i32 156, label %51
    i32 155, label %51
    i32 154, label %51
    i32 153, label %51
    i32 152, label %51
    i32 151, label %51
    i32 150, label %51
    i32 149, label %51
    i32 147, label %51
    i32 146, label %51
    i32 145, label %51
    i32 144, label %51
    i32 143, label %51
    i32 142, label %51
    i32 141, label %51
    i32 140, label %51
    i32 139, label %51
    i32 138, label %51
    i32 136, label %51
    i32 135, label %51
    i32 128, label %65
    i32 206, label %86
    i32 204, label %103
    i32 205, label %118
    i32 202, label %133
    i32 203, label %148
    i32 200, label %163
    i32 201, label %178
    i32 198, label %193
    i32 199, label %207
    i32 196, label %220
    i32 162, label %231
    i32 161, label %244
    i32 163, label %260
    i32 197, label %273
    i32 208, label %280
    i32 207, label %287
  ]

43:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34
  %44 = load i8, i8* %15, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %45, 195
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %49
  store i32 %46, i32* %50, align 4
  br label %296

51:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34
  store i32 1, i32* @isreg, align 4
  %52 = load i8, i8* %15, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %53, 160
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = call i32 (...) @dwarf2_complex_location_expr_complaint()
  br label %64

64:                                               ; preds = %62, %51
  br label %296

65:                                               ; preds = %34
  store i32 1, i32* @isreg, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = call i8* @read_unsigned_leb128(i32* null, i8* %69, i32* %13)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %78
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %65
  %84 = call i32 (...) @dwarf2_complex_location_expr_complaint()
  br label %85

85:                                               ; preds = %83, %65
  br label %296

86:                                               ; preds = %34
  %87 = load %struct.objfile*, %struct.objfile** %6, align 8
  %88 = getelementptr inbounds %struct.objfile, %struct.objfile* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %95 = call i32 @read_address(i32 %89, i8* %93, %struct.dwarf2_cu* %94, i32* %13)
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %98
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %296

103:                                              ; preds = %34
  %104 = load %struct.objfile*, %struct.objfile** %6, align 8
  %105 = getelementptr inbounds %struct.objfile, %struct.objfile* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = call i32 @read_1_byte(i32 %106, i8* %110)
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %114
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %296

118:                                              ; preds = %34
  %119 = load %struct.objfile*, %struct.objfile** %6, align 8
  %120 = getelementptr inbounds %struct.objfile, %struct.objfile* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = call i32 @read_1_signed_byte(i32 %121, i8* %125)
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %129
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %296

133:                                              ; preds = %34
  %134 = load %struct.objfile*, %struct.objfile** %6, align 8
  %135 = getelementptr inbounds %struct.objfile, %struct.objfile* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %10, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = call i32 @read_2_bytes(i32 %136, i8* %140)
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %144
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 2
  store i32 %147, i32* %8, align 4
  br label %296

148:                                              ; preds = %34
  %149 = load %struct.objfile*, %struct.objfile** %6, align 8
  %150 = getelementptr inbounds %struct.objfile, %struct.objfile* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i8*, i8** %10, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = call i32 @read_2_signed_bytes(i32 %151, i8* %155)
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %159
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 2
  store i32 %162, i32* %8, align 4
  br label %296

163:                                              ; preds = %34
  %164 = load %struct.objfile*, %struct.objfile** %6, align 8
  %165 = getelementptr inbounds %struct.objfile, %struct.objfile* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i8*, i8** %10, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = call i32 @read_4_bytes(i32 %166, i8* %170)
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %174
  store i32 %171, i32* %175, align 4
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 4
  store i32 %177, i32* %8, align 4
  br label %296

178:                                              ; preds = %34
  %179 = load %struct.objfile*, %struct.objfile** %6, align 8
  %180 = getelementptr inbounds %struct.objfile, %struct.objfile* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = call i32 @read_4_signed_bytes(i32 %181, i8* %185)
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %189
  store i32 %186, i32* %190, align 4
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 4
  store i32 %192, i32* %8, align 4
  br label %296

193:                                              ; preds = %34
  %194 = load i8*, i8** %10, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = call i8* @read_unsigned_leb128(i32* null, i8* %197, i32* %13)
  %199 = ptrtoint i8* %198 to i32
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %202
  store i32 %199, i32* %203, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %8, align 4
  %206 = add i32 %205, %204
  store i32 %206, i32* %8, align 4
  br label %296

207:                                              ; preds = %34
  %208 = load i8*, i8** %10, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = call i32 @read_signed_leb128(i32* null, i8* %211, i32* %13)
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %215
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* %8, align 4
  %219 = add i32 %218, %217
  store i32 %219, i32* %8, align 4
  br label %296

220:                                              ; preds = %34
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %227
  store i32 %224, i32* %228, align 4
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %296

231:                                              ; preds = %34
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %12, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %240, %235
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %12, align 4
  br label %296

244:                                              ; preds = %34
  %245 = load i8*, i8** %10, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = call i8* @read_unsigned_leb128(i32* null, i8* %248, i32* %13)
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr i8, i8* %249, i64 %254
  %256 = ptrtoint i8* %255 to i32
  store i32 %256, i32* %252, align 4
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %8, align 4
  %259 = add i32 %258, %257
  store i32 %259, i32* %8, align 4
  br label %296

260:                                              ; preds = %34
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %12, align 4
  %266 = sub nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = sub i32 %269, %264
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %12, align 4
  br label %296

273:                                              ; preds = %34
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %9, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = call i32 (...) @dwarf2_complex_location_expr_complaint()
  br label %279

279:                                              ; preds = %277, %273
  br label %296

280:                                              ; preds = %34
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* %9, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = call i32 (...) @dwarf2_complex_location_expr_complaint()
  br label %286

286:                                              ; preds = %284, %280
  br label %296

287:                                              ; preds = %34
  br label %296

288:                                              ; preds = %34
  %289 = load i8, i8* %15, align 1
  %290 = call i32 @dwarf_stack_op_name(i8 zeroext %289)
  %291 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %3, align 4
  br label %302

296:                                              ; preds = %287, %286, %279, %260, %244, %231, %220, %207, %193, %178, %163, %148, %133, %118, %103, %86, %85, %64, %43
  br label %30

297:                                              ; preds = %30
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %297, %288
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i32 @dwarf2_complex_location_expr_complaint(...) #1

declare dso_local i8* @read_unsigned_leb128(i32*, i8*, i32*) #1

declare dso_local i32 @read_address(i32, i8*, %struct.dwarf2_cu*, i32*) #1

declare dso_local i32 @read_1_byte(i32, i8*) #1

declare dso_local i32 @read_1_signed_byte(i32, i8*) #1

declare dso_local i32 @read_2_bytes(i32, i8*) #1

declare dso_local i32 @read_2_signed_bytes(i32, i8*) #1

declare dso_local i32 @read_4_bytes(i32, i8*) #1

declare dso_local i32 @read_4_signed_bytes(i32, i8*) #1

declare dso_local i32 @read_signed_leb128(i32*, i8*, i32*) #1

declare dso_local i32 @complaint(i32*, i8*, i32) #1

declare dso_local i32 @dwarf_stack_op_name(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
