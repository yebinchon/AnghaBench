; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_read_specs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_read_specs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_list = type { i32, i8*, i8**, i64, %struct.spec_list* }
%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"%include\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"specs %%include syntax malformed after %ld characters\00", align 1
@startfile_prefixes = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%include_noerr\00", align 1
@verbose_flag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"could not find specs file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%rename\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"specs %%rename syntax malformed after %ld characters\00", align 1
@specs = common dso_local global %struct.spec_list* null, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"specs %s spec was not found to be renamed\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"%s: attempt to rename spec '%s' to already defined spec '%s'\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"rename spec %s to %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"specs unknown %% command after %ld characters\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"specs file malformed after %ld characters\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"*link_command\00", align 1
@link_command_spec = common dso_local global i8* null, align 8
@compilers = common dso_local global %struct.TYPE_5__* null, align 8
@n_compilers = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"spec file has no spec for linking\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @read_specs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_specs(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.spec_list*, align 8
  %18 = alloca %struct.spec_list*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @load_specs(i8* %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %2, %123, %198, %382, %429, %678
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @skip_whitespace(i8* %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %679

30:                                               ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %445

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %445, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %52, %38
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 10
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ false, %40 ], [ %49, %45 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  br label %40

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @strncmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %126, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 32
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %73, label %126

73:                                               ; preds = %67, %61
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 9
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %88, %73
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %11, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 9
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ true, %76 ], [ %85, %81 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %11, align 8
  br label %76

91:                                               ; preds = %86
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %11, align 8
  %94 = load i8, i8* %92, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 60
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 -2
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 62
  br i1 %102, label %103, label %111

103:                                              ; preds = %97, %91
  %104 = load i8*, i8** %11, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = add nsw i64 %108, 1
  %110 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  br label %111

111:                                              ; preds = %103, %97
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 -2
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* @R_OK, align 4
  %116 = call i8* @find_a_file(i32* @startfile_prefixes, i8* %114, i32 %115, i32 1)
  store i8* %116, i8** %14, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i8*, i8** %14, align 8
  br label %123

121:                                              ; preds = %111
  %122 = load i8*, i8** %11, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i8* [ %120, %119 ], [ %122, %121 ]
  %125 = load i32, i32* @FALSE, align 4
  call void @read_specs(i8* %124, i32 %125)
  br label %22

126:                                              ; preds = %67, %55
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 @strncmp(i8* %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 14)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %199, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 14
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 32
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 14
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 9
  br i1 %141, label %142, label %199

142:                                              ; preds = %136, %130
  %143 = load i8*, i8** %11, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 15
  store i8* %144, i8** %11, align 8
  br label %145

145:                                              ; preds = %157, %142
  %146 = load i8*, i8** %11, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 32
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load i8*, i8** %11, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 9
  br label %155

155:                                              ; preds = %150, %145
  %156 = phi i1 [ true, %145 ], [ %154, %150 ]
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %11, align 8
  br label %145

160:                                              ; preds = %155
  %161 = load i8*, i8** %11, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %11, align 8
  %163 = load i8, i8* %161, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 60
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 -2
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 62
  br i1 %171, label %172, label %180

172:                                              ; preds = %166, %160
  %173 = load i8*, i8** %11, align 8
  %174 = load i8*, i8** %5, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = add nsw i64 %177, 1
  %179 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %178)
  br label %180

180:                                              ; preds = %172, %166
  %181 = load i8*, i8** %6, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 -2
  store i8 0, i8* %182, align 1
  %183 = load i8*, i8** %11, align 8
  %184 = load i32, i32* @R_OK, align 4
  %185 = call i8* @find_a_file(i32* @startfile_prefixes, i8* %183, i32 %184, i32 1)
  store i8* %185, i8** %15, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load i8*, i8** %15, align 8
  %190 = load i32, i32* @FALSE, align 4
  call void @read_specs(i8* %189, i32 %190)
  br label %198

191:                                              ; preds = %180
  %192 = load i64, i64* @verbose_flag, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i8*, i8** %11, align 8
  %196 = call i32 (i8*, i8*, ...) @notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %194, %191
  br label %198

198:                                              ; preds = %197, %188
  br label %22

199:                                              ; preds = %136, %126
  %200 = load i8*, i8** %11, align 8
  %201 = call i32 @strncmp(i8* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %435, label %203

203:                                              ; preds = %199
  %204 = load i8*, i8** %11, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 7
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 32
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = load i8*, i8** %11, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 7
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 9
  br i1 %214, label %215, label %435

215:                                              ; preds = %209, %203
  %216 = load i8*, i8** %11, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 8
  store i8* %217, i8** %11, align 8
  br label %218

218:                                              ; preds = %230, %215
  %219 = load i8*, i8** %11, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 32
  br i1 %222, label %228, label %223

223:                                              ; preds = %218
  %224 = load i8*, i8** %11, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 9
  br label %228

228:                                              ; preds = %223, %218
  %229 = phi i1 [ true, %218 ], [ %227, %223 ]
  br i1 %229, label %230, label %233

230:                                              ; preds = %228
  %231 = load i8*, i8** %11, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %11, align 8
  br label %218

233:                                              ; preds = %228
  %234 = load i8*, i8** %11, align 8
  %235 = load i8, i8* %234, align 1
  %236 = call i32 @ISALPHA(i8 zeroext %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %233
  %239 = load i8*, i8** %11, align 8
  %240 = load i8*, i8** %5, align 8
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %243)
  br label %245

245:                                              ; preds = %238, %233
  %246 = load i8*, i8** %11, align 8
  store i8* %246, i8** %12, align 8
  br label %247

247:                                              ; preds = %260, %245
  %248 = load i8*, i8** %12, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %247
  %253 = load i8*, i8** %12, align 8
  %254 = load i8, i8* %253, align 1
  %255 = call i32 @ISSPACE(i8 zeroext %254)
  %256 = icmp ne i32 %255, 0
  %257 = xor i1 %256, true
  br label %258

258:                                              ; preds = %252, %247
  %259 = phi i1 [ false, %247 ], [ %257, %252 ]
  br i1 %259, label %260, label %263

260:                                              ; preds = %258
  %261 = load i8*, i8** %12, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %12, align 8
  br label %247

263:                                              ; preds = %258
  %264 = load i8*, i8** %12, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp ne i32 %266, 32
  br i1 %267, label %268, label %280

268:                                              ; preds = %263
  %269 = load i8*, i8** %12, align 8
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp ne i32 %271, 9
  br i1 %272, label %273, label %280

273:                                              ; preds = %268
  %274 = load i8*, i8** %12, align 8
  %275 = load i8*, i8** %5, align 8
  %276 = ptrtoint i8* %274 to i64
  %277 = ptrtoint i8* %275 to i64
  %278 = sub i64 %276, %277
  %279 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %278)
  br label %280

280:                                              ; preds = %273, %268, %263
  %281 = load i8*, i8** %12, align 8
  %282 = load i8*, i8** %11, align 8
  %283 = ptrtoint i8* %281 to i64
  %284 = ptrtoint i8* %282 to i64
  %285 = sub i64 %283, %284
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %16, align 4
  %287 = load i8*, i8** %12, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %12, align 8
  store i8 0, i8* %287, align 1
  br label %289

289:                                              ; preds = %301, %280
  %290 = load i8*, i8** %12, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 32
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = load i8*, i8** %12, align 8
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp eq i32 %297, 9
  br label %299

299:                                              ; preds = %294, %289
  %300 = phi i1 [ true, %289 ], [ %298, %294 ]
  br i1 %300, label %301, label %304

301:                                              ; preds = %299
  %302 = load i8*, i8** %12, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %12, align 8
  br label %289

304:                                              ; preds = %299
  %305 = load i8*, i8** %12, align 8
  %306 = load i8, i8* %305, align 1
  %307 = call i32 @ISALPHA(i8 zeroext %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %304
  %310 = load i8*, i8** %12, align 8
  %311 = load i8*, i8** %5, align 8
  %312 = ptrtoint i8* %310 to i64
  %313 = ptrtoint i8* %311 to i64
  %314 = sub i64 %312, %313
  %315 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %314)
  br label %316

316:                                              ; preds = %309, %304
  %317 = load i8*, i8** %12, align 8
  store i8* %317, i8** %13, align 8
  br label %318

318:                                              ; preds = %331, %316
  %319 = load i8*, i8** %13, align 8
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %318
  %324 = load i8*, i8** %13, align 8
  %325 = load i8, i8* %324, align 1
  %326 = call i32 @ISSPACE(i8 zeroext %325)
  %327 = icmp ne i32 %326, 0
  %328 = xor i1 %327, true
  br label %329

329:                                              ; preds = %323, %318
  %330 = phi i1 [ false, %318 ], [ %328, %323 ]
  br i1 %330, label %331, label %334

331:                                              ; preds = %329
  %332 = load i8*, i8** %13, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %13, align 8
  br label %318

334:                                              ; preds = %329
  %335 = load i8*, i8** %13, align 8
  %336 = load i8*, i8** %6, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 -1
  %338 = icmp ne i8* %335, %337
  br i1 %338, label %339, label %346

339:                                              ; preds = %334
  %340 = load i8*, i8** %13, align 8
  %341 = load i8*, i8** %5, align 8
  %342 = ptrtoint i8* %340 to i64
  %343 = ptrtoint i8* %341 to i64
  %344 = sub i64 %342, %343
  %345 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %344)
  br label %346

