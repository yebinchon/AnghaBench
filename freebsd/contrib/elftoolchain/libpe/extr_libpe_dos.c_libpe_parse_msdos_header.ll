; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_libpe_dos.c_libpe_parse_msdos_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_libpe_dos.c_libpe_parse_msdos_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LIBPE_F_BAD_DOS_HEADER = common dso_local global i32 0, align 4
@LIBPE_F_SPECIAL_FILE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@LIBPE_F_BAD_PE_HEADER = common dso_local global i32 0, align 4
@PE_SIGNATURE = common dso_local global i64 0, align 8
@LIBPE_F_BAD_COFF_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libpe_parse_msdos_header(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call i8* @malloc(i32 96)
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  store i32* %11, i32** %13, align 8
  %14 = icmp eq i32* %11, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %288

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @memcpy(i32* %20, i8* %21, i32 96)
  %23 = call i8* @malloc(i32 96)
  %24 = bitcast i8* %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %6, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %288

28:                                               ; preds = %17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 18
  %34 = load i32*, i32** %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @memcpy(i32* %34, i8* %35, i32 2)
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PE_READ16(i8* %39, i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PE_READ16(i8* %44, i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PE_READ16(i8* %49, i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PE_READ16(i8* %54, i32 %57)
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PE_READ16(i8* %59, i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PE_READ16(i8* %64, i32 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PE_READ16(i8* %69, i32 %72)
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PE_READ16(i8* %74, i32 %77)
  %79 = load i8*, i8** %5, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PE_READ16(i8* %79, i32 %82)
  %84 = load i8*, i8** %5, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PE_READ16(i8* %84, i32 %87)
  %89 = load i8*, i8** %5, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PE_READ16(i8* %89, i32 %92)
  %94 = load i8*, i8** %5, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PE_READ16(i8* %94, i32 %97)
  %99 = load i8*, i8** %5, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @PE_READ16(i8* %99, i32 %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 64
  br i1 %107, label %108, label %114

108:                                              ; preds = %28
  %109 = load i32, i32* @LIBPE_F_BAD_DOS_HEADER, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  store i32 0, i32* %3, align 4
  br label %288

114:                                              ; preds = %28
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %128, %114
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load i8*, i8** %5, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 13
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @PE_READ16(i8* %119, i32 %126)
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %115

131:                                              ; preds = %115
  %132 = load i8*, i8** %5, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 14
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @PE_READ16(i8* %132, i32 %135)
  %137 = load i8*, i8** %5, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 15
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @PE_READ16(i8* %137, i32 %140)
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %155, %131
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 10
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = load i8*, i8** %5, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 16
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @PE_READ16(i8* %146, i32 %153)
  br label %155

155:                                              ; preds = %145
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %142

158:                                              ; preds = %142
  %159 = load i8*, i8** %5, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 17
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @PE_READ32(i8* %159, i32 %162)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 17
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %169, 4
  %171 = icmp sgt i32 %166, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %158
  %173 = load i32, i32* @LIBPE_F_BAD_DOS_HEADER, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  store i32 0, i32* %3, align 4
  br label %288

178:                                              ; preds = %158
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 17
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = icmp ult i64 %182, 96
  br i1 %183, label %184, label %197

184:                                              ; preds = %178
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @LIBPE_F_SPECIAL_FILE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %184
  %192 = load i32, i32* @LIBPE_F_BAD_DOS_HEADER, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  store i32 0, i32* %3, align 4
  br label %288

197:                                              ; preds = %184, %178
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 17
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = icmp ugt i64 %201, 96
  br i1 %202, label %203, label %230

203:                                              ; preds = %197
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 17
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = sub i64 %207, 96
  %209 = trunc i64 %208 to i32
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @LIBPE_F_SPECIAL_FILE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %203
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %220 = call i64 @libpe_read_msdos_stub(%struct.TYPE_7__* %219)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load i32, i32* @LIBPE_F_BAD_DOS_HEADER, align 4
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  store i32 0, i32* %3, align 4
  br label %288

228:                                              ; preds = %218
  br label %229

229:                                              ; preds = %228, %203
  br label %230

230:                                              ; preds = %229, %197
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @LIBPE_F_SPECIAL_FILE, align 4
  %235 = and i32 %233, %234
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %254

237:                                              ; preds = %230
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 17
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @SEEK_SET, align 4
  %245 = call i64 @lseek(i32 %240, i32 %243, i32 %244)
  %246 = icmp slt i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %237
  %248 = load i32, i32* @LIBPE_F_BAD_PE_HEADER, align 4
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  store i32 0, i32* %3, align 4
  br label %288

253:                                              ; preds = %237
  br label %254

254:                                              ; preds = %253, %230
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @read(i32 %257, i8* %8, i32 4)
  %259 = icmp ne i32 %258, 4
  br i1 %259, label %265, label %260

260:                                              ; preds = %254
  %261 = load i8, i8* %8, align 1
  %262 = call i64 @htole32(i8 signext %261)
  %263 = load i64, i64* @PE_SIGNATURE, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %260, %254
  %266 = load i32, i32* @LIBPE_F_BAD_PE_HEADER, align 4
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  store i32 0, i32* %3, align 4
  br label %288

271:                                              ; preds = %260
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %276 = call i32 @read(i32 %274, i8* %275, i32 4)
  %277 = icmp ne i32 %276, 4
  br i1 %277, label %278, label %284

278:                                              ; preds = %271
  %279 = load i32, i32* @LIBPE_F_BAD_COFF_HEADER, align 4
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 8
  store i32 0, i32* %3, align 4
  br label %288

284:                                              ; preds = %271
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %286 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %287 = call i32 @libpe_parse_coff_header(%struct.TYPE_7__* %285, i8* %286)
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %284, %278, %265, %247, %222, %191, %172, %108, %26, %15
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @PE_READ16(i8*, i32) #1

declare dso_local i32 @PE_READ32(i8*, i32) #1

declare dso_local i64 @libpe_read_msdos_stub(%struct.TYPE_7__*) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @htole32(i8 signext) #1

declare dso_local i32 @libpe_parse_coff_header(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
