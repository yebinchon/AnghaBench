; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_realpath.c_realpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_realpath.c_realpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@MAXSYMLINKS = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @realpath(i8* noalias %0, i8* noalias %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = mul nuw i64 2, %18
  %21 = alloca i8, i64 %20, align 16
  store i64 %18, i64* %12, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %302

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* @MAXPATHLEN, align 4
  %31 = call i8* @malloc(i32 %30)
  store i8* %31, i8** %5, align 8
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* null, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %302

35:                                               ; preds = %29
  br label %37

36:                                               ; preds = %26
  store i8* null, i8** %13, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %10, align 8
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* @ENOENT, align 4
  store i32 %45, i32* @errno, align 4
  br label %299

46:                                               ; preds = %37
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 47
  br i1 %50, label %51, label %74

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @MAXPATHLEN, align 4
  %57 = call i32* @getcwd(i8* %55, i32 %56)
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 46, i8* %61, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 0, i8* %63, align 1
  br label %299

64:                                               ; preds = %54, %51
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @strlen(i8* %65)
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp ugt i64 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i64, i64* %14, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %10, align 8
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %289, %276, %157, %129, %74
  br label %76

76:                                               ; preds = %81, %75
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 47
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %4, align 8
  br label %76

84:                                               ; preds = %76
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %10, align 8
  store i8 47, i8* %94, align 1
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i8*, i8** %10, align 8
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %5, align 8
  store i8* %98, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %302

99:                                               ; preds = %84
  %100 = load i8*, i8** %4, align 8
  store i8* %100, i8** %9, align 8
  br label %101

101:                                              ; preds = %114, %99
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %9, align 8
  br label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %9, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 47
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i8*, i8** %9, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %109, %104
  %115 = phi i1 [ false, %104 ], [ %113, %109 ]
  br i1 %115, label %101, label %116

116:                                              ; preds = %114
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 46
  br i1 %121, label %122, label %160

122:                                              ; preds = %116
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = icmp eq i64 %127, 1
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i8*, i8** %9, align 8
  store i8* %130, i8** %4, align 8
  br label %75

131:                                              ; preds = %122
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 46
  br i1 %136, label %137, label %159

137:                                              ; preds = %131
  %138 = load i8*, i8** %9, align 8
  %139 = load i8*, i8** %4, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = icmp eq i64 %142, 2
  br i1 %143, label %144, label %159

144:                                              ; preds = %137
  %145 = load i8*, i8** %10, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = icmp ne i8* %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  br label %149

149:                                              ; preds = %155, %148
  %150 = load i8*, i8** %10, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 -1
  store i8* %151, i8** %10, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 47
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %149

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %144
  %158 = load i8*, i8** %9, align 8
  store i8* %158, i8** %4, align 8
  br label %75

159:                                              ; preds = %137, %131
  br label %160

160:                                              ; preds = %159, %116
  %161 = load i8*, i8** %10, align 8
  %162 = load i8*, i8** %5, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = add nsw i64 %165, 1
  %167 = load i8*, i8** %9, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 %166
  %169 = load i8*, i8** %4, align 8
  %170 = ptrtoint i8* %168 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  %173 = add nsw i64 %172, 1
  %174 = load i32, i32* @MAXPATHLEN, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp sgt i64 %173, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %160
  %178 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %178, i32* @errno, align 4
  %179 = load i8*, i8** %10, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = icmp eq i8* %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i8*, i8** %10, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %10, align 8
  store i8 47, i8* %183, align 1
  br label %185

185:                                              ; preds = %182, %177
  %186 = load i8*, i8** %10, align 8
  store i8 0, i8* %186, align 1
  br label %299

187:                                              ; preds = %160
  %188 = load i8*, i8** %10, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  store i8 47, i8* %189, align 1
  %190 = load i8*, i8** %10, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = load i8*, i8** %4, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = load i8*, i8** %4, align 8
  %195 = ptrtoint i8* %193 to i64
  %196 = ptrtoint i8* %194 to i64
  %197 = sub i64 %195, %196
  %198 = call i32 @memcpy(i8* %191, i8* %192, i64 %197)
  %199 = load i8*, i8** %10, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = load i8*, i8** %4, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  %206 = getelementptr inbounds i8, i8* %199, i64 %205
  store i8 0, i8* %206, align 1
  %207 = load i8*, i8** %5, align 8
  %208 = call i32 @lstat(i8* %207, %struct.stat* %6)
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %187
  br label %299

211:                                              ; preds = %187
  %212 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @S_ISLNK(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %277

216:                                              ; preds = %211
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* @MAXSYMLINKS, align 4
  %220 = icmp sge i32 %217, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = load i32, i32* @ELOOP, align 4
  store i32 %222, i32* @errno, align 4
  br label %299

223:                                              ; preds = %216
  %224 = load i8*, i8** %5, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = mul nsw i64 %226, %18
  %228 = getelementptr inbounds i8, i8* %21, i64 %227
  %229 = mul nsw i64 0, %18
  %230 = getelementptr inbounds i8, i8* %21, i64 %229
  %231 = sub i64 %18, 1
  %232 = trunc i64 %231 to i32
  %233 = call i64 @readlink(i8* %224, i8* %228, i32 %232)
  store i64 %233, i64* %15, align 8
  %234 = load i64, i64* %15, align 8
  %235 = icmp ult i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %223
  br label %299

237:                                              ; preds = %223
  %238 = load i64, i64* %15, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = load i32, i32* @ENOENT, align 4
  store i32 %241, i32* @errno, align 4
  br label %299

242:                                              ; preds = %237
  %243 = load i64, i64* %15, align 8
  %244 = load i8*, i8** %9, align 8
  %245 = call i64 @strlen(i8* %244)
  store i64 %245, i64* %14, align 8
  %246 = add i64 %243, %245
  %247 = add i64 %246, 1
  %248 = mul nsw i64 0, %18
  %249 = getelementptr inbounds i8, i8* %21, i64 %248
  %250 = icmp ugt i64 %247, %18
  br i1 %250, label %251, label %253

251:                                              ; preds = %242
  %252 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %252, i32* @errno, align 4
  br label %299

253:                                              ; preds = %242
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %255, %18
  %257 = getelementptr inbounds i8, i8* %21, i64 %256
  %258 = load i64, i64* %15, align 8
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  %260 = load i8*, i8** %9, align 8
  %261 = load i64, i64* %14, align 8
  %262 = add i64 %261, 1
  %263 = call i32 @memcpy(i8* %259, i8* %260, i64 %262)
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = mul nsw i64 %265, %18
  %267 = getelementptr inbounds i8, i8* %21, i64 %266
  store i8* %267, i8** %4, align 8
  %268 = load i32, i32* %7, align 4
  %269 = xor i32 %268, 1
  store i32 %269, i32* %7, align 4
  %270 = load i8*, i8** %4, align 8
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 47
  br i1 %273, label %274, label %276

274:                                              ; preds = %253
  %275 = load i8*, i8** %5, align 8
  store i8* %275, i8** %10, align 8
  br label %276

276:                                              ; preds = %274, %253
  br label %75

277:                                              ; preds = %211
  %278 = load i8*, i8** %9, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 47
  br i1 %281, label %282, label %289

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @S_ISDIR(i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %282
  %288 = load i32, i32* @ENOTDIR, align 4
  store i32 %288, i32* @errno, align 4
  br label %299

289:                                              ; preds = %282, %277
  %290 = load i8*, i8** %9, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 1
  %292 = load i8*, i8** %4, align 8
  %293 = ptrtoint i8* %291 to i64
  %294 = ptrtoint i8* %292 to i64
  %295 = sub i64 %293, %294
  %296 = load i8*, i8** %10, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 %295
  store i8* %297, i8** %10, align 8
  %298 = load i8*, i8** %9, align 8
  store i8* %298, i8** %4, align 8
  br label %75

299:                                              ; preds = %287, %251, %240, %236, %221, %210, %185, %59, %43
  %300 = load i8*, i8** %13, align 8
  %301 = call i32 @free(i8* %300)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %302

302:                                              ; preds = %299, %96, %34, %24
  %303 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %303)
  %304 = load i8*, i8** %3, align 8
  ret i8* %304
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i32* @getcwd(i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i64 @readlink(i8*, i8*, i32) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