346:                                              ; preds = %339, %334
  %347 = load i8*, i8** %13, align 8
  store i8 0, i8* %347, align 1
  %348 = load %struct.spec_list*, %struct.spec_list** @specs, align 8
  store %struct.spec_list* %348, %struct.spec_list** %17, align 8
  br label %349

349:                                              ; preds = %367, %346
  %350 = load %struct.spec_list*, %struct.spec_list** %17, align 8
  %351 = icmp ne %struct.spec_list* %350, null
  br i1 %351, label %352, label %371

352:                                              ; preds = %349
  %353 = load i32, i32* %16, align 4
  %354 = load %struct.spec_list*, %struct.spec_list** %17, align 8
  %355 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp eq i32 %353, %356
  br i1 %357, label %358, label %366

358:                                              ; preds = %352
  %359 = load %struct.spec_list*, %struct.spec_list** %17, align 8
  %360 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %359, i32 0, i32 1
  %361 = load i8*, i8** %360, align 8
  %362 = load i8*, i8** %11, align 8
  %363 = call i64 @strcmp(i8* %361, i8* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %358
  br label %371

366:                                              ; preds = %358, %352
  br label %367

367:                                              ; preds = %366
  %368 = load %struct.spec_list*, %struct.spec_list** %17, align 8
  %369 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %368, i32 0, i32 4
  %370 = load %struct.spec_list*, %struct.spec_list** %369, align 8
  store %struct.spec_list* %370, %struct.spec_list** %17, align 8
  br label %349

371:                                              ; preds = %365, %349
  %372 = load %struct.spec_list*, %struct.spec_list** %17, align 8
  %373 = icmp ne %struct.spec_list* %372, null
  br i1 %373, label %377, label %374

374:                                              ; preds = %371
  %375 = load i8*, i8** %11, align 8
  %376 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %375)
  br label %377

