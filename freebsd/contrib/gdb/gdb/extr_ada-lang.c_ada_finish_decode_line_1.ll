; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_finish_decode_line_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_finish_decode_line_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i32, i32, i32 }
%struct.symtab = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.cleanup = type { i32 }
%struct.minimal_symbol = type { i32 }

@null_cleanup = common dso_local global i32 0, align 4
@STATIC_BLOCK = common dso_local global i32 0, align 4
@ada_completer_word_break_characters = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Wild-card function with no line number or file name.\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"No line number information found for %s.\00", align 1
@FUNCTION_START_OFFSET = common dso_local global i64 0, align 8
@no_symtab_msg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Function \22%s\22 not defined.\00", align 1
@xfree = common dso_local global i32 0, align 4
@LOC_BLOCK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Line number not known for symbol \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, %struct.symtab_and_line* } @ada_finish_decode_line_1(i8** %0, %struct.symtab* %1, i32 %2, i8*** %3) #0 {
  %5 = alloca %struct.symtabs_and_lines, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.symtab*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8***, align 8
  %10 = alloca %struct.symbol**, align 8
  %11 = alloca %struct.block**, align 8
  %12 = alloca %struct.block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.symtabs_and_lines, align 8
  %17 = alloca %struct.cleanup*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.symtab_and_line, align 8
  %23 = alloca %struct.minimal_symbol*, align 8
  %24 = alloca %struct.symtab_and_line, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.symtab* %1, %struct.symtab** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8*** %3, i8**** %9, align 8
  %25 = load i32, i32* @null_cleanup, align 4
  %26 = call %struct.cleanup* @make_cleanup(i32 %25, %struct.symtab_and_line* null)
  store %struct.cleanup* %26, %struct.cleanup** %17, align 8
  %27 = load %struct.symtab*, %struct.symtab** %7, align 8
  %28 = icmp eq %struct.symtab* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = call %struct.block* @get_selected_block(i32* null)
  store %struct.block* %30, %struct.block** %12, align 8
  br label %36

31:                                               ; preds = %4
  %32 = load %struct.symtab*, %struct.symtab** %7, align 8
  %33 = call i32 @BLOCKVECTOR(%struct.symtab* %32)
  %34 = load i32, i32* @STATIC_BLOCK, align 4
  %35 = call %struct.block* @BLOCKVECTOR_BLOCK(i32 %33, i32 %34)
  store %struct.block* %35, %struct.block** %12, align 8
  br label %36

