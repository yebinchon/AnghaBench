; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_sockaddr_snprintf.c_sockaddr_snprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_sockaddr_snprintf.c_sockaddr_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32 }
%struct.sockaddr_un = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sockaddr_snprintf(i8* %0, i64 %1, i8* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca [1024 x i8], align 16
  %15 = alloca [32 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.sockaddr_in*, align 8
  %24 = alloca %struct.sockaddr_in6*, align 8
  %25 = alloca %struct.sockaddr_un*, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %18, align 8
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %19, align 8
  store i32 -1, i32* %22, align 4
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %23, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %24, align 8
  store %struct.sockaddr_un* null, %struct.sockaddr_un** %25, align 8
  store i32 1, i32* %26, align 4
  %32 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %67 [
    i32 128, label %35
    i32 129, label %36
    i32 132, label %45
    i32 131, label %56
  ]

35:                                               ; preds = %4
  br label %776

36:                                               ; preds = %4
  %37 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %38 = bitcast %struct.sockaddr* %37 to i8*
  %39 = bitcast i8* %38 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %39, %struct.sockaddr_un** %25, align 8
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8* %40, i8** %13, align 8
  %41 = load %struct.sockaddr_un*, %struct.sockaddr_un** %25, align 8
  %42 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strlcpy(i8* %40, i32 %43, i32 1024)
  br label %69

45:                                               ; preds = %4
  %46 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %47 = bitcast %struct.sockaddr* %46 to i8*
  %48 = bitcast i8* %47 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %48, %struct.sockaddr_in** %23, align 8
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %23, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohs(i32 %51)
  store i32 %52, i32* %22, align 4
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %23, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 0
  %55 = bitcast i32* %54 to i8*
  store i8* %55, i8** %10, align 8
  br label %69

56:                                               ; preds = %4
  %57 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %58 = bitcast %struct.sockaddr* %57 to i8*
  %59 = bitcast i8* %58 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %59, %struct.sockaddr_in6** %24, align 8
  %60 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  store i32 %63, i32* %22, align 4
  %64 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %64, i32 0, i32 2
  %66 = bitcast i32* %65 to i8*
  store i8* %66, i8** %10, align 8
  br label %69

67:                                               ; preds = %4
  %68 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %68, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %798

69:                                               ; preds = %56, %45, %36
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i8*, i8** %13, align 8
  store i8* %74, i8** %16, align 8
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %80 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %81 = call i32 @SLEN(%struct.sockaddr* %80)
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8* %82, i8** %13, align 8
  %83 = load i32, i32* @NI_NUMERICHOST, align 4
  %84 = load i32, i32* @NI_NUMERICSERV, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @getnameinfo(%struct.sockaddr* %79, i32 %81, i8* %82, i32 1024, i8* null, i32 0, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %798

89:                                               ; preds = %78, %75
  %90 = load i8*, i8** %8, align 8
  store i8* %90, i8** %20, align 8
  br label %91

91:                                               ; preds = %772, %89
  %92 = load i8*, i8** %20, align 8
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %775

95:                                               ; preds = %91
  %96 = load i8*, i8** %20, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 37
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100
  %102 = load i8*, i8** %19, align 8
  %103 = load i8*, i8** %18, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i8*, i8** %20, align 8
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %19, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %19, align 8
  store i8 %107, i8* %108, align 1
  br label %113

110:                                              ; preds = %101
  %111 = load i8*, i8** %19, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %19, align 8
  br label %113

113:                                              ; preds = %110, %105
  br label %114

114:                                              ; preds = %113
  br label %772

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %121, %115
  %117 = load i8*, i8** %20, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %20, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  switch i32 %120, label %721 [
    i32 63, label %121
    i32 97, label %122
    i32 112, label %149
    i32 102, label %215
    i32 108, label %247
    i32 65, label %278
    i32 80, label %377
    i32 73, label %476
    i32 70, label %508
    i32 83, label %576
    i32 82, label %644
    i32 68, label %676
    i32 37, label %756
  ]

121:                                              ; preds = %116
  store i32 0, i32* %26, align 4
  br label %116

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122
  %124 = load i8*, i8** %13, align 8
  store i8* %124, i8** %21, align 8
  br label %125

125:                                              ; preds = %144, %123
  %126 = load i8*, i8** %21, align 8
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129
  %131 = load i8*, i8** %19, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = icmp ult i8* %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i8*, i8** %21, align 8
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %19, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %19, align 8
  store i8 %136, i8* %137, align 1
  br label %142

139:                                              ; preds = %130
  %140 = load i8*, i8** %19, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %19, align 8
  br label %142

142:                                              ; preds = %139, %134
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  %145 = load i8*, i8** %21, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %21, align 8
  br label %125

147:                                              ; preds = %125
  br label %148

148:                                              ; preds = %147
  br label %771

149:                                              ; preds = %116
  %150 = load i32, i32* %22, align 4
  %151 = icmp ne i32 %150, -1
  br i1 %151, label %152, label %182

152:                                              ; preds = %149
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %154 = load i32, i32* %22, align 4
  %155 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %153, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %157, i8** %21, align 8
  br label %158

158:                                              ; preds = %177, %156
  %159 = load i8*, i8** %21, align 8
  %160 = load i8, i8* %159, align 1
  %161 = icmp ne i8 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %158
  br label %163

163:                                              ; preds = %162
  %164 = load i8*, i8** %19, align 8
  %165 = load i8*, i8** %18, align 8
  %166 = icmp ult i8* %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i8*, i8** %21, align 8
  %169 = load i8, i8* %168, align 1
  %170 = load i8*, i8** %19, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %19, align 8
  store i8 %169, i8* %170, align 1
  br label %175

172:                                              ; preds = %163
  %173 = load i8*, i8** %19, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %19, align 8
  br label %175

175:                                              ; preds = %172, %167
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  %178 = load i8*, i8** %21, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %21, align 8
  br label %158

180:                                              ; preds = %158
  br label %181

181:                                              ; preds = %180
  br label %214

182:                                              ; preds = %149
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %26, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %212

186:                                              ; preds = %183
  br label %187

187:                                              ; preds = %186
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %188

188:                                              ; preds = %207, %187
  %189 = load i8*, i8** %21, align 8
  %190 = load i8, i8* %189, align 1
  %191 = icmp ne i8 %190, 0
  br i1 %191, label %192, label %210

192:                                              ; preds = %188
  br label %193

193:                                              ; preds = %192
  %194 = load i8*, i8** %19, align 8
  %195 = load i8*, i8** %18, align 8
  %196 = icmp ult i8* %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load i8*, i8** %21, align 8
  %199 = load i8, i8* %198, align 1
  %200 = load i8*, i8** %19, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %19, align 8
  store i8 %199, i8* %200, align 1
  br label %205

202:                                              ; preds = %193
  %203 = load i8*, i8** %19, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %19, align 8
  br label %205

205:                                              ; preds = %202, %197
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  %208 = load i8*, i8** %21, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %21, align 8
  br label %188

210:                                              ; preds = %188
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211, %183
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213, %181
  br label %771

215:                                              ; preds = %116
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %217 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %218 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %216, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %222, i8** %21, align 8
  br label %223

223:                                              ; preds = %242, %221
  %224 = load i8*, i8** %21, align 8
  %225 = load i8, i8* %224, align 1
  %226 = icmp ne i8 %225, 0
  br i1 %226, label %227, label %245

227:                                              ; preds = %223
  br label %228

228:                                              ; preds = %227
  %229 = load i8*, i8** %19, align 8
  %230 = load i8*, i8** %18, align 8
  %231 = icmp ult i8* %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = load i8*, i8** %21, align 8
  %234 = load i8, i8* %233, align 1
  %235 = load i8*, i8** %19, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %19, align 8
  store i8 %234, i8* %235, align 1
  br label %240

237:                                              ; preds = %228
  %238 = load i8*, i8** %19, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %19, align 8
  br label %240

240:                                              ; preds = %237, %232
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241
  %243 = load i8*, i8** %21, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %21, align 8
  br label %223

245:                                              ; preds = %223
  br label %246

246:                                              ; preds = %245
  br label %771

247:                                              ; preds = %116
  %248 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %249 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %250 = call i32 @SLEN(%struct.sockaddr* %249)
  %251 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %248, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %253, i8** %21, align 8
  br label %254

254:                                              ; preds = %273, %252
  %255 = load i8*, i8** %21, align 8
  %256 = load i8, i8* %255, align 1
  %257 = icmp ne i8 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %254
  br label %259

259:                                              ; preds = %258
  %260 = load i8*, i8** %19, align 8
  %261 = load i8*, i8** %18, align 8
  %262 = icmp ult i8* %260, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = load i8*, i8** %21, align 8
  %265 = load i8, i8* %264, align 1
  %266 = load i8*, i8** %19, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %19, align 8
  store i8 %265, i8* %266, align 1
  br label %271

268:                                              ; preds = %259
  %269 = load i8*, i8** %19, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %19, align 8
  br label %271

271:                                              ; preds = %268, %263
  br label %272

272:                                              ; preds = %271
  br label %273

273:                                              ; preds = %272
  %274 = load i8*, i8** %21, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %21, align 8
  br label %254

276:                                              ; preds = %254
  br label %277

277:                                              ; preds = %276
  br label %771

278:                                              ; preds = %116
  %279 = load i8*, i8** %16, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %308

281:                                              ; preds = %278
  br label %282

282:                                              ; preds = %281
  %283 = load i8*, i8** %16, align 8
  store i8* %283, i8** %21, align 8
  br label %284

284:                                              ; preds = %303, %282
  %285 = load i8*, i8** %21, align 8
  %286 = load i8, i8* %285, align 1
  %287 = icmp ne i8 %286, 0
  br i1 %287, label %288, label %306

288:                                              ; preds = %284
  br label %289

289:                                              ; preds = %288
  %290 = load i8*, i8** %19, align 8
  %291 = load i8*, i8** %18, align 8
  %292 = icmp ult i8* %290, %291
  br i1 %292, label %293, label %298

293:                                              ; preds = %289
  %294 = load i8*, i8** %21, align 8
  %295 = load i8, i8* %294, align 1
  %296 = load i8*, i8** %19, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** %19, align 8
  store i8 %295, i8* %296, align 1
  br label %301

298:                                              ; preds = %289
  %299 = load i8*, i8** %19, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %19, align 8
  br label %301

301:                                              ; preds = %298, %293
  br label %302

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %302
  %304 = load i8*, i8** %21, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %21, align 8
  br label %284

306:                                              ; preds = %284
  br label %307

307:                                              ; preds = %306
  br label %376

308:                                              ; preds = %278
  %309 = load i8*, i8** %10, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %343, label %311

311:                                              ; preds = %308
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %26, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %341

315:                                              ; preds = %312
  br label %316

316:                                              ; preds = %315
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %317

317:                                              ; preds = %336, %316
  %318 = load i8*, i8** %21, align 8
  %319 = load i8, i8* %318, align 1
  %320 = icmp ne i8 %319, 0
  br i1 %320, label %321, label %339

321:                                              ; preds = %317
  br label %322

322:                                              ; preds = %321
  %323 = load i8*, i8** %19, align 8
  %324 = load i8*, i8** %18, align 8
  %325 = icmp ult i8* %323, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %322
  %327 = load i8*, i8** %21, align 8
  %328 = load i8, i8* %327, align 1
  %329 = load i8*, i8** %19, align 8
  %330 = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %330, i8** %19, align 8
  store i8 %328, i8* %329, align 1
  br label %334

331:                                              ; preds = %322
  %332 = load i8*, i8** %19, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %19, align 8
  br label %334

334:                                              ; preds = %331, %326
  br label %335

335:                                              ; preds = %334
  br label %336

336:                                              ; preds = %335
  %337 = load i8*, i8** %21, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %21, align 8
  br label %317

339:                                              ; preds = %317
  br label %340

340:                                              ; preds = %339
  br label %341

341:                                              ; preds = %340, %312
  br label %342

342:                                              ; preds = %341
  br label %375

343:                                              ; preds = %308
  %344 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %345 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %346 = call i32 @SLEN(%struct.sockaddr* %345)
  %347 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  store i8* %347, i8** %16, align 8
  %348 = call i64 @getnameinfo(%struct.sockaddr* %344, i32 %346, i8* %347, i32 1024, i8* null, i32 0, i32 0)
  br label %349

349:                                              ; preds = %343
  %350 = load i8*, i8** %16, align 8
  store i8* %350, i8** %21, align 8
  br label %351

351:                                              ; preds = %370, %349
  %352 = load i8*, i8** %21, align 8
  %353 = load i8, i8* %352, align 1
  %354 = icmp ne i8 %353, 0
  br i1 %354, label %355, label %373

355:                                              ; preds = %351
  br label %356

356:                                              ; preds = %355
  %357 = load i8*, i8** %19, align 8
  %358 = load i8*, i8** %18, align 8
  %359 = icmp ult i8* %357, %358
  br i1 %359, label %360, label %365

360:                                              ; preds = %356
  %361 = load i8*, i8** %21, align 8
  %362 = load i8, i8* %361, align 1
  %363 = load i8*, i8** %19, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %19, align 8
  store i8 %362, i8* %363, align 1
  br label %368

365:                                              ; preds = %356
  %366 = load i8*, i8** %19, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %367, i8** %19, align 8
  br label %368

368:                                              ; preds = %365, %360
  br label %369

369:                                              ; preds = %368
  br label %370

370:                                              ; preds = %369
  %371 = load i8*, i8** %21, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %21, align 8
  br label %351

373:                                              ; preds = %351
  br label %374

374:                                              ; preds = %373
  br label %375

375:                                              ; preds = %374, %342
  br label %376

376:                                              ; preds = %375, %307
  br label %771

377:                                              ; preds = %116
  %378 = load i8*, i8** %17, align 8
  %379 = icmp ne i8* %378, null
  br i1 %379, label %380, label %407

380:                                              ; preds = %377
  br label %381

381:                                              ; preds = %380
  %382 = load i8*, i8** %17, align 8
  store i8* %382, i8** %21, align 8
  br label %383

383:                                              ; preds = %402, %381
  %384 = load i8*, i8** %21, align 8
  %385 = load i8, i8* %384, align 1
  %386 = icmp ne i8 %385, 0
  br i1 %386, label %387, label %405

387:                                              ; preds = %383
  br label %388

388:                                              ; preds = %387
  %389 = load i8*, i8** %19, align 8
  %390 = load i8*, i8** %18, align 8
  %391 = icmp ult i8* %389, %390
  br i1 %391, label %392, label %397

392:                                              ; preds = %388
  %393 = load i8*, i8** %21, align 8
  %394 = load i8, i8* %393, align 1
  %395 = load i8*, i8** %19, align 8
  %396 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %396, i8** %19, align 8
  store i8 %394, i8* %395, align 1
  br label %400

397:                                              ; preds = %388
  %398 = load i8*, i8** %19, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %19, align 8
  br label %400

400:                                              ; preds = %397, %392
  br label %401

401:                                              ; preds = %400
  br label %402

402:                                              ; preds = %401
  %403 = load i8*, i8** %21, align 8
  %404 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %404, i8** %21, align 8
  br label %383

405:                                              ; preds = %383
  br label %406

406:                                              ; preds = %405
  br label %475

407:                                              ; preds = %377
  %408 = load i32, i32* %22, align 4
  %409 = icmp eq i32 %408, -1
  br i1 %409, label %410, label %442

410:                                              ; preds = %407
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %26, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %440

414:                                              ; preds = %411
  br label %415

415:                                              ; preds = %414
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %416

416:                                              ; preds = %435, %415
  %417 = load i8*, i8** %21, align 8
  %418 = load i8, i8* %417, align 1
  %419 = icmp ne i8 %418, 0
  br i1 %419, label %420, label %438

420:                                              ; preds = %416
  br label %421

421:                                              ; preds = %420
  %422 = load i8*, i8** %19, align 8
  %423 = load i8*, i8** %18, align 8
  %424 = icmp ult i8* %422, %423
  br i1 %424, label %425, label %430

425:                                              ; preds = %421
  %426 = load i8*, i8** %21, align 8
  %427 = load i8, i8* %426, align 1
  %428 = load i8*, i8** %19, align 8
  %429 = getelementptr inbounds i8, i8* %428, i32 1
  store i8* %429, i8** %19, align 8
  store i8 %427, i8* %428, align 1
  br label %433

430:                                              ; preds = %421
  %431 = load i8*, i8** %19, align 8
  %432 = getelementptr inbounds i8, i8* %431, i32 1
  store i8* %432, i8** %19, align 8
  br label %433

433:                                              ; preds = %430, %425
  br label %434

434:                                              ; preds = %433
  br label %435

435:                                              ; preds = %434
  %436 = load i8*, i8** %21, align 8
  %437 = getelementptr inbounds i8, i8* %436, i32 1
  store i8* %437, i8** %21, align 8
  br label %416

438:                                              ; preds = %416
  br label %439

439:                                              ; preds = %438
  br label %440

440:                                              ; preds = %439, %411
  br label %441

441:                                              ; preds = %440
  br label %474

442:                                              ; preds = %407
  %443 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %444 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %445 = call i32 @SLEN(%struct.sockaddr* %444)
  %446 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  store i8* %446, i8** %17, align 8
  %447 = call i64 @getnameinfo(%struct.sockaddr* %443, i32 %445, i8* null, i32 0, i8* %446, i32 32, i32 0)
  br label %448

448:                                              ; preds = %442
  %449 = load i8*, i8** %17, align 8
  store i8* %449, i8** %21, align 8
  br label %450

450:                                              ; preds = %469, %448
  %451 = load i8*, i8** %21, align 8
  %452 = load i8, i8* %451, align 1
  %453 = icmp ne i8 %452, 0
  br i1 %453, label %454, label %472

454:                                              ; preds = %450
  br label %455

455:                                              ; preds = %454
  %456 = load i8*, i8** %19, align 8
  %457 = load i8*, i8** %18, align 8
  %458 = icmp ult i8* %456, %457
  br i1 %458, label %459, label %464

459:                                              ; preds = %455
  %460 = load i8*, i8** %21, align 8
  %461 = load i8, i8* %460, align 1
  %462 = load i8*, i8** %19, align 8
  %463 = getelementptr inbounds i8, i8* %462, i32 1
  store i8* %463, i8** %19, align 8
  store i8 %461, i8* %462, align 1
  br label %467

464:                                              ; preds = %455
  %465 = load i8*, i8** %19, align 8
  %466 = getelementptr inbounds i8, i8* %465, i32 1
  store i8* %466, i8** %19, align 8
  br label %467

467:                                              ; preds = %464, %459
  br label %468

468:                                              ; preds = %467
  br label %469

469:                                              ; preds = %468
  %470 = load i8*, i8** %21, align 8
  %471 = getelementptr inbounds i8, i8* %470, i32 1
  store i8* %471, i8** %21, align 8
  br label %450

472:                                              ; preds = %450
  br label %473

473:                                              ; preds = %472
  br label %474

474:                                              ; preds = %473, %441
  br label %475

475:                                              ; preds = %474, %406
  br label %771

476:                                              ; preds = %116
  br label %477

477:                                              ; preds = %476
  %478 = load i32, i32* %26, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %506

480:                                              ; preds = %477
  br label %481

481:                                              ; preds = %480
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %482

482:                                              ; preds = %501, %481
  %483 = load i8*, i8** %21, align 8
  %484 = load i8, i8* %483, align 1
  %485 = icmp ne i8 %484, 0
  br i1 %485, label %486, label %504

486:                                              ; preds = %482
  br label %487

487:                                              ; preds = %486
  %488 = load i8*, i8** %19, align 8
  %489 = load i8*, i8** %18, align 8
  %490 = icmp ult i8* %488, %489
  br i1 %490, label %491, label %496

491:                                              ; preds = %487
  %492 = load i8*, i8** %21, align 8
  %493 = load i8, i8* %492, align 1
  %494 = load i8*, i8** %19, align 8
  %495 = getelementptr inbounds i8, i8* %494, i32 1
  store i8* %495, i8** %19, align 8
  store i8 %493, i8* %494, align 1
  br label %499

496:                                              ; preds = %487
  %497 = load i8*, i8** %19, align 8
  %498 = getelementptr inbounds i8, i8* %497, i32 1
  store i8* %498, i8** %19, align 8
  br label %499

499:                                              ; preds = %496, %491
  br label %500

500:                                              ; preds = %499
  br label %501

501:                                              ; preds = %500
  %502 = load i8*, i8** %21, align 8
  %503 = getelementptr inbounds i8, i8* %502, i32 1
  store i8* %503, i8** %21, align 8
  br label %482

504:                                              ; preds = %482
  br label %505

505:                                              ; preds = %504
  br label %506

506:                                              ; preds = %505, %477
  br label %507

507:                                              ; preds = %506
  br label %771

508:                                              ; preds = %116
  %509 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %510 = icmp ne %struct.sockaddr_in6* %509, null
  br i1 %510, label %511, label %543

511:                                              ; preds = %508
  %512 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %513 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %514 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  %516 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %512, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %515)
  br label %517

517:                                              ; preds = %511
  %518 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %518, i8** %21, align 8
  br label %519

519:                                              ; preds = %538, %517
  %520 = load i8*, i8** %21, align 8
  %521 = load i8, i8* %520, align 1
  %522 = icmp ne i8 %521, 0
  br i1 %522, label %523, label %541

523:                                              ; preds = %519
  br label %524

524:                                              ; preds = %523
  %525 = load i8*, i8** %19, align 8
  %526 = load i8*, i8** %18, align 8
  %527 = icmp ult i8* %525, %526
  br i1 %527, label %528, label %533

528:                                              ; preds = %524
  %529 = load i8*, i8** %21, align 8
  %530 = load i8, i8* %529, align 1
  %531 = load i8*, i8** %19, align 8
  %532 = getelementptr inbounds i8, i8* %531, i32 1
  store i8* %532, i8** %19, align 8
  store i8 %530, i8* %531, align 1
  br label %536

533:                                              ; preds = %524
  %534 = load i8*, i8** %19, align 8
  %535 = getelementptr inbounds i8, i8* %534, i32 1
  store i8* %535, i8** %19, align 8
  br label %536

536:                                              ; preds = %533, %528
  br label %537

537:                                              ; preds = %536
  br label %538

538:                                              ; preds = %537
  %539 = load i8*, i8** %21, align 8
  %540 = getelementptr inbounds i8, i8* %539, i32 1
  store i8* %540, i8** %21, align 8
  br label %519

541:                                              ; preds = %519
  br label %542

542:                                              ; preds = %541
  br label %771

543:                                              ; preds = %508
  br label %544

544:                                              ; preds = %543
  %545 = load i32, i32* %26, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %573

547:                                              ; preds = %544
  br label %548

548:                                              ; preds = %547
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %549

549:                                              ; preds = %568, %548
  %550 = load i8*, i8** %21, align 8
  %551 = load i8, i8* %550, align 1
  %552 = icmp ne i8 %551, 0
  br i1 %552, label %553, label %571

553:                                              ; preds = %549
  br label %554

554:                                              ; preds = %553
  %555 = load i8*, i8** %19, align 8
  %556 = load i8*, i8** %18, align 8
  %557 = icmp ult i8* %555, %556
  br i1 %557, label %558, label %563

558:                                              ; preds = %554
  %559 = load i8*, i8** %21, align 8
  %560 = load i8, i8* %559, align 1
  %561 = load i8*, i8** %19, align 8
  %562 = getelementptr inbounds i8, i8* %561, i32 1
  store i8* %562, i8** %19, align 8
  store i8 %560, i8* %561, align 1
  br label %566

563:                                              ; preds = %554
  %564 = load i8*, i8** %19, align 8
  %565 = getelementptr inbounds i8, i8* %564, i32 1
  store i8* %565, i8** %19, align 8
  br label %566

566:                                              ; preds = %563, %558
  br label %567

567:                                              ; preds = %566
  br label %568

568:                                              ; preds = %567
  %569 = load i8*, i8** %21, align 8
  %570 = getelementptr inbounds i8, i8* %569, i32 1
  store i8* %570, i8** %21, align 8
  br label %549

571:                                              ; preds = %549
  br label %572

572:                                              ; preds = %571
  br label %573

573:                                              ; preds = %572, %544
  br label %574

574:                                              ; preds = %573
  br label %575

575:                                              ; preds = %574
  br label %771

576:                                              ; preds = %116
  %577 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %578 = icmp ne %struct.sockaddr_in6* %577, null
  br i1 %578, label %579, label %611

579:                                              ; preds = %576
  %580 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %581 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %582 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 4
  %584 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %580, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %583)
  br label %585

585:                                              ; preds = %579
  %586 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %586, i8** %21, align 8
  br label %587

587:                                              ; preds = %606, %585
  %588 = load i8*, i8** %21, align 8
  %589 = load i8, i8* %588, align 1
  %590 = icmp ne i8 %589, 0
  br i1 %590, label %591, label %609

591:                                              ; preds = %587
  br label %592

592:                                              ; preds = %591
  %593 = load i8*, i8** %19, align 8
  %594 = load i8*, i8** %18, align 8
  %595 = icmp ult i8* %593, %594
  br i1 %595, label %596, label %601

596:                                              ; preds = %592
  %597 = load i8*, i8** %21, align 8
  %598 = load i8, i8* %597, align 1
  %599 = load i8*, i8** %19, align 8
  %600 = getelementptr inbounds i8, i8* %599, i32 1
  store i8* %600, i8** %19, align 8
  store i8 %598, i8* %599, align 1
  br label %604

601:                                              ; preds = %592
  %602 = load i8*, i8** %19, align 8
  %603 = getelementptr inbounds i8, i8* %602, i32 1
  store i8* %603, i8** %19, align 8
  br label %604

604:                                              ; preds = %601, %596
  br label %605

605:                                              ; preds = %604
  br label %606

606:                                              ; preds = %605
  %607 = load i8*, i8** %21, align 8
  %608 = getelementptr inbounds i8, i8* %607, i32 1
  store i8* %608, i8** %21, align 8
  br label %587

609:                                              ; preds = %587
  br label %610

610:                                              ; preds = %609
  br label %771

611:                                              ; preds = %576
  br label %612

612:                                              ; preds = %611
  %613 = load i32, i32* %26, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %641

615:                                              ; preds = %612
  br label %616

616:                                              ; preds = %615
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %617

617:                                              ; preds = %636, %616
  %618 = load i8*, i8** %21, align 8
  %619 = load i8, i8* %618, align 1
  %620 = icmp ne i8 %619, 0
  br i1 %620, label %621, label %639

621:                                              ; preds = %617
  br label %622

622:                                              ; preds = %621
  %623 = load i8*, i8** %19, align 8
  %624 = load i8*, i8** %18, align 8
  %625 = icmp ult i8* %623, %624
  br i1 %625, label %626, label %631

626:                                              ; preds = %622
  %627 = load i8*, i8** %21, align 8
  %628 = load i8, i8* %627, align 1
  %629 = load i8*, i8** %19, align 8
  %630 = getelementptr inbounds i8, i8* %629, i32 1
  store i8* %630, i8** %19, align 8
  store i8 %628, i8* %629, align 1
  br label %634

631:                                              ; preds = %622
  %632 = load i8*, i8** %19, align 8
  %633 = getelementptr inbounds i8, i8* %632, i32 1
  store i8* %633, i8** %19, align 8
  br label %634

634:                                              ; preds = %631, %626
  br label %635

635:                                              ; preds = %634
  br label %636

636:                                              ; preds = %635
  %637 = load i8*, i8** %21, align 8
  %638 = getelementptr inbounds i8, i8* %637, i32 1
  store i8* %638, i8** %21, align 8
  br label %617

639:                                              ; preds = %617
  br label %640

640:                                              ; preds = %639
  br label %641

641:                                              ; preds = %640, %612
  br label %642

642:                                              ; preds = %641
  br label %643

643:                                              ; preds = %642
  br label %771

644:                                              ; preds = %116
  br label %645

645:                                              ; preds = %644
  %646 = load i32, i32* %26, align 4
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %674

648:                                              ; preds = %645
  br label %649

649:                                              ; preds = %648
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %650

650:                                              ; preds = %669, %649
  %651 = load i8*, i8** %21, align 8
  %652 = load i8, i8* %651, align 1
  %653 = icmp ne i8 %652, 0
  br i1 %653, label %654, label %672

654:                                              ; preds = %650
  br label %655

655:                                              ; preds = %654
  %656 = load i8*, i8** %19, align 8
  %657 = load i8*, i8** %18, align 8
  %658 = icmp ult i8* %656, %657
  br i1 %658, label %659, label %664

659:                                              ; preds = %655
  %660 = load i8*, i8** %21, align 8
  %661 = load i8, i8* %660, align 1
  %662 = load i8*, i8** %19, align 8
  %663 = getelementptr inbounds i8, i8* %662, i32 1
  store i8* %663, i8** %19, align 8
  store i8 %661, i8* %662, align 1
  br label %667

664:                                              ; preds = %655
  %665 = load i8*, i8** %19, align 8
  %666 = getelementptr inbounds i8, i8* %665, i32 1
  store i8* %666, i8** %19, align 8
  br label %667

667:                                              ; preds = %664, %659
  br label %668

668:                                              ; preds = %667
  br label %669

669:                                              ; preds = %668
  %670 = load i8*, i8** %21, align 8
  %671 = getelementptr inbounds i8, i8* %670, i32 1
  store i8* %671, i8** %21, align 8
  br label %650

672:                                              ; preds = %650
  br label %673

673:                                              ; preds = %672
  br label %674

674:                                              ; preds = %673, %645
  br label %675

675:                                              ; preds = %674
  br label %771

676:                                              ; preds = %116
  %677 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %678 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 4
  switch i32 %679, label %692 [
    i32 129, label %680
    i32 132, label %684
    i32 131, label %688
  ]

680:                                              ; preds = %676
  %681 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %682 = load %struct.sockaddr_un*, %struct.sockaddr_un** %25, align 8
  %683 = call i32 @debug_un(i8* %681, i32 1024, %struct.sockaddr_un* %682)
  br label %694

684:                                              ; preds = %676
  %685 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %686 = load %struct.sockaddr_in*, %struct.sockaddr_in** %23, align 8
  %687 = call i32 @debug_in(i8* %685, i32 1024, %struct.sockaddr_in* %686)
  br label %694

688:                                              ; preds = %676
  %689 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %690 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %691 = call i32 @debug_in6(i8* %689, i32 1024, %struct.sockaddr_in6* %690)
  br label %694

692:                                              ; preds = %676
  %693 = call i32 (...) @abort() #3
  unreachable

694:                                              ; preds = %688, %684, %680
  br label %695

695:                                              ; preds = %694
  %696 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %696, i8** %21, align 8
  br label %697

697:                                              ; preds = %716, %695
  %698 = load i8*, i8** %21, align 8
  %699 = load i8, i8* %698, align 1
  %700 = icmp ne i8 %699, 0
  br i1 %700, label %701, label %719

701:                                              ; preds = %697
  br label %702

702:                                              ; preds = %701
  %703 = load i8*, i8** %19, align 8
  %704 = load i8*, i8** %18, align 8
  %705 = icmp ult i8* %703, %704
  br i1 %705, label %706, label %711

706:                                              ; preds = %702
  %707 = load i8*, i8** %21, align 8
  %708 = load i8, i8* %707, align 1
  %709 = load i8*, i8** %19, align 8
  %710 = getelementptr inbounds i8, i8* %709, i32 1
  store i8* %710, i8** %19, align 8
  store i8 %708, i8* %709, align 1
  br label %714

711:                                              ; preds = %702
  %712 = load i8*, i8** %19, align 8
  %713 = getelementptr inbounds i8, i8* %712, i32 1
  store i8* %713, i8** %19, align 8
  br label %714

714:                                              ; preds = %711, %706
  br label %715

715:                                              ; preds = %714
  br label %716

716:                                              ; preds = %715
  %717 = load i8*, i8** %21, align 8
  %718 = getelementptr inbounds i8, i8* %717, i32 1
  store i8* %718, i8** %21, align 8
  br label %697

719:                                              ; preds = %697
  br label %720

720:                                              ; preds = %719
  br label %771

721:                                              ; preds = %116
  br label %722

722:                                              ; preds = %721
  %723 = load i8*, i8** %19, align 8
  %724 = load i8*, i8** %18, align 8
  %725 = icmp ult i8* %723, %724
  br i1 %725, label %726, label %729

726:                                              ; preds = %722
  %727 = load i8*, i8** %19, align 8
  %728 = getelementptr inbounds i8, i8* %727, i32 1
  store i8* %728, i8** %19, align 8
  store i8 37, i8* %727, align 1
  br label %732

729:                                              ; preds = %722
  %730 = load i8*, i8** %19, align 8
  %731 = getelementptr inbounds i8, i8* %730, i32 1
  store i8* %731, i8** %19, align 8
  br label %732

732:                                              ; preds = %729, %726
  br label %733

733:                                              ; preds = %732
  %734 = load i32, i32* %26, align 4
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %749

736:                                              ; preds = %733
  br label %737

737:                                              ; preds = %736
  %738 = load i8*, i8** %19, align 8
  %739 = load i8*, i8** %18, align 8
  %740 = icmp ult i8* %738, %739
  br i1 %740, label %741, label %744

741:                                              ; preds = %737
  %742 = load i8*, i8** %19, align 8
  %743 = getelementptr inbounds i8, i8* %742, i32 1
  store i8* %743, i8** %19, align 8
  store i8 63, i8* %742, align 1
  br label %747

744:                                              ; preds = %737
  %745 = load i8*, i8** %19, align 8
  %746 = getelementptr inbounds i8, i8* %745, i32 1
  store i8* %746, i8** %19, align 8
  br label %747

747:                                              ; preds = %744, %741
  br label %748

748:                                              ; preds = %747
  br label %749

749:                                              ; preds = %748, %733
  %750 = load i8*, i8** %20, align 8
  %751 = load i8, i8* %750, align 1
  %752 = sext i8 %751 to i32
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %755

754:                                              ; preds = %749
  br label %776

755:                                              ; preds = %749
  br label %756

756:                                              ; preds = %116, %755
  br label %757

757:                                              ; preds = %756
  %758 = load i8*, i8** %19, align 8
  %759 = load i8*, i8** %18, align 8
  %760 = icmp ult i8* %758, %759
  br i1 %760, label %761, label %766

761:                                              ; preds = %757
  %762 = load i8*, i8** %20, align 8
  %763 = load i8, i8* %762, align 1
  %764 = load i8*, i8** %19, align 8
  %765 = getelementptr inbounds i8, i8* %764, i32 1
  store i8* %765, i8** %19, align 8
  store i8 %763, i8* %764, align 1
  br label %769

766:                                              ; preds = %757
  %767 = load i8*, i8** %19, align 8
  %768 = getelementptr inbounds i8, i8* %767, i32 1
  store i8* %768, i8** %19, align 8
  br label %769

769:                                              ; preds = %766, %761
  br label %770

770:                                              ; preds = %769
  br label %771

771:                                              ; preds = %770, %720, %675, %643, %610, %575, %542, %507, %475, %376, %277, %246, %214, %148
  store i32 1, i32* %26, align 4
  br label %772

772:                                              ; preds = %771, %114
  %773 = load i8*, i8** %20, align 8
  %774 = getelementptr inbounds i8, i8* %773, i32 1
  store i8* %774, i8** %20, align 8
  br label %91

775:                                              ; preds = %91
  br label %776

776:                                              ; preds = %775, %754, %35
  %777 = load i8*, i8** %19, align 8
  %778 = load i8*, i8** %18, align 8
  %779 = icmp ult i8* %777, %778
  br i1 %779, label %780, label %782

780:                                              ; preds = %776
  %781 = load i8*, i8** %19, align 8
  store i8 0, i8* %781, align 1
  br label %791

782:                                              ; preds = %776
  %783 = load i64, i64* %7, align 8
  %784 = icmp ne i64 %783, 0
  br i1 %784, label %785, label %790

785:                                              ; preds = %782
  %786 = load i8*, i8** %6, align 8
  %787 = load i64, i64* %7, align 8
  %788 = sub i64 %787, 1
  %789 = getelementptr inbounds i8, i8* %786, i64 %788
  store i8 0, i8* %789, align 1
  br label %790

790:                                              ; preds = %785, %782
  br label %791

791:                                              ; preds = %790, %780
  %792 = load i8*, i8** %19, align 8
  %793 = load i8*, i8** %6, align 8
  %794 = ptrtoint i8* %792 to i64
  %795 = ptrtoint i8* %793 to i64
  %796 = sub i64 %794, %795
  %797 = trunc i64 %796 to i32
  store i32 %797, i32* %5, align 4
  br label %798

798:                                              ; preds = %791, %88, %67
  %799 = load i32, i32* %5, align 4
  ret i32 %799
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @SLEN(%struct.sockaddr*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @debug_un(i8*, i32, %struct.sockaddr_un*) #1

declare dso_local i32 @debug_in(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @debug_in6(i8*, i32, %struct.sockaddr_in6*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
