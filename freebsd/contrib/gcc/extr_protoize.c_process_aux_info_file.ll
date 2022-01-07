; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_process_aux_info_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_process_aux_info_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@aux_info_suffix = common dso_local global i8* null, align 8
@R_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: warning: missing SYSCALLS file '%s'\0A\00", align 1
@pname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: can't read aux info file '%s': %s\0A\00", align 1
@errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: can't get status of aux info file '%s': %s\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"%s: can't open aux info file '%s' for reading: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s: error reading aux info file '%s': %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s: error closing aux info file '%s': %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"%s: can't delete aux info file '%s': %s\0A\00", align 1
@invocation_filename = common dso_local global i8* null, align 8
@DIR_SEPARATOR = common dso_local global i32 0, align 4
@current_aux_info_lineno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: can't delete file '%s': %s\0A\00", align 1
@DIR_SEPARATOR_2 = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@aux_info_file_name = common dso_local global i8* null, align 8
@base_source_file_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @process_aux_info_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_aux_info_file(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.stat, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i8*, i8** @aux_info_suffix, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = add i64 %34, %36
  %38 = add i64 %37, 1
  %39 = call i8* @alloca(i64 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcpy(i8* %40, i8* %41)
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** @aux_info_suffix, align 8
  %45 = call i32 @strcat(i8* %43, i8* %44)
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %349, %151, %3
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* @R_OK, align 4
  %49 = call i32 @access(i8* %47, i32 %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = load i32, i32* @errno, align 4
  %53 = load i32, i32* @ENOENT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @pname, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 (i8*, i32, i8*, ...) @notice(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59, i8* %60)
  br label %405

62:                                               ; preds = %55
  store i32 1, i32* %15, align 4
  br label %75

63:                                               ; preds = %51
  %64 = load i32, i32* @errno, align 4
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* @pname, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @shortpath(i32* null, i8* %66)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @xstrerror(i32 %70)
  %72 = call i32 (i8*, i32, i8*, ...) @notice(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8* %69, i32 %71)
  %73 = load i32, i32* @errors, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @errors, align 4
  br label %405

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %46
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %76
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @gen_aux_info_file(i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @errors, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @errors, align 4
  br label %405

86:                                               ; preds = %79
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* @R_OK, align 4
  %89 = call i32 @access(i8* %87, i32 %88)
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i32, i32* @errno, align 4
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* @pname, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @shortpath(i32* null, i8* %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @xstrerror(i32 %98)
  %100 = call i32 (i8*, i32, i8*, ...) @notice(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %93, i8* %97, i32 %99)
  %101 = load i32, i32* @errors, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @errors, align 4
  br label %405

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %76
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @stat(i8* %105, %struct.stat* %18)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load i32, i32* @errno, align 4
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* @pname, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @shortpath(i32* null, i8* %111)
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = load i32, i32* %19, align 4
  %116 = call i32 @xstrerror(i32 %115)
  %117 = call i32 (i8*, i32, i8*, ...) @notice(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %110, i8* %114, i32 %116)
  %118 = load i32, i32* @errors, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @errors, align 4
  br label %405

120:                                              ; preds = %104
  %121 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %14, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %405

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %13, align 8
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %153, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** %4, align 8
  %132 = call i32 @stat(i8* %131, %struct.stat* %18)
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  %135 = load i32, i32* @errno, align 4
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* @pname, align 4
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @shortpath(i32* null, i8* %137)
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @xstrerror(i32 %141)
  %143 = call i32 (i8*, i32, i8*, ...) @notice(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %136, i8* %140, i32 %142)
  %144 = load i32, i32* @errors, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* @errors, align 4
  br label %405

146:                                              ; preds = %130
  %147 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %13, align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 1, i32* %15, align 4
  br label %46

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %125
  %154 = load i32, i32* @O_RDONLY, align 4
  store i32 %154, i32* %22, align 4
  %155 = load i8*, i8** %8, align 8
  %156 = load i32, i32* %22, align 4
  %157 = call i32 @open(i8* %155, i32 %156, i32 292)
  store i32 %157, i32* %21, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load i32, i32* @errno, align 4
  store i32 %160, i32* %23, align 4
  %161 = load i32, i32* @pname, align 4
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @shortpath(i32* null, i8* %162)
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = load i32, i32* %23, align 4
  %167 = call i32 @xstrerror(i32 %166)
  %168 = call i32 (i8*, i32, i8*, ...) @notice(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %161, i8* %165, i32 %167)
  br label %405

169:                                              ; preds = %153
  %170 = load i64, i64* %14, align 8
  %171 = add i64 %170, 1
  %172 = call i8* @xmalloc(i64 %171)
  store i8* %172, i8** %9, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = load i64, i64* %14, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8* %175, i8** %10, align 8
  %176 = load i8*, i8** %10, align 8
  store i8 0, i8* %176, align 1
  %177 = load i32, i32* %21, align 4
  %178 = load i8*, i8** %9, align 8
  %179 = load i64, i64* %14, align 8
  %180 = call i32 @safe_read(i32 %177, i8* %178, i64 %179)
  %181 = load i64, i64* %14, align 8
  %182 = trunc i64 %181 to i32
  %183 = icmp ne i32 %180, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %169
  %185 = load i32, i32* @errno, align 4
  store i32 %185, i32* %24, align 4
  %186 = load i32, i32* @pname, align 4
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 @shortpath(i32* null, i8* %187)
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i8*
  %191 = load i32, i32* %24, align 4
  %192 = call i32 @xstrerror(i32 %191)
  %193 = call i32 (i8*, i32, i8*, ...) @notice(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %186, i8* %190, i32 %192)
  %194 = load i8*, i8** %9, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i32, i32* %21, align 4
  %197 = call i64 @close(i32 %196)
  br label %405

198:                                              ; preds = %169
  %199 = load i32, i32* %21, align 4
  %200 = call i64 @close(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %198
  %203 = load i32, i32* @errno, align 4
  store i32 %203, i32* %25, align 4
  %204 = load i32, i32* @pname, align 4
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 @shortpath(i32* null, i8* %205)
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to i8*
  %209 = load i32, i32* %25, align 4
  %210 = call i32 @xstrerror(i32 %209)
  %211 = call i32 (i8*, i32, i8*, ...) @notice(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %204, i8* %208, i32 %210)
  %212 = load i8*, i8** %9, align 8
  %213 = call i32 @free(i8* %212)
  %214 = load i32, i32* %21, align 4
  %215 = call i64 @close(i32 %214)
  br label %405

216:                                              ; preds = %198
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %216
  %220 = load i32, i32* %5, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %237, label %222

222:                                              ; preds = %219
  %223 = load i8*, i8** %8, align 8
  %224 = call i32 @unlink(i8* %223)
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %236

226:                                              ; preds = %222
  %227 = load i32, i32* @errno, align 4
  store i32 %227, i32* %26, align 4
  %228 = load i32, i32* @pname, align 4
  %229 = load i8*, i8** %8, align 8
  %230 = call i32 @shortpath(i32* null, i8* %229)
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = load i32, i32* %26, align 4
  %234 = call i32 @xstrerror(i32 %233)
  %235 = call i32 (i8*, i32, i8*, ...) @notice(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %228, i8* %232, i32 %234)
  br label %236

236:                                              ; preds = %226, %222
  br label %237

237:                                              ; preds = %236, %219, %216
  %238 = load i8*, i8** %9, align 8
  store i8* %238, i8** %27, align 8
  br label %239

239:                                              ; preds = %244, %237
  %240 = load i8*, i8** %27, align 8
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 58
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load i8*, i8** %27, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %27, align 8
  br label %239

247:                                              ; preds = %239
  %248 = load i8*, i8** %27, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %27, align 8
  br label %250

250:                                              ; preds = %255, %247
  %251 = load i8*, i8** %27, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 32
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load i8*, i8** %27, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %27, align 8
  br label %250

258:                                              ; preds = %250
  %259 = load i8*, i8** %27, align 8
  store i8* %259, i8** @invocation_filename, align 8
  br label %260

260:                                              ; preds = %265, %258
  %261 = load i8*, i8** %27, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, 32
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load i8*, i8** %27, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %27, align 8
  br label %260

268:                                              ; preds = %260
  %269 = load i32, i32* @DIR_SEPARATOR, align 4
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %27, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %27, align 8
  store i8 %270, i8* %271, align 1
  %273 = load i8*, i8** %27, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %27, align 8
  store i8 0, i8* %273, align 1
  br label %275

275:                                              ; preds = %281, %268
  %276 = load i8*, i8** %27, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %27, align 8
  %278 = load i8, i8* %276, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp ne i32 %279, 10
  br i1 %280, label %281, label %282

281:                                              ; preds = %275
  br label %275

282:                                              ; preds = %275
  %283 = load i8*, i8** %27, align 8
  store i8* %283, i8** %12, align 8
  store i8* null, i8** %11, align 8
  %284 = load i8*, i8** @invocation_filename, align 8
  %285 = call i32 @IS_ABSOLUTE_PATH(i8* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %314, label %287

287:                                              ; preds = %282
  %288 = load i64, i64* %7, align 8
  %289 = load i8*, i8** %27, align 8
  %290 = load i8*, i8** @invocation_filename, align 8
  %291 = ptrtoint i8* %289 to i64
  %292 = ptrtoint i8* %290 to i64
  %293 = sub i64 %291, %292
  %294 = add i64 %288, %293
  %295 = call i8* @xmalloc(i64 %294)
  store i8* %295, i8** %11, align 8
  %296 = load i8*, i8** %11, align 8
  %297 = load i8*, i8** %4, align 8
  %298 = call i32 @strcpy(i8* %296, i8* %297)
  %299 = load i8*, i8** %11, align 8
  %300 = load i32, i32* @DIR_SEPARATOR, align 4
  %301 = call i8* @strrchr(i8* %299, i32 %300)
  store i8* %301, i8** %28, align 8
  %302 = load i8*, i8** %28, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %287
  %305 = load i8*, i8** %28, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %28, align 8
  br label %309

307:                                              ; preds = %287
  %308 = load i8*, i8** %11, align 8
  store i8* %308, i8** %28, align 8
  br label %309

309:                                              ; preds = %307, %304
  %310 = load i8*, i8** %28, align 8
  %311 = load i8*, i8** @invocation_filename, align 8
  %312 = call i32 @strcpy(i8* %310, i8* %311)
  %313 = load i8*, i8** %11, align 8
  store i8* %313, i8** @invocation_filename, align 8
  br label %314

314:                                              ; preds = %309, %282
  %315 = load i32, i32* %6, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %365, label %317

317:                                              ; preds = %314
  store i32 2, i32* @current_aux_info_lineno, align 4
  %318 = load i8*, i8** %12, align 8
  store i8* %318, i8** %29, align 8
  br label %319

319:                                              ; preds = %359, %317
  %320 = load i8*, i8** %29, align 8
  %321 = load i8, i8* %320, align 1
  %322 = icmp ne i8 %321, 0
  br i1 %322, label %323, label %364

323:                                              ; preds = %319
  %324 = load i8*, i8** %29, align 8
  %325 = load i64, i64* %13, align 8
  %326 = call i64 @referenced_file_is_newer(i8* %324, i64 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %350

328:                                              ; preds = %323
  %329 = load i8*, i8** %9, align 8
  %330 = call i32 @free(i8* %329)
  %331 = load i8*, i8** %11, align 8
  %332 = call i32 @free(i8* %331)
  %333 = load i32, i32* %5, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %349

335:                                              ; preds = %328
  %336 = load i8*, i8** %8, align 8
  %337 = call i32 @unlink(i8* %336)
  %338 = icmp eq i32 %337, -1
  br i1 %338, label %339, label %349

339:                                              ; preds = %335
  %340 = load i32, i32* @errno, align 4
  store i32 %340, i32* %30, align 4
  %341 = load i32, i32* @pname, align 4
  %342 = load i8*, i8** %8, align 8
  %343 = call i32 @shortpath(i32* null, i8* %342)
  %344 = sext i32 %343 to i64
  %345 = inttoptr i64 %344 to i8*
  %346 = load i32, i32* %30, align 4
  %347 = call i32 @xstrerror(i32 %346)
  %348 = call i32 (i8*, i32, i8*, ...) @notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %341, i8* %345, i32 %347)
  br label %405

349:                                              ; preds = %335, %328
  store i32 1, i32* %15, align 4
  br label %46

350:                                              ; preds = %323
  br label %351

351:                                              ; preds = %356, %350
  %352 = load i8*, i8** %29, align 8
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp ne i32 %354, 10
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = load i8*, i8** %29, align 8
  %358 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %358, i8** %29, align 8
  br label %351

359:                                              ; preds = %351
  %360 = load i8*, i8** %29, align 8
  %361 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %361, i8** %29, align 8
  %362 = load i32, i32* @current_aux_info_lineno, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* @current_aux_info_lineno, align 4
  br label %319

364:                                              ; preds = %319
  br label %365

365:                                              ; preds = %364, %314
  store i32 2, i32* @current_aux_info_lineno, align 4
  %366 = load i8*, i8** %12, align 8
  store i8* %366, i8** %29, align 8
  br label %367

367:                                              ; preds = %395, %365
  %368 = load i8*, i8** %29, align 8
  %369 = load i8, i8* %368, align 1
  %370 = icmp ne i8 %369, 0
  br i1 %370, label %371, label %400

371:                                              ; preds = %367
  %372 = load i8*, i8** %29, align 8
  %373 = call i8* @unexpand_if_needed(i8* %372)
  store i8* %373, i8** %31, align 8
  %374 = load i8*, i8** %31, align 8
  %375 = icmp ne i8* %374, null
  br i1 %375, label %376, label %382

376:                                              ; preds = %371
  %377 = load i8*, i8** %31, align 8
  %378 = load i32, i32* %6, align 4
  %379 = call i32 @save_def_or_dec(i8* %377, i32 %378)
  %380 = load i8*, i8** %31, align 8
  %381 = call i32 @free(i8* %380)
  br label %386

382:                                              ; preds = %371
  %383 = load i8*, i8** %29, align 8
  %384 = load i32, i32* %6, align 4
  %385 = call i32 @save_def_or_dec(i8* %383, i32 %384)
  br label %386

386:                                              ; preds = %382, %376
  br label %387

387:                                              ; preds = %392, %386
  %388 = load i8*, i8** %29, align 8
  %389 = load i8, i8* %388, align 1
  %390 = sext i8 %389 to i32
  %391 = icmp ne i32 %390, 10
  br i1 %391, label %392, label %395

392:                                              ; preds = %387
  %393 = load i8*, i8** %29, align 8
  %394 = getelementptr inbounds i8, i8* %393, i32 1
  store i8* %394, i8** %29, align 8
  br label %387

395:                                              ; preds = %387
  %396 = load i8*, i8** %29, align 8
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %29, align 8
  %398 = load i32, i32* @current_aux_info_lineno, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* @current_aux_info_lineno, align 4
  br label %367

400:                                              ; preds = %367
  %401 = load i8*, i8** %9, align 8
  %402 = call i32 @free(i8* %401)
  %403 = load i8*, i8** %11, align 8
  %404 = call i32 @free(i8* %403)
  br label %405

405:                                              ; preds = %400, %339, %202, %184, %159, %134, %124, %108, %91, %83, %63, %58
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @notice(i8*, i32, i8*, ...) #1

declare dso_local i32 @shortpath(i32*, i8*) #1

declare dso_local i32 @xstrerror(i32) #1

declare dso_local i32 @gen_aux_info_file(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @safe_read(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i64 @referenced_file_is_newer(i8*, i64) #1

declare dso_local i8* @unexpand_if_needed(i8*) #1

declare dso_local i32 @save_def_or_dec(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