36:                                               ; preds = %31, %29
  %37 = load i8***, i8**** %9, align 8
  %38 = icmp ne i8*** %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i8***, i8**** %9, align 8
  store i8** null, i8*** %40, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %18, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 42
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %50, align 8
  br label %75

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* @ada_completer_word_break_characters, align 4
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @strchr(i32 %61, i8 signext %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %60, %54
  %69 = phi i1 [ false, %54 ], [ %67, %60 ]
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %71, align 8
  br label %54

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %19, align 4
  store i32 -1, i32* %15, align 4
  %83 = load %struct.symtab*, %struct.symtab** %7, align 8
  %84 = icmp ne %struct.symtab* %83, null
  br i1 %84, label %85, label %124

85:                                               ; preds = %75
  %86 = load i8**, i8*** %6, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 58
  br i1 %91, label %92, label %124

92:                                               ; preds = %85
  %93 = load i8**, i8*** %6, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = call i64 @isdigit(i8 signext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %92
  %100 = load i8**, i8*** %6, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8**, i8*** %6, align 8
  %104 = call i32 @strtol(i8* %102, i8** %103, i32 10)
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %119, %99
  %106 = load i8**, i8*** %6, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 32
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load i8**, i8*** %6, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 9
  br label %117

117:                                              ; preds = %111, %105
  %118 = phi i1 [ true, %105 ], [ %116, %111 ]
  br i1 %118, label %119, label %123

119:                                              ; preds = %117
  %120 = load i8**, i8*** %6, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  store i8* %122, i8** %120, align 8
  br label %105

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %92, %85, %75
  %125 = load i8*, i8** %18, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 42
  br i1 %129, label %130, label %147

130:                                              ; preds = %124
  %131 = load i32, i32* %15, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %130
  %136 = load %struct.symtab*, %struct.symtab** %7, align 8
  %137 = getelementptr inbounds %struct.symtab, %struct.symtab* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i8***, i8**** %9, align 8
  %141 = call { i32, %struct.symtab_and_line* } @all_sals_for_line(i32 %138, i32 %139, i8*** %140)
  %142 = bitcast %struct.symtabs_and_lines* %5 to { i32, %struct.symtab_and_line* }*
  %143 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %142, i32 0, i32 0
  %144 = extractvalue { i32, %struct.symtab_and_line* } %141, 0
  store i32 %144, i32* %143, align 8
  %145 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %142, i32 0, i32 1
  %146 = extractvalue { i32, %struct.symtab_and_line* } %141, 1
  store %struct.symtab_and_line* %146, %struct.symtab_and_line** %145, align 8
  br label %509

147:                                              ; preds = %124
  %148 = load i8*, i8** %18, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 39
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load i8*, i8** %18, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  store i8* %155, i8** %18, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sub nsw i32 %156, 2
  store i32 %157, i32* %19, align 4
  br label %158

158:                                              ; preds = %153, %147
  %159 = load i8*, i8** %18, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 0
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 60
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = load i32, i32* %19, align 4
  %166 = sub nsw i32 %165, 1
  %167 = call i64 @alloca(i32 %166)
  %168 = inttoptr i64 %167 to i8*
  store i8* %168, i8** %21, align 8
  %169 = load i8*, i8** %21, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = load i32, i32* %19, align 4
  %173 = sub nsw i32 %172, 2
  %174 = call i32 @memcpy(i8* %169, i8* %171, i32 %173)
  %175 = load i8*, i8** %21, align 8
  %176 = load i32, i32* %19, align 4
  %177 = sub nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 0, i8* %179, align 1
  store i8* null, i8** %20, align 8
  br label %220

180:                                              ; preds = %158
  %181 = load i32, i32* %19, align 4
  %182 = add nsw i32 %181, 1
  %183 = call i64 @alloca(i32 %182)
  %184 = inttoptr i64 %183 to i8*
  store i8* %184, i8** %21, align 8
  %185 = load i8*, i8** %21, align 8
  %186 = load i8*, i8** %18, align 8
  %187 = load i32, i32* %19, align 4
  %188 = call i32 @memcpy(i8* %185, i8* %186, i32 %187)
  %189 = load i8*, i8** %21, align 8
  %190 = load i32, i32* %19, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  store i8 0, i8* %192, align 1
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %193, 1
  %195 = call i64 @alloca(i32 %194)
  %196 = inttoptr i64 %195 to i8*
  store i8* %196, i8** %20, align 8
  store i32 0, i32* %14, align 4
  br label %197

197:                                              ; preds = %212, %180
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %19, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %215

201:                                              ; preds = %197
  %202 = load i8*, i8** %18, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = call signext i8 @tolower(i8 signext %206)
  %208 = load i8*, i8** %20, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  store i8 %207, i8* %211, align 1
  br label %212

212:                                              ; preds = %201
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %14, align 4
  br label %197

215:                                              ; preds = %197
  %216 = load i8*, i8** %20, align 8
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  store i8 0, i8* %219, align 1
  br label %220

220:                                              ; preds = %215, %164
  store i32 0, i32* %13, align 4
  %221 = load i8*, i8** %20, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load i8*, i8** %20, align 8
  %225 = call i8* @ada_mangle(i8* %224)
  %226 = load %struct.block*, %struct.block** %12, align 8
  %227 = load i32, i32* @VAR_DOMAIN, align 4
  %228 = call i32 @ada_lookup_symbol_list(i8* %225, %struct.block* %226, i32 %227, %struct.symbol*** %10, %struct.block*** %11)
  store i32 %228, i32* %13, align 4
  br label %229

229:                                              ; preds = %223, %220
  %230 = load i32, i32* %13, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load i8*, i8** %21, align 8
  %234 = load %struct.block*, %struct.block** %12, align 8
  %235 = load i32, i32* @VAR_DOMAIN, align 4
  %236 = call i32 @ada_lookup_symbol_list(i8* %233, %struct.block* %234, i32 %235, %struct.symbol*** %10, %struct.block*** %11)
  store i32 %236, i32* %13, align 4
  br label %237

237:                                              ; preds = %232, %229
  %238 = load i32, i32* %13, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = load i32, i32* %15, align 4
  %242 = icmp sge i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i8*, i8** %21, align 8
  %245 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %244)
  br label %317

246:                                              ; preds = %240, %237
  %247 = load i32, i32* %13, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %316

249:                                              ; preds = %246
  %250 = call i32 @init_sal(%struct.symtab_and_line* %22)
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %23, align 8
  %251 = load i8*, i8** %20, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load i8*, i8** %20, align 8
  %255 = call i8* @ada_mangle(i8* %254)
  %256 = call %struct.minimal_symbol* @ada_lookup_minimal_symbol(i8* %255)
  store %struct.minimal_symbol* %256, %struct.minimal_symbol** %23, align 8
  br label %257

257:                                              ; preds = %253, %249
  %258 = load %struct.minimal_symbol*, %struct.minimal_symbol** %23, align 8
  %259 = icmp eq %struct.minimal_symbol* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i8*, i8** %21, align 8
  %262 = call %struct.minimal_symbol* @ada_lookup_minimal_symbol(i8* %261)
  store %struct.minimal_symbol* %262, %struct.minimal_symbol** %23, align 8
  br label %263

263:                                              ; preds = %260, %257
  %264 = load %struct.minimal_symbol*, %struct.minimal_symbol** %23, align 8
  %265 = icmp ne %struct.minimal_symbol* %264, null
  br i1 %265, label %266, label %297

266:                                              ; preds = %263
  %267 = load %struct.minimal_symbol*, %struct.minimal_symbol** %23, align 8
  %268 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %267)
  %269 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %22, i32 0, i32 2
  store i32 %268, i32* %269, align 4
  %270 = load %struct.minimal_symbol*, %struct.minimal_symbol** %23, align 8
  %271 = call i32 @SYMBOL_BFD_SECTION(%struct.minimal_symbol* %270)
  %272 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %22, i32 0, i32 3
  store i32 %271, i32* %272, align 8
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %285