377:                                              ; preds = %374, %371
  %378 = load i8*, i8** %11, align 8
  %379 = load i8*, i8** %12, align 8
  %380 = call i64 @strcmp(i8* %378, i8* %379)
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  br label %22

383:                                              ; preds = %377
  %384 = load %struct.spec_list*, %struct.spec_list** @specs, align 8
  store %struct.spec_list* %384, %struct.spec_list** %18, align 8
  br label %385

385:                                              ; preds = %401, %383
  %386 = load %struct.spec_list*, %struct.spec_list** %18, align 8
  %387 = icmp ne %struct.spec_list* %386, null
  br i1 %387, label %388, label %405

388:                                              ; preds = %385
  %389 = load %struct.spec_list*, %struct.spec_list** %18, align 8
  %390 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %389, i32 0, i32 1
  %391 = load i8*, i8** %390, align 8
  %392 = load i8*, i8** %12, align 8
  %393 = call i64 @strcmp(i8* %391, i8* %392)
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %388
  %396 = load i8*, i8** %3, align 8
  %397 = load i8*, i8** %11, align 8
  %398 = load i8*, i8** %12, align 8
  %399 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* %396, i8* %397, i8* %398)
  br label %400

400:                                              ; preds = %395, %388
  br label %401

401:                                              ; preds = %400
  %402 = load %struct.spec_list*, %struct.spec_list** %18, align 8
  %403 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %402, i32 0, i32 4
  %404 = load %struct.spec_list*, %struct.spec_list** %403, align 8
  store %struct.spec_list* %404, %struct.spec_list** %18, align 8
  br label %385

