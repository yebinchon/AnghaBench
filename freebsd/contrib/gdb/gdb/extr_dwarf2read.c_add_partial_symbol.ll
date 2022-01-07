; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_partial_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_partial_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_die_info = type { i8*, i32, i32, i32*, i32, i32, i64 }
%struct.dwarf2_cu = type { i64, %struct.objfile* }
%struct.objfile = type { i32, i32, i32 }
%struct.partial_symbol = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_BLOCK = common dso_local global i32 0, align 4
@LOC_STATIC = common dso_local global i32 0, align 4
@LOC_TYPEDEF = common dso_local global i32 0, align 4
@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@language_cplus = common dso_local global i64 0, align 8
@LOC_CONST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_die_info*, %struct.dwarf2_cu*, i8*)* @add_partial_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_partial_symbol(%struct.partial_die_info* %0, %struct.dwarf2_cu* %1, i8* %2) #0 {
  %4 = alloca %struct.partial_die_info*, align 8
  %5 = alloca %struct.dwarf2_cu*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.objfile*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.partial_symbol*, align 8
  %11 = alloca i64, align 8
  store %struct.partial_die_info* %0, %struct.partial_die_info** %4, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %13 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %12, i32 0, i32 1
  %14 = load %struct.objfile*, %struct.objfile** %13, align 8
  store %struct.objfile* %14, %struct.objfile** %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %16 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  store %struct.partial_symbol* null, %struct.partial_symbol** %10, align 8
  %18 = load %struct.objfile*, %struct.objfile** %7, align 8
  %19 = getelementptr inbounds %struct.objfile, %struct.objfile* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.objfile*, %struct.objfile** %7, align 8
  %22 = call i32 @SECT_OFF_TEXT(%struct.objfile* %21)
  %23 = call i64 @ANOFFSET(i32 %20, i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %25 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @pdi_needs_namespace(i32 %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %3
  %31 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %32 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = add nsw i64 %34, 2
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = add nsw i64 %35, %37
  %39 = add nsw i64 %38, 1
  %40 = call i8* @alloca(i64 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strcpy(i8* %41, i8* %42)
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strcat(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %48 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcat(i8* %46, i8* %49)
  br label %51

51:                                               ; preds = %30, %3
  %52 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %53 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %254 [
    i32 132, label %55
    i32 128, label %97
    i32 130, label %168
    i32 137, label %168
    i32 131, label %168
    i32 136, label %181
    i32 133, label %181
    i32 129, label %181
    i32 135, label %181
    i32 134, label %230
  ]

55:                                               ; preds = %51
  %56 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %57 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = load i32, i32* @VAR_DOMAIN, align 4
  %65 = load i32, i32* @LOC_BLOCK, align 4
  %66 = load %struct.objfile*, %struct.objfile** %7, align 8
  %67 = getelementptr inbounds %struct.objfile, %struct.objfile* %66, i32 0, i32 1
  %68 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %69 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %74 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.objfile*, %struct.objfile** %7, align 8
  %77 = call %struct.partial_symbol* @add_psymbol_to_list(i8* %61, i64 %63, i32 %64, i32 %65, i32* %67, i32 0, i64 %72, i64 %75, %struct.objfile* %76)
  store %struct.partial_symbol* %77, %struct.partial_symbol** %10, align 8
  br label %96

78:                                               ; preds = %55
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @strlen(i8* %80)
  %82 = load i32, i32* @VAR_DOMAIN, align 4
  %83 = load i32, i32* @LOC_BLOCK, align 4
  %84 = load %struct.objfile*, %struct.objfile** %7, align 8
  %85 = getelementptr inbounds %struct.objfile, %struct.objfile* %84, i32 0, i32 0
  %86 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %87 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = add nsw i64 %88, %89
  %91 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %92 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.objfile*, %struct.objfile** %7, align 8
  %95 = call %struct.partial_symbol* @add_psymbol_to_list(i8* %79, i64 %81, i32 %82, i32 %83, i32* %85, i32 0, i64 %90, i64 %93, %struct.objfile* %94)
  store %struct.partial_symbol* %95, %struct.partial_symbol** %10, align 8
  br label %96

96:                                               ; preds = %78, %60
  br label %255

97:                                               ; preds = %51
  %98 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %99 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %140

102:                                              ; preds = %97
  %103 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %104 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %109 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %112 = call i64 @decode_locdesc(i32* %110, %struct.dwarf2_cu* %111)
  store i64 %112, i64* %8, align 8
  br label %113

113:                                              ; preds = %107, %102
  %114 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %115 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %120 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %118, %113
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = call i64 @strlen(i8* %125)
  %127 = load i32, i32* @VAR_DOMAIN, align 4
  %128 = load i32, i32* @LOC_STATIC, align 4
  %129 = load %struct.objfile*, %struct.objfile** %7, align 8
  %130 = getelementptr inbounds %struct.objfile, %struct.objfile* %129, i32 0, i32 1
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %11, align 8
  %133 = add nsw i64 %131, %132
  %134 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %135 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.objfile*, %struct.objfile** %7, align 8
  %138 = call %struct.partial_symbol* @add_psymbol_to_list(i8* %124, i64 %126, i32 %127, i32 %128, i32* %130, i32 0, i64 %133, i64 %136, %struct.objfile* %137)
  store %struct.partial_symbol* %138, %struct.partial_symbol** %10, align 8
  br label %139

139:                                              ; preds = %123, %118
  br label %167

140:                                              ; preds = %97
  %141 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %142 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %276

146:                                              ; preds = %140
  %147 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %148 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %151 = call i64 @decode_locdesc(i32* %149, %struct.dwarf2_cu* %150)
  store i64 %151, i64* %8, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = call i64 @strlen(i8* %153)
  %155 = load i32, i32* @VAR_DOMAIN, align 4
  %156 = load i32, i32* @LOC_STATIC, align 4
  %157 = load %struct.objfile*, %struct.objfile** %7, align 8
  %158 = getelementptr inbounds %struct.objfile, %struct.objfile* %157, i32 0, i32 0
  %159 = load i64, i64* %8, align 8
  %160 = load i64, i64* %11, align 8
  %161 = add nsw i64 %159, %160
  %162 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %163 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.objfile*, %struct.objfile** %7, align 8
  %166 = call %struct.partial_symbol* @add_psymbol_to_list(i8* %152, i64 %154, i32 %155, i32 %156, i32* %158, i32 0, i64 %161, i64 %164, %struct.objfile* %165)
  store %struct.partial_symbol* %166, %struct.partial_symbol** %10, align 8
  br label %167

167:                                              ; preds = %146, %139
  br label %255

168:                                              ; preds = %51, %51, %51
  %169 = load i8*, i8** %9, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = call i64 @strlen(i8* %170)
  %172 = load i32, i32* @VAR_DOMAIN, align 4
  %173 = load i32, i32* @LOC_TYPEDEF, align 4
  %174 = load %struct.objfile*, %struct.objfile** %7, align 8
  %175 = getelementptr inbounds %struct.objfile, %struct.objfile* %174, i32 0, i32 0
  %176 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %177 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.objfile*, %struct.objfile** %7, align 8
  %180 = call %struct.partial_symbol* @add_psymbol_to_list(i8* %169, i64 %171, i32 %172, i32 %173, i32* %175, i32 0, i64 0, i64 %178, %struct.objfile* %179)
  br label %255

181:                                              ; preds = %51, %51, %51, %51
  %182 = load %struct.partial_die_info*, %struct.partial_die_info** %4, align 8
  %183 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %276

187:                                              ; preds = %181
  %188 = load i8*, i8** %9, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = call i64 @strlen(i8* %189)
  %191 = load i32, i32* @STRUCT_DOMAIN, align 4
  %192 = load i32, i32* @LOC_TYPEDEF, align 4
  %193 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %194 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @language_cplus, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %187
  %199 = load %struct.objfile*, %struct.objfile** %7, align 8
  %200 = getelementptr inbounds %struct.objfile, %struct.objfile* %199, i32 0, i32 1
  br label %204

201:                                              ; preds = %187
  %202 = load %struct.objfile*, %struct.objfile** %7, align 8
  %203 = getelementptr inbounds %struct.objfile, %struct.objfile* %202, i32 0, i32 0
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi i32* [ %200, %198 ], [ %203, %201 ]
  %206 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %207 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.objfile*, %struct.objfile** %7, align 8
  %210 = call %struct.partial_symbol* @add_psymbol_to_list(i8* %188, i64 %190, i32 %191, i32 %192, i32* %205, i32 0, i64 0, i64 %208, %struct.objfile* %209)
  %211 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %212 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @language_cplus, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %204
  %217 = load i8*, i8** %9, align 8
  %218 = load i8*, i8** %9, align 8
  %219 = call i64 @strlen(i8* %218)
  %220 = load i32, i32* @VAR_DOMAIN, align 4
  %221 = load i32, i32* @LOC_TYPEDEF, align 4
  %222 = load %struct.objfile*, %struct.objfile** %7, align 8
  %223 = getelementptr inbounds %struct.objfile, %struct.objfile* %222, i32 0, i32 1
  %224 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %225 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.objfile*, %struct.objfile** %7, align 8
  %228 = call %struct.partial_symbol* @add_psymbol_to_list(i8* %217, i64 %219, i32 %220, i32 %221, i32* %223, i32 0, i64 0, i64 %226, %struct.objfile* %227)
  br label %229

229:                                              ; preds = %216, %204
  br label %255

230:                                              ; preds = %51
  %231 = load i8*, i8** %9, align 8
  %232 = load i8*, i8** %9, align 8
  %233 = call i64 @strlen(i8* %232)
  %234 = load i32, i32* @VAR_DOMAIN, align 4
  %235 = load i32, i32* @LOC_CONST, align 4
  %236 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %237 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @language_cplus, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %230
  %242 = load %struct.objfile*, %struct.objfile** %7, align 8
  %243 = getelementptr inbounds %struct.objfile, %struct.objfile* %242, i32 0, i32 1
  br label %247

244:                                              ; preds = %230
  %245 = load %struct.objfile*, %struct.objfile** %7, align 8
  %246 = getelementptr inbounds %struct.objfile, %struct.objfile* %245, i32 0, i32 0
  br label %247

247:                                              ; preds = %244, %241
  %248 = phi i32* [ %243, %241 ], [ %246, %244 ]
  %249 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %250 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.objfile*, %struct.objfile** %7, align 8
  %253 = call %struct.partial_symbol* @add_psymbol_to_list(i8* %231, i64 %233, i32 %234, i32 %235, i32* %248, i32 0, i64 0, i64 %251, %struct.objfile* %252)
  br label %255

254:                                              ; preds = %51
  br label %255

255:                                              ; preds = %254, %247, %229, %168, %167, %96
  %256 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %257 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @language_cplus, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %276

261:                                              ; preds = %255
  %262 = load i8*, i8** %6, align 8
  %263 = icmp eq i8* %262, null
  br i1 %263, label %264, label %276

264:                                              ; preds = %261
  %265 = load %struct.partial_symbol*, %struct.partial_symbol** %10, align 8
  %266 = icmp ne %struct.partial_symbol* %265, null
  br i1 %266, label %267, label %276

267:                                              ; preds = %264
  %268 = load %struct.partial_symbol*, %struct.partial_symbol** %10, align 8
  %269 = call i32* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.partial_symbol* %268)
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = load %struct.partial_symbol*, %struct.partial_symbol** %10, align 8
  %273 = call i32* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.partial_symbol* %272)
  %274 = load %struct.objfile*, %struct.objfile** %7, align 8
  %275 = call i32 @cp_check_possible_namespace_symbols(i32* %273, %struct.objfile* %274)
  br label %276

276:                                              ; preds = %145, %186, %271, %267, %264, %261, %255
  ret void
}

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i64 @pdi_needs_namespace(i32, i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local %struct.partial_symbol* @add_psymbol_to_list(i8*, i64, i32, i32, i32*, i32, i64, i64, %struct.objfile*) #1

declare dso_local i64 @decode_locdesc(i32*, %struct.dwarf2_cu*) #1

declare dso_local i32* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.partial_symbol*) #1

declare dso_local i32 @cp_check_possible_namespace_symbols(i32*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