275:                                              ; preds = %266
  %276 = load i64, i64* @FUNCTION_START_OFFSET, align 8
  %277 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %22, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %279, %276
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %277, align 4
  %282 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %22, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @SKIP_PROLOGUE(i32 %283)
  br label %285

285:                                              ; preds = %275, %266
  %286 = call i64 @xmalloc(i32 24)
  %287 = inttoptr i64 %286 to %struct.symtab_and_line*
  %288 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 1
  store %struct.symtab_and_line* %287, %struct.symtab_and_line** %288, align 8
  %289 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 1
  %290 = load %struct.symtab_and_line*, %struct.symtab_and_line** %289, align 8
  %291 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %290, i64 0
  %292 = bitcast %struct.symtab_and_line* %291 to i8*
  %293 = bitcast %struct.symtab_and_line* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %292, i8* align 8 %293, i64 24, i1 false)
  %294 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 0
  store i32 1, i32* %294, align 8
  %295 = bitcast %struct.symtabs_and_lines* %5 to i8*
  %296 = bitcast %struct.symtabs_and_lines* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %295, i8* align 8 %296, i64 16, i1 false)
  br label %509

297:                                              ; preds = %263
  %298 = call i32 (...) @have_full_symbols()
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %311, label %300

300:                                              ; preds = %297
  %301 = call i32 (...) @have_partial_symbols()
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %311, label %303