405:                                              ; preds = %385
  %406 = load i64, i64* @verbose_flag, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = load i8*, i8** %11, align 8
  %410 = load i8*, i8** %12, align 8
  %411 = call i32 (i8*, i8*, ...) @notice(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %409, i8* %410)
  br label %412

412:                                              ; preds = %408, %405
  %413 = load i8*, i8** %12, align 8
  %414 = load %struct.spec_list*, %struct.spec_list** %17, align 8
  %415 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %414, i32 0, i32 2
  %416 = load i8**, i8*** %415, align 8
  %417 = load i8*, i8** %416, align 8
  %418 = call i32 @set_spec(i8* %413, i8* %417)
  %419 = load %struct.spec_list*, %struct.spec_list** %17, align 8
  %420 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %429

423:                                              ; preds = %412
  %424 = load %struct.spec_list*, %struct.spec_list** %17, align 8
  %425 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %424, i32 0, i32 2
  %426 = load i8**, i8*** %425, align 8
  %427 = load i8*, i8** %426, align 8
  %428 = call i32 @free(i8* %427)
  br label %429

429:                                              ; preds = %423, %412
  %430 = load %struct.spec_list*, %struct.spec_list** %17, align 8
  %431 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %430, i32 0, i32 2
  %432 = load i8**, i8*** %431, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8** %432, align 8
  %433 = load %struct.spec_list*, %struct.spec_list** %17, align 8
  %434 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %433, i32 0, i32 3
  store i64 0, i64* %434, align 8
  br label %22

435:                                              ; preds = %209, %199
  %436 = load i8*, i8** %11, align 8
  %437 = load i8*, i8** %5, align 8
  %438 = ptrtoint i8* %436 to i64
  %439 = ptrtoint i8* %437 to i64
  %440 = sub i64 %438, %439
  %441 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i64 %440)
  br label %442

442:                                              ; preds = %435
  br label %443

443:                                              ; preds = %442
  br label %444

444:                                              ; preds = %443
  br label %445

445:                                              ; preds = %444, %35, %30
  %446 = load i8*, i8** %6, align 8
  store i8* %446, i8** %11, align 8
  br label %447

447:                                              ; preds = %464, %445
  %448 = load i8*, i8** %11, align 8
  %449 = load i8, i8* %448, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %462

452:                                              ; preds = %447
  %453 = load i8*, i8** %11, align 8
  %454 = load i8, i8* %453, align 1
  %455 = sext i8 %454 to i32
  %456 = icmp ne i32 %455, 58
  br i1 %456, label %457, label %462

457:                                              ; preds = %452
  %458 = load i8*, i8** %11, align 8
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  %461 = icmp ne i32 %460, 10
  br label %462

462:                                              ; preds = %457, %452, %447
  %463 = phi i1 [ false, %452 ], [ false, %447 ], [ %461, %457 ]
  br i1 %463, label %464, label %467

464:                                              ; preds = %462
  %465 = load i8*, i8** %11, align 8
  %466 = getelementptr inbounds i8, i8* %465, i32 1
  store i8* %466, i8** %11, align 8
  br label %447

467:                                              ; preds = %462
  %468 = load i8*, i8** %11, align 8
  %469 = load i8, i8* %468, align 1
  %470 = sext i8 %469 to i32
  %471 = icmp ne i32 %470, 58
  br i1 %471, label %472, label %479

472:                                              ; preds = %467
  %473 = load i8*, i8** %11, align 8
  %474 = load i8*, i8** %5, align 8
  %475 = ptrtoint i8* %473 to i64
  %476 = ptrtoint i8* %474 to i64
  %477 = sub i64 %475, %476
  %478 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i64 %477)
  br label %479

