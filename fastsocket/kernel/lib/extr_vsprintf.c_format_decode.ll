; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_vsprintf.c_format_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_vsprintf.c_format_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_spec = type { i64, i32, i32, i32, i32, i32 }

@FORMAT_TYPE_WIDTH = common dso_local global i64 0, align 8
@LEFT = common dso_local global i32 0, align 4
@FORMAT_TYPE_NONE = common dso_local global i8* null, align 8
@FORMAT_TYPE_PRECISION = common dso_local global i64 0, align 8
@PLUS = common dso_local global i32 0, align 4
@SPACE = common dso_local global i32 0, align 4
@SPECIAL = common dso_local global i32 0, align 4
@ZEROPAD = common dso_local global i32 0, align 4
@FORMAT_TYPE_CHAR = common dso_local global i64 0, align 8
@FORMAT_TYPE_STR = common dso_local global i64 0, align 8
@FORMAT_TYPE_PTR = common dso_local global i64 0, align 8
@FORMAT_TYPE_NRCHARS = common dso_local global i64 0, align 8
@FORMAT_TYPE_PERCENT_CHAR = common dso_local global i64 0, align 8
@SMALL = common dso_local global i32 0, align 4
@SIGN = common dso_local global i32 0, align 4
@FORMAT_TYPE_INVALID = common dso_local global i64 0, align 8
@FORMAT_TYPE_LONG_LONG = common dso_local global i64 0, align 8
@FORMAT_TYPE_LONG = common dso_local global i64 0, align 8
@FORMAT_TYPE_ULONG = common dso_local global i64 0, align 8
@FORMAT_TYPE_SIZE_T = common dso_local global i64 0, align 8
@FORMAT_TYPE_PTRDIFF = common dso_local global i64 0, align 8
@FORMAT_TYPE_BYTE = common dso_local global i64 0, align 8
@FORMAT_TYPE_UBYTE = common dso_local global i64 0, align 8
@FORMAT_TYPE_SHORT = common dso_local global i64 0, align 8
@FORMAT_TYPE_USHORT = common dso_local global i64 0, align 8
@FORMAT_TYPE_INT = common dso_local global i64 0, align 8
@FORMAT_TYPE_UINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.printf_spec*)* @format_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_decode(i8* %0, %struct.printf_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.printf_spec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.printf_spec* %1, %struct.printf_spec** %5, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  %9 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %10 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FORMAT_TYPE_WIDTH, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %16 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %21 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 0, %22
  %24 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %25 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @LEFT, align 4
  %27 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %28 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %19, %14
  %32 = load i8*, i8** @FORMAT_TYPE_NONE, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %35 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %164

36:                                               ; preds = %2
  %37 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %38 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FORMAT_TYPE_PRECISION, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %44 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %49 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %48, i32 0, i32 3
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i8*, i8** @FORMAT_TYPE_NONE, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %54 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %210

55:                                               ; preds = %36
  %56 = load i8*, i8** @FORMAT_TYPE_NONE, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %59 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %71, %55
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i8*, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 37
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %74

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  br label %60

74:                                               ; preds = %69, %60
  %75 = load i8*, i8** %4, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %4, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78, %74
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %3, align 4
  br label %485

89:                                               ; preds = %78
  %90 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %91 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %90, i32 0, i32 2
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %133
  store i32 1, i32* %7, align 4
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %4, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  switch i32 %97, label %128 [
    i32 45, label %98
    i32 43, label %104
    i32 32, label %110
    i32 35, label %116
    i32 48, label %122
  ]

98:                                               ; preds = %92
  %99 = load i32, i32* @LEFT, align 4
  %100 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %101 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %129

104:                                              ; preds = %92
  %105 = load i32, i32* @PLUS, align 4
  %106 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %107 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %129

110:                                              ; preds = %92
  %111 = load i32, i32* @SPACE, align 4
  %112 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %113 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %129

116:                                              ; preds = %92
  %117 = load i32, i32* @SPECIAL, align 4
  %118 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %119 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %129

122:                                              ; preds = %92
  %123 = load i32, i32* @ZEROPAD, align 4
  %124 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %125 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %129

128:                                              ; preds = %92
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %128, %122, %116, %110, %104, %98
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %134

133:                                              ; preds = %129
  br label %92

134:                                              ; preds = %132
  %135 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %136 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %135, i32 0, i32 1
  store i32 -1, i32* %136, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = load i8, i8* %137, align 1
  %139 = call i64 @isdigit(i8 signext %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = call i8* @skip_atoi(i8** %4)
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %145 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  br label %163

146:                                              ; preds = %134
  %147 = load i8*, i8** %4, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 42
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load i64, i64* @FORMAT_TYPE_WIDTH, align 8
  %153 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %154 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load i8*, i8** %4, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %4, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %3, align 4
  br label %485

162:                                              ; preds = %146
  br label %163

163:                                              ; preds = %162, %141
  br label %164

164:                                              ; preds = %163, %31
  %165 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %166 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %165, i32 0, i32 3
  store i32 -1, i32* %166, align 8
  %167 = load i8*, i8** %4, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 46
  br i1 %170, label %171, label %209

171:                                              ; preds = %164
  %172 = load i8*, i8** %4, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %4, align 8
  %174 = load i8*, i8** %4, align 8
  %175 = load i8, i8* %174, align 1
  %176 = call i64 @isdigit(i8 signext %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %171
  %179 = call i8* @skip_atoi(i8** %4)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %182 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  %183 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %184 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %189 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %188, i32 0, i32 3
  store i32 0, i32* %189, align 8
  br label %190

190:                                              ; preds = %187, %178
  br label %208

191:                                              ; preds = %171
  %192 = load i8*, i8** %4, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 42
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load i64, i64* @FORMAT_TYPE_PRECISION, align 8
  %198 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %199 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load i8*, i8** %4, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %4, align 8
  %202 = load i8*, i8** %6, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %3, align 4
  br label %485

207:                                              ; preds = %191
  br label %208

208:                                              ; preds = %207, %190
  br label %209

209:                                              ; preds = %208, %164
  br label %210

210:                                              ; preds = %209, %50
  %211 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %212 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %211, i32 0, i32 4
  store i32 -1, i32* %212, align 4
  %213 = load i8*, i8** %4, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 104
  br i1 %216, label %234, label %217

217:                                              ; preds = %210
  %218 = load i8*, i8** %4, align 8
  %219 = load i8, i8* %218, align 1
  %220 = call signext i8 @_tolower(i8 signext %219)
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 108
  br i1 %222, label %234, label %223

223:                                              ; preds = %217
  %224 = load i8*, i8** %4, align 8
  %225 = load i8, i8* %224, align 1
  %226 = call signext i8 @_tolower(i8 signext %225)
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 122
  br i1 %228, label %234, label %229

229:                                              ; preds = %223
  %230 = load i8*, i8** %4, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 116
  br i1 %233, label %234, label %274

234:                                              ; preds = %229, %223, %217, %210
  %235 = load i8*, i8** %4, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %4, align 8
  %237 = load i8, i8* %235, align 1
  %238 = sext i8 %237 to i32
  %239 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %240 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %239, i32 0, i32 4
  store i32 %238, i32* %240, align 4
  %241 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %242 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load i8*, i8** %4, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %243, %246
  %248 = zext i1 %247 to i32
  %249 = call i64 @unlikely(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %273

251:                                              ; preds = %234
  %252 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %253 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 108
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %258 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %257, i32 0, i32 4
  store i32 76, i32* %258, align 4
  %259 = load i8*, i8** %4, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %4, align 8
  br label %272

261:                                              ; preds = %251
  %262 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %263 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 104
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %268 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %267, i32 0, i32 4
  store i32 72, i32* %268, align 4
  %269 = load i8*, i8** %4, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %4, align 8
  br label %271

271:                                              ; preds = %266, %261
  br label %272

272:                                              ; preds = %271, %256
  br label %273

273:                                              ; preds = %272, %234
  br label %274

274:                                              ; preds = %273, %229
  %275 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %276 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %275, i32 0, i32 5
  store i32 10, i32* %276, align 8
  %277 = load i8*, i8** %4, align 8
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  switch i32 %279, label %353 [
    i32 99, label %280
    i32 115, label %291
    i32 112, label %302
    i32 110, label %312
    i32 37, label %323
    i32 111, label %334
    i32 120, label %337
    i32 88, label %343
    i32 100, label %346
    i32 105, label %346
    i32 117, label %352
  ]

280:                                              ; preds = %274
  %281 = load i64, i64* @FORMAT_TYPE_CHAR, align 8
  %282 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %283 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  %284 = load i8*, i8** %4, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %4, align 8
  %286 = load i8*, i8** %6, align 8
  %287 = ptrtoint i8* %285 to i64
  %288 = ptrtoint i8* %286 to i64
  %289 = sub i64 %287, %288
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %3, align 4
  br label %485

291:                                              ; preds = %274
  %292 = load i64, i64* @FORMAT_TYPE_STR, align 8
  %293 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %294 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %293, i32 0, i32 0
  store i64 %292, i64* %294, align 8
  %295 = load i8*, i8** %4, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %4, align 8
  %297 = load i8*, i8** %6, align 8
  %298 = ptrtoint i8* %296 to i64
  %299 = ptrtoint i8* %297 to i64
  %300 = sub i64 %298, %299
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %3, align 4
  br label %485

302:                                              ; preds = %274
  %303 = load i64, i64* @FORMAT_TYPE_PTR, align 8
  %304 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %305 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %304, i32 0, i32 0
  store i64 %303, i64* %305, align 8
  %306 = load i8*, i8** %4, align 8
  %307 = load i8*, i8** %6, align 8
  %308 = ptrtoint i8* %306 to i64
  %309 = ptrtoint i8* %307 to i64
  %310 = sub i64 %308, %309
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %3, align 4
  br label %485

312:                                              ; preds = %274
  %313 = load i64, i64* @FORMAT_TYPE_NRCHARS, align 8
  %314 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %315 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %314, i32 0, i32 0
  store i64 %313, i64* %315, align 8
  %316 = load i8*, i8** %4, align 8
  %317 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %317, i8** %4, align 8
  %318 = load i8*, i8** %6, align 8
  %319 = ptrtoint i8* %317 to i64
  %320 = ptrtoint i8* %318 to i64
  %321 = sub i64 %319, %320
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %3, align 4
  br label %485

323:                                              ; preds = %274
  %324 = load i64, i64* @FORMAT_TYPE_PERCENT_CHAR, align 8
  %325 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %326 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %325, i32 0, i32 0
  store i64 %324, i64* %326, align 8
  %327 = load i8*, i8** %4, align 8
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %4, align 8
  %329 = load i8*, i8** %6, align 8
  %330 = ptrtoint i8* %328 to i64
  %331 = ptrtoint i8* %329 to i64
  %332 = sub i64 %330, %331
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %3, align 4
  br label %485

334:                                              ; preds = %274
  %335 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %336 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %335, i32 0, i32 5
  store i32 8, i32* %336, align 8
  br label %363

337:                                              ; preds = %274
  %338 = load i32, i32* @SMALL, align 4
  %339 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %340 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, %338
  store i32 %342, i32* %340, align 4
  br label %343

343:                                              ; preds = %274, %337
  %344 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %345 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %344, i32 0, i32 5
  store i32 16, i32* %345, align 8
  br label %363

346:                                              ; preds = %274, %274
  %347 = load i32, i32* @SIGN, align 4
  %348 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %349 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 4
  br label %352

352:                                              ; preds = %274, %346
  br label %363

353:                                              ; preds = %274
  %354 = load i64, i64* @FORMAT_TYPE_INVALID, align 8
  %355 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %356 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %355, i32 0, i32 0
  store i64 %354, i64* %356, align 8
  %357 = load i8*, i8** %4, align 8
  %358 = load i8*, i8** %6, align 8
  %359 = ptrtoint i8* %357 to i64
  %360 = ptrtoint i8* %358 to i64
  %361 = sub i64 %359, %360
  %362 = trunc i64 %361 to i32
  store i32 %362, i32* %3, align 4
  br label %485

363:                                              ; preds = %352, %343, %334
  %364 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %365 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 4
  %367 = icmp eq i32 %366, 76
  br i1 %367, label %368, label %372

368:                                              ; preds = %363
  %369 = load i64, i64* @FORMAT_TYPE_LONG_LONG, align 8
  %370 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %371 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %370, i32 0, i32 0
  store i64 %369, i64* %371, align 8
  br label %477

372:                                              ; preds = %363
  %373 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %374 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = icmp eq i32 %375, 108
  br i1 %376, label %377, label %393

377:                                              ; preds = %372
  %378 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %379 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @SIGN, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %377
  %385 = load i64, i64* @FORMAT_TYPE_LONG, align 8
  %386 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %387 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %386, i32 0, i32 0
  store i64 %385, i64* %387, align 8
  br label %392

388:                                              ; preds = %377
  %389 = load i64, i64* @FORMAT_TYPE_ULONG, align 8
  %390 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %391 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %390, i32 0, i32 0
  store i64 %389, i64* %391, align 8
  br label %392

392:                                              ; preds = %388, %384
  br label %476

393:                                              ; preds = %372
  %394 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %395 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 4
  %397 = trunc i32 %396 to i8
  %398 = call signext i8 @_tolower(i8 signext %397)
  %399 = sext i8 %398 to i32
  %400 = icmp eq i32 %399, 122
  br i1 %400, label %401, label %405

401:                                              ; preds = %393
  %402 = load i64, i64* @FORMAT_TYPE_SIZE_T, align 8
  %403 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %404 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %403, i32 0, i32 0
  store i64 %402, i64* %404, align 8
  br label %475

405:                                              ; preds = %393
  %406 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %407 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %406, i32 0, i32 4
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %408, 116
  br i1 %409, label %410, label %414

410:                                              ; preds = %405
  %411 = load i64, i64* @FORMAT_TYPE_PTRDIFF, align 8
  %412 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %413 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %412, i32 0, i32 0
  store i64 %411, i64* %413, align 8
  br label %474

414:                                              ; preds = %405
  %415 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %416 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 4
  %418 = icmp eq i32 %417, 72
  br i1 %418, label %419, label %435

419:                                              ; preds = %414
  %420 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %421 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @SIGN, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %419
  %427 = load i64, i64* @FORMAT_TYPE_BYTE, align 8
  %428 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %429 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %428, i32 0, i32 0
  store i64 %427, i64* %429, align 8
  br label %434

430:                                              ; preds = %419
  %431 = load i64, i64* @FORMAT_TYPE_UBYTE, align 8
  %432 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %433 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %432, i32 0, i32 0
  store i64 %431, i64* %433, align 8
  br label %434

434:                                              ; preds = %430, %426
  br label %473

435:                                              ; preds = %414
  %436 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %437 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %436, i32 0, i32 4
  %438 = load i32, i32* %437, align 4
  %439 = icmp eq i32 %438, 104
  br i1 %439, label %440, label %456

440:                                              ; preds = %435
  %441 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %442 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @SIGN, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %440
  %448 = load i64, i64* @FORMAT_TYPE_SHORT, align 8
  %449 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %450 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %449, i32 0, i32 0
  store i64 %448, i64* %450, align 8
  br label %455

451:                                              ; preds = %440
  %452 = load i64, i64* @FORMAT_TYPE_USHORT, align 8
  %453 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %454 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %453, i32 0, i32 0
  store i64 %452, i64* %454, align 8
  br label %455

455:                                              ; preds = %451, %447
  br label %472

456:                                              ; preds = %435
  %457 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %458 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @SIGN, align 4
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %467

463:                                              ; preds = %456
  %464 = load i64, i64* @FORMAT_TYPE_INT, align 8
  %465 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %466 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %465, i32 0, i32 0
  store i64 %464, i64* %466, align 8
  br label %471

467:                                              ; preds = %456
  %468 = load i64, i64* @FORMAT_TYPE_UINT, align 8
  %469 = load %struct.printf_spec*, %struct.printf_spec** %5, align 8
  %470 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %469, i32 0, i32 0
  store i64 %468, i64* %470, align 8
  br label %471

471:                                              ; preds = %467, %463
  br label %472

472:                                              ; preds = %471, %455
  br label %473

473:                                              ; preds = %472, %434
  br label %474

474:                                              ; preds = %473, %410
  br label %475

475:                                              ; preds = %474, %401
  br label %476

476:                                              ; preds = %475, %392
  br label %477

477:                                              ; preds = %476, %368
  %478 = load i8*, i8** %4, align 8
  %479 = getelementptr inbounds i8, i8* %478, i32 1
  store i8* %479, i8** %4, align 8
  %480 = load i8*, i8** %6, align 8
  %481 = ptrtoint i8* %479 to i64
  %482 = ptrtoint i8* %480 to i64
  %483 = sub i64 %481, %482
  %484 = trunc i64 %483 to i32
  store i32 %484, i32* %3, align 4
  br label %485

485:                                              ; preds = %477, %353, %323, %312, %302, %291, %280, %196, %151, %82
  %486 = load i32, i32* %3, align 4
  ret i32 %486
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @skip_atoi(i8**) #1

declare dso_local signext i8 @_tolower(i8 signext) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