303:                                              ; preds = %300
  %304 = call i32 (...) @have_minimal_symbols()
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %303
  %307 = load i32, i32* @no_symtab_msg, align 4
  %308 = sext i32 %307 to i64
  %309 = inttoptr i64 %308 to i8*
  %310 = call i32 (i8*, ...) @error(i8* %309)
  br label %311

311:                                              ; preds = %306, %303, %300, %297
  %312 = load i8*, i8** %21, align 8
  %313 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %312)
  %314 = bitcast %struct.symtabs_and_lines* %5 to i8*
  %315 = bitcast %struct.symtabs_and_lines* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %314, i8* align 8 %315, i64 16, i1 false)
  br label %509

316:                                              ; preds = %246
  br label %317

317:                                              ; preds = %316, %243
  %318 = load i32, i32* %15, align 4
  %319 = icmp sge i32 %318, 0
  br i1 %319, label %320, label %333

320:                                              ; preds = %317
  %321 = load %struct.symtab*, %struct.symtab** %7, align 8
  %322 = getelementptr inbounds %struct.symtab, %struct.symtab* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %15, align 4
  %325 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %326 = load i32, i32* %13, align 4
  %327 = call { i32, %struct.symtab_and_line* } @find_sal_from_funcs_and_line(i32 %323, i32 %324, %struct.symbol** %325, i32 %326)
  %328 = bitcast %struct.symtabs_and_lines* %5 to { i32, %struct.symtab_and_line* }*
  %329 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %328, i32 0, i32 0
  %330 = extractvalue { i32, %struct.symtab_and_line* } %327, 0
  store i32 %330, i32* %329, align 8
  %331 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %328, i32 0, i32 1
  %332 = extractvalue { i32, %struct.symtab_and_line* } %327, 1
  store %struct.symtab_and_line* %332, %struct.symtab_and_line** %331, align 8
  br label %509

333:                                              ; preds = %317
  %334 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %335 = load %struct.block**, %struct.block*** %11, align 8
  %336 = load i32, i32* %13, align 4
  %337 = load i32, i32* %13, align 4
  %338 = call i32 @user_select_syms(%struct.symbol** %334, %struct.block** %335, i32 %336, i32 %337)
  %339 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 0
  store i32 %338, i32* %339, align 8
  br label %340

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = sext i32 %342 to i64
  %344 = mul i64 24, %343
  %345 = trunc i64 %344 to i32
  %346 = call i64 @xmalloc(i32 %345)
  %347 = inttoptr i64 %346 to %struct.symtab_and_line*
  %348 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 1
  store %struct.symtab_and_line* %347, %struct.symtab_and_line** %348, align 8
  %349 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 1
  %350 = load %struct.symtab_and_line*, %struct.symtab_and_line** %349, align 8
  %351 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = sext i32 %352 to i64
  %354 = mul i64 %353, 24
  %355 = trunc i64 %354 to i32
  %356 = call i32 @memset(%struct.symtab_and_line* %350, i32 0, i32 %355)
  %357 = load i32, i32* @xfree, align 4
  %358 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 1
  %359 = load %struct.symtab_and_line*, %struct.symtab_and_line** %358, align 8
  %360 = call %struct.cleanup* @make_cleanup(i32 %357, %struct.symtab_and_line* %359)
  store i32 0, i32* %14, align 4
  br label %361

361:                                              ; preds = %456, %425, %340
  %362 = load i32, i32* %14, align 4
  %363 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = icmp slt i32 %362, %364
  br i1 %365, label %366, label %459

366:                                              ; preds = %361
  %367 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %368 = load i32, i32* %14, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.symbol*, %struct.symbol** %367, i64 %369
  %371 = load %struct.symbol*, %struct.symbol** %370, align 8
  %372 = call i64 @SYMBOL_CLASS(%struct.symbol* %371)
  %373 = load i64, i64* @LOC_BLOCK, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %389