479:                                              ; preds = %472, %467
  %480 = load i8*, i8** %11, align 8
  store i8* %480, i8** %12, align 8
  br label %481

481:                                              ; preds = %501, %479
  %482 = load i8*, i8** %12, align 8
  %483 = load i8*, i8** %5, align 8
  %484 = icmp ugt i8* %482, %483
  br i1 %484, label %485, label %499

485:                                              ; preds = %481
  %486 = load i8*, i8** %12, align 8
  %487 = getelementptr inbounds i8, i8* %486, i64 -1
  %488 = load i8, i8* %487, align 1
  %489 = sext i8 %488 to i32
  %490 = icmp eq i32 %489, 32
  br i1 %490, label %497, label %491

491:                                              ; preds = %485
  %492 = load i8*, i8** %12, align 8
  %493 = getelementptr inbounds i8, i8* %492, i64 -1
  %494 = load i8, i8* %493, align 1
  %495 = sext i8 %494 to i32
  %496 = icmp eq i32 %495, 9
  br label %497

497:                                              ; preds = %491, %485
  %498 = phi i1 [ true, %485 ], [ %496, %491 ]
  br label %499

499:                                              ; preds = %497, %481
  %500 = phi i1 [ false, %481 ], [ %498, %497 ]
  br i1 %500, label %501, label %504

501:                                              ; preds = %499
  %502 = load i8*, i8** %12, align 8
  %503 = getelementptr inbounds i8, i8* %502, i32 -1
  store i8* %503, i8** %12, align 8
  br label %481

504:                                              ; preds = %499
  %505 = load i8*, i8** %6, align 8
  %506 = load i8*, i8** %12, align 8
  %507 = load i8*, i8** %6, align 8
  %508 = ptrtoint i8* %506 to i64
  %509 = ptrtoint i8* %507 to i64
  %510 = sub i64 %508, %509
  %511 = trunc i64 %510 to i32
  %512 = call i8* @save_string(i8* %505, i32 %511)
  store i8* %512, i8** %7, align 8
  %513 = load i8*, i8** %11, align 8
  %514 = getelementptr inbounds i8, i8* %513, i64 1
  %515 = call i8* @skip_whitespace(i8* %514)
  store i8* %515, i8** %6, align 8
  %516 = load i8*, i8** %6, align 8
  %517 = getelementptr inbounds i8, i8* %516, i64 1
  %518 = load i8, i8* %517, align 1
  %519 = sext i8 %518 to i32
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %528

521:                                              ; preds = %504
  %522 = load i8*, i8** %6, align 8
  %523 = load i8*, i8** %5, align 8
  %524 = ptrtoint i8* %522 to i64
  %525 = ptrtoint i8* %523 to i64
  %526 = sub i64 %524, %525
  %527 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i64 %526)
  br label %528

528:                                              ; preds = %521, %504
  %529 = load i8*, i8** %6, align 8
  store i8* %529, i8** %11, align 8
  br label %530

530:                                              ; preds = %559, %528
  %531 = load i8*, i8** %11, align 8
  %532 = load i8, i8* %531, align 1
  %533 = sext i8 %532 to i32
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %557

535:                                              ; preds = %530
  %536 = load i8*, i8** %11, align 8
  %537 = load i8, i8* %536, align 1
  %538 = sext i8 %537 to i32
  %539 = icmp eq i32 %538, 10
  br i1 %539, label %540, label %554

540:                                              ; preds = %535
  %541 = load i8*, i8** %11, align 8
  %542 = getelementptr inbounds i8, i8* %541, i64 1
  %543 = load i8, i8* %542, align 1
  %544 = sext i8 %543 to i32
  %545 = icmp eq i32 %544, 10
  br i1 %545, label %552, label %546

546:                                              ; preds = %540
  %547 = load i8*, i8** %11, align 8
  %548 = getelementptr inbounds i8, i8* %547, i64 1
  %549 = load i8, i8* %548, align 1
  %550 = sext i8 %549 to i32
  %551 = icmp eq i32 %550, 0
  br label %552

