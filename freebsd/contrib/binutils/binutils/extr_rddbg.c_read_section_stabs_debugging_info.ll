; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rddbg.c_read_section_stabs_debugging_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rddbg.c_read_section_stabs_debugging_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8* }

@read_section_stabs_debugging_info.names = internal global [3 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [6 x i8] c".stab\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".stabstr\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"LC_SYMTAB.stabs\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"LC_SYMTAB.stabstr\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"$GDB_SYMBOLS$\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"$GDB_STRINGS$\00", align 1
@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"%s: %s: stab entry %ld is corrupt, strx = 0x%x, type = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i64, i8*, i32*)* @read_section_stabs_debugging_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_section_stabs_debugging_info(i32* %0, i32** %1, i64 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  store i8* null, i8** %13, align 8
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %271, %5
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %35, 3
  br i1 %36, label %37, label %274

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @read_section_stabs_debugging_info.names, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 16
  %44 = call i32* @bfd_get_section_by_name(i32* %38, i8* %43)
  store i32* %44, i32** %14, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @read_section_stabs_debugging_info.names, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32* @bfd_get_section_by_name(i32* %45, i8* %50)
  store i32* %51, i32** %15, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %270

54:                                               ; preds = %37
  %55 = load i32*, i32** %15, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %270

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @bfd_section_size(i32* %58, i32* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i64 @xmalloc(i32 %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %18, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @bfd_get_section_contents(i32* %64, i32* %65, i8* %66, i32 0, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %57
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = call i8* @bfd_get_filename(i32* %72)
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @read_section_stabs_debugging_info.names, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 16
  %79 = call i32 (...) @bfd_get_error()
  %80 = call i8* @bfd_errmsg(i32 %79)
  %81 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %73, i8* %78, i8* %80)
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %6, align 4
  br label %287

83:                                               ; preds = %57
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @bfd_section_size(i32* %84, i32* %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i64 @xmalloc(i32 %87)
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %19, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @bfd_get_section_contents(i32* %90, i32* %91, i8* %92, i32 0, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %83
  %97 = load i32, i32* @stderr, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = call i8* @bfd_get_filename(i32* %98)
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @read_section_stabs_debugging_info.names, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (...) @bfd_get_error()
  %106 = call i8* @bfd_errmsg(i32 %105)
  %107 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %99, i8* %104, i8* %106)
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %6, align 4
  br label %287

109:                                              ; preds = %83
  %110 = load i8*, i8** %13, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load i8*, i8** %10, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* @TRUE, align 4
  %116 = load i32**, i32*** %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i8* @start_stab(i8* %113, i32* %114, i32 %115, i32** %116, i64 %117)
  store i8* %118, i8** %13, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %6, align 4
  br label %287

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %109
  %125 = load i32, i32* @TRUE, align 4
  %126 = load i32*, i32** %11, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %127 = load i8*, i8** %18, align 8
  store i8* %127, i8** %20, align 8
  br label %128

128:                                              ; preds = %263, %124
  %129 = load i8*, i8** %20, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = icmp ult i8* %129, %133
  br i1 %134, label %135, label %266

135:                                              ; preds = %128
  %136 = load i32*, i32** %7, align 8
  %137 = load i8*, i8** %20, align 8
  %138 = call i32 @bfd_get_32(i32* %136, i8* %137)
  store i32 %138, i32* %23, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = load i8*, i8** %20, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 4
  %142 = call i32 @bfd_get_8(i32* %139, i8* %141)
  store i32 %142, i32* %24, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load i8*, i8** %20, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 5
  %146 = call i32 @bfd_get_8(i32* %143, i8* %145)
  store i32 %146, i32* %25, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = load i8*, i8** %20, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 6
  %150 = call i32 @bfd_get_16(i32* %147, i8* %149)
  store i32 %150, i32* %26, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = load i8*, i8** %20, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 8
  %154 = call i32 @bfd_get_32(i32* %151, i8* %153)
  store i32 %154, i32* %27, align 4
  %155 = load i32, i32* %24, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %135
  %158 = load i32, i32* %22, align 4
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %27, align 4
  %160 = load i32, i32* %22, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %22, align 4
  br label %262

162:                                              ; preds = %135
  store i8* null, i8** %28, align 8
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %23, align 4
  %165 = add i32 %163, %164
  %166 = load i32, i32* %17, align 4
  %167 = icmp ugt i32 %165, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %162
  %169 = load i32, i32* @stderr, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = call i8* @bfd_get_filename(i32* %170)
  %172 = load i32, i32* %12, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @read_section_stabs_debugging_info.names, i64 0, i64 %173
  %175 = getelementptr inbounds %struct.anon, %struct.anon* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 16
  %177 = load i8*, i8** %20, align 8
  %178 = load i8*, i8** %18, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = sdiv i64 %181, 12
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* %24, align 4
  %185 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8* %171, i8* %176, i64 %182, i32 %183, i32 %184)
  br label %263

186:                                              ; preds = %162
  %187 = load i8*, i8** %19, align 8
  %188 = load i32, i32* %21, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i32, i32* %23, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  store i8* %193, i8** %29, align 8
  br label %194

194:                                              ; preds = %241, %186
  %195 = load i8*, i8** %29, align 8
  %196 = load i8*, i8** %29, align 8
  %197 = call i32 @strlen(i8* %196)
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %195, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 92
  br i1 %203, label %204, label %212

204:                                              ; preds = %194
  %205 = load i8*, i8** %20, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 12
  %207 = load i8*, i8** %18, align 8
  %208 = load i32, i32* %16, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = icmp ult i8* %206, %210
  br label %212

212:                                              ; preds = %204, %194
  %213 = phi i1 [ false, %194 ], [ %211, %204 ]
  br i1 %213, label %214, label %243

214:                                              ; preds = %212
  %215 = load i8*, i8** %20, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 12
  store i8* %216, i8** %20, align 8
  %217 = load i8*, i8** %29, align 8
  %218 = load i8*, i8** %29, align 8
  %219 = call i32 @strlen(i8* %218)
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = getelementptr inbounds i8, i8* %221, i64 -1
  store i8* %222, i8** %30, align 8
  %223 = load i8*, i8** %30, align 8
  store i8 0, i8* %223, align 1
  %224 = load i8*, i8** %29, align 8
  %225 = load i8*, i8** %19, align 8
  %226 = load i32, i32* %21, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i32*, i32** %7, align 8
  %230 = load i8*, i8** %20, align 8
  %231 = call i32 @bfd_get_32(i32* %229, i8* %230)
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %228, i64 %232
  %234 = call i8* @concat(i8* %224, i8* %233, i8* null)
  store i8* %234, i8** %29, align 8
  %235 = load i8*, i8** %30, align 8
  store i8 92, i8* %235, align 1
  %236 = load i8*, i8** %28, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %214
  %239 = load i8*, i8** %28, align 8
  %240 = call i32 @free(i8* %239)
  br label %241

241:                                              ; preds = %238, %214
  %242 = load i8*, i8** %29, align 8
  store i8* %242, i8** %28, align 8
  br label %194

243:                                              ; preds = %212
  %244 = load i32, i32* %24, align 4
  %245 = load i32, i32* %26, align 4
  %246 = load i32, i32* %27, align 4
  %247 = load i8*, i8** %29, align 8
  %248 = call i32 @save_stab(i32 %244, i32 %245, i32 %246, i8* %247)
  %249 = load i8*, i8** %10, align 8
  %250 = load i8*, i8** %13, align 8
  %251 = load i32, i32* %24, align 4
  %252 = load i32, i32* %26, align 4
  %253 = load i32, i32* %27, align 4
  %254 = load i8*, i8** %29, align 8
  %255 = call i32 @parse_stab(i8* %249, i8* %250, i32 %251, i32 %252, i32 %253, i8* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %261, label %257

257:                                              ; preds = %243
  %258 = call i32 (...) @stab_context()
  %259 = call i32 (...) @free_saved_stabs()
  %260 = load i32, i32* @FALSE, align 4
  store i32 %260, i32* %6, align 4
  br label %287

261:                                              ; preds = %243
  br label %262

262:                                              ; preds = %261, %157
  br label %263

263:                                              ; preds = %262, %168
  %264 = load i8*, i8** %20, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 12
  store i8* %265, i8** %20, align 8
  br label %128

266:                                              ; preds = %128
  %267 = call i32 (...) @free_saved_stabs()
  %268 = load i8*, i8** %18, align 8
  %269 = call i32 @free(i8* %268)
  br label %270

270:                                              ; preds = %266, %54, %37
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %12, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %12, align 4
  br label %33

274:                                              ; preds = %33
  %275 = load i8*, i8** %13, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = load i8*, i8** %10, align 8
  %279 = load i8*, i8** %13, align 8
  %280 = call i32 @finish_stab(i8* %278, i8* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %277
  %283 = load i32, i32* @FALSE, align 4
  store i32 %283, i32* %6, align 4
  br label %287

284:                                              ; preds = %277
  br label %285

285:                                              ; preds = %284, %274
  %286 = load i32, i32* @TRUE, align 4
  store i32 %286, i32* %6, align 4
  br label %287

287:                                              ; preds = %285, %282, %257, %121, %96, %70
  %288 = load i32, i32* %6, align 4
  ret i32 %288
}

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @bfd_section_size(i32*, i32*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @bfd_get_section_contents(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i8* @start_stab(i8*, i32*, i32, i32**, i64) #1

declare dso_local i32 @bfd_get_32(i32*, i8*) #1

declare dso_local i32 @bfd_get_8(i32*, i8*) #1

declare dso_local i32 @bfd_get_16(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @concat(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @save_stab(i32, i32, i32, i8*) #1

declare dso_local i32 @parse_stab(i8*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @stab_context(...) #1

declare dso_local i32 @free_saved_stabs(...) #1

declare dso_local i32 @finish_stab(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