375:                                              ; preds = %366
  %376 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 1
  %377 = load %struct.symtab_and_line*, %struct.symtab_and_line** %376, align 8
  %378 = load i32, i32* %14, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %377, i64 %379
  %381 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %382 = load i32, i32* %14, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.symbol*, %struct.symbol** %381, i64 %383
  %385 = load %struct.symbol*, %struct.symbol** %384, align 8
  %386 = load i32, i32* %8, align 4
  call void @find_function_start_sal(%struct.symtab_and_line* sret %24, %struct.symbol* %385, i32 %386)
  %387 = bitcast %struct.symtab_and_line* %380 to i8*
  %388 = bitcast %struct.symtab_and_line* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %387, i8* align 8 %388, i64 24, i1 false)
  br label %456

389:                                              ; preds = %366
  %390 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %391 = load i32, i32* %14, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.symbol*, %struct.symbol** %390, i64 %392
  %394 = load %struct.symbol*, %struct.symbol** %393, align 8
  %395 = call i64 @SYMBOL_LINE(%struct.symbol* %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %422

397:                                              ; preds = %389
  %398 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %399 = load i32, i32* %14, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.symbol*, %struct.symbol** %398, i64 %400
  %402 = load %struct.symbol*, %struct.symbol** %401, align 8
  %403 = call i32 @symtab_for_sym(%struct.symbol* %402)
  %404 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 1
  %405 = load %struct.symtab_and_line*, %struct.symtab_and_line** %404, align 8
  %406 = load i32, i32* %14, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %405, i64 %407
  %409 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %408, i32 0, i32 1
  store i32 %403, i32* %409, align 8
  %410 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %411 = load i32, i32* %14, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.symbol*, %struct.symbol** %410, i64 %412
  %414 = load %struct.symbol*, %struct.symbol** %413, align 8
  %415 = call i64 @SYMBOL_LINE(%struct.symbol* %414)
  %416 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 1
  %417 = load %struct.symtab_and_line*, %struct.symtab_and_line** %416, align 8
  %418 = load i32, i32* %14, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %417, i64 %419
  %421 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %420, i32 0, i32 0
  store i64 %415, i64* %421, align 8
  br label %455

422:                                              ; preds = %389
  %423 = load i32, i32* %15, align 4
  %424 = icmp sge i32 %423, 0
  br i1 %424, label %425, label %451

425:                                              ; preds = %422
  %426 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %427 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = sub nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.symbol*, %struct.symbol** %426, i64 %430
  %432 = load %struct.symbol*, %struct.symbol** %431, align 8
  %433 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %434 = load i32, i32* %14, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.symbol*, %struct.symbol** %433, i64 %435
  store %struct.symbol* %432, %struct.symbol** %436, align 8
  %437 = load %struct.block**, %struct.block*** %11, align 8
  %438 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = sub nsw i32 %439, 1
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.block*, %struct.block** %437, i64 %441
  %443 = load %struct.block*, %struct.block** %442, align 8
  %444 = load %struct.block**, %struct.block*** %11, align 8
  %445 = load i32, i32* %14, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.block*, %struct.block** %444, i64 %446
  store %struct.block* %443, %struct.block** %447, align 8
  %448 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = sub nsw i32 %449, 1
  store i32 %450, i32* %448, align 8
  br label %361

451:                                              ; preds = %422
  %452 = load i8*, i8** %21, align 8
  %453 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %452)
  br label %454

454:                                              ; preds = %451
  br label %455

455:                                              ; preds = %454, %397
  br label %456

456:                                              ; preds = %455, %375
  %457 = load i32, i32* %14, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %14, align 4
  br label %361

459:                                              ; preds = %361
  %460 = load i8***, i8**** %9, align 8
  %461 = icmp ne i8*** %460, null
  br i1 %461, label %462, label %504

462:                                              ; preds = %459
  %463 = load i32, i32* %15, align 4
  %464 = icmp sge i32 %463, 0
  br i1 %464, label %468, label %465

465:                                              ; preds = %462
  %466 = load i32, i32* %13, align 4
  %467 = icmp sgt i32 %466, 1
  br i1 %467, label %468, label %504