552:                                              ; preds = %546, %540
  %553 = phi i1 [ true, %540 ], [ %551, %546 ]
  br label %554

554:                                              ; preds = %552, %535
  %555 = phi i1 [ false, %535 ], [ %553, %552 ]
  %556 = xor i1 %555, true
  br label %557

557:                                              ; preds = %554, %530
  %558 = phi i1 [ false, %530 ], [ %556, %554 ]
  br i1 %558, label %559, label %562

559:                                              ; preds = %557
  %560 = load i8*, i8** %11, align 8
  %561 = getelementptr inbounds i8, i8* %560, i32 1
  store i8* %561, i8** %11, align 8
  br label %530

562:                                              ; preds = %557
  %563 = load i8*, i8** %6, align 8
  %564 = load i8*, i8** %11, align 8
  %565 = load i8*, i8** %6, align 8
  %566 = ptrtoint i8* %564 to i64
  %567 = ptrtoint i8* %565 to i64
  %568 = sub i64 %566, %567
  %569 = trunc i64 %568 to i32
  %570 = call i8* @save_string(i8* %563, i32 %569)
  store i8* %570, i8** %8, align 8
  %571 = load i8*, i8** %11, align 8
  store i8* %571, i8** %6, align 8
  %572 = load i8*, i8** %8, align 8
  store i8* %572, i8** %9, align 8
  %573 = load i8*, i8** %8, align 8
  store i8* %573, i8** %10, align 8
  br label %574

574:                                              ; preds = %624, %562
  %575 = load i8*, i8** %9, align 8
  %576 = load i8, i8* %575, align 1
  %577 = sext i8 %576 to i32
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %625

579:                                              ; preds = %574
  %580 = load i8*, i8** %9, align 8
  %581 = getelementptr inbounds i8, i8* %580, i64 0
  %582 = load i8, i8* %581, align 1
  %583 = sext i8 %582 to i32
  %584 = icmp eq i32 %583, 92
  br i1 %584, label %585, label %594

585:                                              ; preds = %579
  %586 = load i8*, i8** %9, align 8
  %587 = getelementptr inbounds i8, i8* %586, i64 1
  %588 = load i8, i8* %587, align 1
  %589 = sext i8 %588 to i32
  %590 = icmp eq i32 %589, 10
  br i1 %590, label %591, label %594

591:                                              ; preds = %585
  %592 = load i8*, i8** %9, align 8
  %593 = getelementptr inbounds i8, i8* %592, i64 2
  store i8* %593, i8** %9, align 8
  br label %624

594:                                              ; preds = %585, %579
  %595 = load i8*, i8** %9, align 8
  %596 = getelementptr inbounds i8, i8* %595, i64 0
  %597 = load i8, i8* %596, align 1
  %598 = sext i8 %597 to i32
  %599 = icmp eq i32 %598, 35
  br i1 %599, label %600, label %617

600:                                              ; preds = %594
  br label %601

601:                                              ; preds = %613, %600
  %602 = load i8*, i8** %9, align 8
  %603 = load i8, i8* %602, align 1
  %604 = sext i8 %603 to i32
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %611

606:                                              ; preds = %601
  %607 = load i8*, i8** %9, align 8
  %608 = load i8, i8* %607, align 1
  %609 = sext i8 %608 to i32
  %610 = icmp ne i32 %609, 10
  br label %611

611:                                              ; preds = %606, %601
  %612 = phi i1 [ false, %601 ], [ %610, %606 ]
  br i1 %612, label %613, label %616

613:                                              ; preds = %611
  %614 = load i8*, i8** %9, align 8
  %615 = getelementptr inbounds i8, i8* %614, i32 1
  store i8* %615, i8** %9, align 8
  br label %601

616:                                              ; preds = %611
  br label %623

617:                                              ; preds = %594
  %618 = load i8*, i8** %9, align 8
  %619 = getelementptr inbounds i8, i8* %618, i32 1
  store i8* %619, i8** %9, align 8
  %620 = load i8, i8* %618, align 1
  %621 = load i8*, i8** %10, align 8
  %622 = getelementptr inbounds i8, i8* %621, i32 1
  store i8* %622, i8** %10, align 8
  store i8 %620, i8* %621, align 1
  br label %623

623:                                              ; preds = %617, %616
  br label %624

624:                                              ; preds = %623, %591
  br label %574

625:                                              ; preds = %574
  %626 = load i8*, i8** %10, align 8
  store i8 0, i8* %626, align 1
  %627 = load i8*, i8** %7, align 8
  %628 = getelementptr inbounds i8, i8* %627, i64 0
  %629 = load i8, i8* %628, align 1
  %630 = sext i8 %629 to i32
  %631 = icmp eq i32 %630, 42
  br i1 %631, label %632, label %644

632:                                              ; preds = %625
  %633 = load i8*, i8** %7, align 8
  %634 = call i64 @strcmp(i8* %633, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %635 = icmp ne i64 %634, 0
  br i1 %635, label %638, label %636

636:                                              ; preds = %632
  %637 = load i8*, i8** %8, align 8
  store i8* %637, i8** @link_command_spec, align 8
  br label %643

638:                                              ; preds = %632
  %639 = load i8*, i8** %7, align 8
  %640 = getelementptr inbounds i8, i8* %639, i64 1
  %641 = load i8*, i8** %8, align 8
  %642 = call i32 @set_spec(i8* %640, i8* %641)
  br label %643

643:                                              ; preds = %638, %636
  br label %671

644:                                              ; preds = %625
  %645 = load %struct.TYPE_5__*, %struct.TYPE_5__** @compilers, align 8
  %646 = load i32, i32* @n_compilers, align 4
  %647 = add nsw i32 %646, 2
  %648 = sext i32 %647 to i64
  %649 = mul i64 %648, 4
  %650 = trunc i64 %649 to i32
  %651 = call %struct.TYPE_5__* @xrealloc(%struct.TYPE_5__* %645, i32 %650)
  store %struct.TYPE_5__* %651, %struct.TYPE_5__** @compilers, align 8
  %652 = load i8*, i8** %7, align 8
  %653 = load %struct.TYPE_5__*, %struct.TYPE_5__** @compilers, align 8
  %654 = load i32, i32* @n_compilers, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %653, i64 %655
  %657 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %656, i32 0, i32 0
  store i8* %652, i8** %657, align 8
  %658 = load i8*, i8** %8, align 8
  %659 = load %struct.TYPE_5__*, %struct.TYPE_5__** @compilers, align 8
  %660 = load i32, i32* @n_compilers, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %659, i64 %661
  %663 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %662, i32 0, i32 1
  store i8* %658, i8** %663, align 8
  %664 = load i32, i32* @n_compilers, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* @n_compilers, align 4
  %666 = load %struct.TYPE_5__*, %struct.TYPE_5__** @compilers, align 8
  %667 = load i32, i32* @n_compilers, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %666, i64 %668
  %670 = call i32 @memset(%struct.TYPE_5__* %669, i32 0, i32 16)
  br label %671

671:                                              ; preds = %644, %643
  %672 = load i8*, i8** %7, align 8
  %673 = load i8, i8* %672, align 1
  %674 = sext i8 %673 to i32
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %678

676:                                              ; preds = %671
  %677 = load i8*, i8** %8, align 8
  store i8* %677, i8** @link_command_spec, align 8
  br label %678

678:                                              ; preds = %676, %671
  br label %22

679:                                              ; preds = %29
  %680 = load i8*, i8** @link_command_spec, align 8
  %681 = icmp eq i8* %680, null
  br i1 %681, label %682, label %684

682:                                              ; preds = %679
  %683 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  br label %684

684:                                              ; preds = %682, %679
  ret void
}

declare dso_local i8* @load_specs(i8*) #1

declare dso_local i8* @skip_whitespace(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i8* @find_a_file(i32*, i8*, i32, i32) #1

declare dso_local i32 @notice(i8*, i8*, ...) #1

declare dso_local i32 @ISALPHA(i8 zeroext) #1

declare dso_local i32 @ISSPACE(i8 zeroext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_spec(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @save_string(i8*, i32) #1

declare dso_local %struct.TYPE_5__* @xrealloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