468:                                              ; preds = %465, %462
  %469 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = sext i32 %470 to i64
  %472 = mul i64 8, %471
  %473 = trunc i64 %472 to i32
  %474 = call i64 @xmalloc(i32 %473)
  %475 = inttoptr i64 %474 to i8**
  %476 = load i8***, i8**** %9, align 8
  store i8** %475, i8*** %476, align 8
  store i32 0, i32* %14, align 4
  br label %477

477:                                              ; preds = %500, %468
  %478 = load i32, i32* %14, align 4
  %479 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = icmp slt i32 %478, %480
  br i1 %481, label %482, label %503

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %16, i32 0, i32 1
  %484 = load %struct.symtab_and_line*, %struct.symtab_and_line** %483, align 8
  %485 = load i32, i32* %14, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %484, i64 %486
  %488 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %489 = load i32, i32* %14, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.symbol*, %struct.symbol** %488, i64 %490
  %492 = load %struct.symbol*, %struct.symbol** %491, align 8
  %493 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %492)
  %494 = call i8* @extended_canonical_line_spec(%struct.symtab_and_line* byval(%struct.symtab_and_line) align 8 %487, i32 %493)
  %495 = load i8***, i8**** %9, align 8
  %496 = load i8**, i8*** %495, align 8
  %497 = load i32, i32* %14, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8*, i8** %496, i64 %498
  store i8* %494, i8** %499, align 8
  br label %500

500:                                              ; preds = %482
  %501 = load i32, i32* %14, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %14, align 4
  br label %477

503:                                              ; preds = %477
  br label %504

504:                                              ; preds = %503, %465, %459
  %505 = load %struct.cleanup*, %struct.cleanup** %17, align 8
  %506 = call i32 @discard_cleanups(%struct.cleanup* %505)
  %507 = bitcast %struct.symtabs_and_lines* %5 to i8*
  %508 = bitcast %struct.symtabs_and_lines* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %507, i8* align 8 %508, i64 16, i1 false)
  br label %509

509:                                              ; preds = %504, %320, %311, %285, %135
  %510 = bitcast %struct.symtabs_and_lines* %5 to { i32, %struct.symtab_and_line* }*
  %511 = load { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %510, align 8
  ret { i32, %struct.symtab_and_line* } %511
}

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.symtab_and_line*) #1

declare dso_local %struct.block* @get_selected_block(i32*) #1

declare dso_local %struct.block* @BLOCKVECTOR_BLOCK(i32, i32) #1

declare dso_local i32 @BLOCKVECTOR(%struct.symtab*) #1

declare dso_local i32 @strchr(i32, i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local { i32, %struct.symtab_and_line* } @all_sals_for_line(i32, i32, i8***) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @ada_lookup_symbol_list(i8*, %struct.block*, i32, %struct.symbol***, %struct.block***) #1

declare dso_local i8* @ada_mangle(i8*) #1

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local %struct.minimal_symbol* @ada_lookup_minimal_symbol(i8*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @SYMBOL_BFD_SECTION(%struct.minimal_symbol*) #1

declare dso_local i32 @SKIP_PROLOGUE(i32) #1

declare dso_local i64 @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @have_full_symbols(...) #1

declare dso_local i32 @have_partial_symbols(...) #1

declare dso_local i32 @have_minimal_symbols(...) #1

declare dso_local { i32, %struct.symtab_and_line* } @find_sal_from_funcs_and_line(i32, i32, %struct.symbol**, i32) #1

declare dso_local i32 @user_select_syms(%struct.symbol**, %struct.block**, i32, i32) #1

declare dso_local i32 @memset(%struct.symtab_and_line*, i32, i32) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local void @find_function_start_sal(%struct.symtab_and_line* sret, %struct.symbol*, i32) #1

declare dso_local i64 @SYMBOL_LINE(%struct.symbol*) #1

declare dso_local i32 @symtab_for_sym(%struct.symbol*) #1

declare dso_local i8* @extended_canonical_line_spec(%struct.symtab_and_line* byval(%struct.symtab_and_line) align 8, i32) #1

declare dso_local i32 @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
