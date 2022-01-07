; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee802_11_parse_elems_crc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee802_11_parse_elems_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_11_elems = type { i64*, i64, i32, i64*, i64, i64*, i64, i64*, i64, i64*, i64, i64*, i64, i64*, i64, i64*, i64, i64*, i64*, i64, i64*, i64*, i64, i64*, i64, i64*, i64, i64*, i64, i64*, i64, i64*, i64, i64*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@seen_elems = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_11_parse_elems_crc(i64* %0, i64 %1, i32 %2, %struct.ieee802_11_elems* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee802_11_elems*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ieee802_11_elems* %3, %struct.ieee802_11_elems** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i64*, i64** %7, align 8
  store i64* %21, i64** %14, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @seen_elems, align 4
  %26 = call i32 @DECLARE_BITMAP(i32 %25, i32 256)
  %27 = load i32, i32* @seen_elems, align 4
  %28 = call i32 @bitmap_zero(i32 %27, i32 256)
  %29 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %30 = call i32 @memset(%struct.ieee802_11_elems* %29, i32 0, i32 376)
  %31 = load i64*, i64** %7, align 8
  %32 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %33 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %32, i32 0, i32 0
  store i64* %31, i64** %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %36 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %435, %62, %6
  %38 = load i64, i64* %13, align 8
  %39 = icmp uge i64 %38, 2
  br i1 %39, label %40, label %442

40:                                               ; preds = %37
  %41 = load i64*, i64** %14, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %14, align 8
  %43 = load i64, i64* %41, align 8
  store i64 %43, i64* %17, align 8
  %44 = load i64*, i64** %14, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %14, align 8
  %46 = load i64, i64* %44, align 8
  store i64 %46, i64* %18, align 8
  %47 = load i64, i64* %13, align 8
  %48 = sub i64 %47, 2
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %54 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  br label %442

55:                                               ; preds = %40
  %56 = load i64, i64* %17, align 8
  switch i64 %56, label %72 [
    i64 135, label %57
    i64 134, label %57
    i64 151, label %57
    i64 155, label %57
    i64 160, label %57
    i64 133, label %57
    i64 148, label %57
    i64 159, label %57
    i64 137, label %57
    i64 154, label %57
    i64 152, label %57
    i64 150, label %57
    i64 149, label %57
    i64 130, label %57
    i64 129, label %57
    i64 145, label %57
    i64 146, label %57
    i64 143, label %57
    i64 140, label %57
    i64 141, label %57
    i64 142, label %57
    i64 138, label %57
    i64 158, label %57
    i64 153, label %57
    i64 156, label %57
    i64 139, label %57
    i64 132, label %57
    i64 136, label %57
    i64 128, label %57
  ]

57:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %58 = load i64, i64* %17, align 8
  %59 = load i32, i32* @seen_elems, align 4
  %60 = call i32 @test_bit(i64 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %64 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* %13, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i64*, i64** %14, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 %68
  store i64* %70, i64** %14, align 8
  br label %37

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %55, %71
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i64, i64* %17, align 8
  %77 = icmp ult i64 %76, 64
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %17, align 8
  %81 = shl i64 1, %80
  %82 = and i64 %79, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* %12, align 4
  %86 = load i64*, i64** %14, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 -2
  %88 = load i64, i64* %18, align 8
  %89 = add i64 %88, 2
  %90 = call i32 @crc32_be(i32 %85, i64* %87, i64 %89)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %84, %78, %75, %72
  store i32 0, i32* %19, align 4
  %92 = load i64, i64* %17, align 8
  switch i64 %92, label %424 [
    i64 135, label %93
    i64 134, label %100
    i64 155, label %107
    i64 133, label %116
    i64 159, label %129
    i64 131, label %136
    i64 137, label %200
    i64 154, label %207
    i64 152, label %216
    i64 150, label %223
    i64 149, label %233
    i64 130, label %243
    i64 129, label %253
    i64 144, label %263
    i64 145, label %272
    i64 146, label %279
    i64 143, label %289
    i64 147, label %296
    i64 140, label %305
    i64 141, label %312
    i64 142, label %319
    i64 138, label %326
    i64 158, label %336
    i64 153, label %345
    i64 136, label %354
    i64 128, label %363
    i64 157, label %375
    i64 156, label %399
    i64 139, label %406
    i64 132, label %414
  ]

93:                                               ; preds = %91
  %94 = load i64*, i64** %14, align 8
  %95 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %96 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %95, i32 0, i32 3
  store i64* %94, i64** %96, align 8
  %97 = load i64, i64* %18, align 8
  %98 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %99 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  br label %425

100:                                              ; preds = %91
  %101 = load i64*, i64** %14, align 8
  %102 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %103 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %102, i32 0, i32 5
  store i64* %101, i64** %103, align 8
  %104 = load i64, i64* %18, align 8
  %105 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %106 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %105, i32 0, i32 6
  store i64 %104, i64* %106, align 8
  br label %425

107:                                              ; preds = %91
  %108 = load i64, i64* %18, align 8
  %109 = icmp uge i64 %108, 1
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64*, i64** %14, align 8
  %112 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %113 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %112, i32 0, i32 7
  store i64* %111, i64** %113, align 8
  br label %115

114:                                              ; preds = %107
  store i32 1, i32* %19, align 4
  br label %115

115:                                              ; preds = %114, %110
  br label %425

116:                                              ; preds = %91
  %117 = load i64, i64* %18, align 8
  %118 = icmp uge i64 %117, 4
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i64*, i64** %14, align 8
  %121 = bitcast i64* %120 to i8*
  %122 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %123 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %122, i32 0, i32 46
  store i8* %121, i8** %123, align 8
  %124 = load i64, i64* %18, align 8
  %125 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %126 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %125, i32 0, i32 8
  store i64 %124, i64* %126, align 8
  br label %128

127:                                              ; preds = %116
  store i32 1, i32* %19, align 4
  br label %128

128:                                              ; preds = %127, %119
  br label %425

129:                                              ; preds = %91
  %130 = load i64*, i64** %14, align 8
  %131 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %132 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %131, i32 0, i32 9
  store i64* %130, i64** %132, align 8
  %133 = load i64, i64* %18, align 8
  %134 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %135 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %134, i32 0, i32 10
  store i64 %133, i64* %135, align 8
  br label %425

136:                                              ; preds = %91
  %137 = load i64, i64* %18, align 8
  %138 = icmp uge i64 %137, 4
  br i1 %138, label %139, label %199

139:                                              ; preds = %136
  %140 = load i64*, i64** %14, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %199

144:                                              ; preds = %139
  %145 = load i64*, i64** %14, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 80
  br i1 %148, label %149, label %199

149:                                              ; preds = %144
  %150 = load i64*, i64** %14, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 242
  br i1 %153, label %154, label %199

154:                                              ; preds = %149
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load i32, i32* %12, align 4
  %159 = load i64*, i64** %14, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 -2
  %161 = load i64, i64* %18, align 8
  %162 = add i64 %161, 2
  %163 = call i32 @crc32_be(i32 %158, i64* %160, i64 %162)
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %157, %154
  %165 = load i64, i64* %18, align 8
  %166 = icmp uge i64 %165, 5
  br i1 %166, label %167, label %198

167:                                              ; preds = %164
  %168 = load i64*, i64** %14, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 2
  br i1 %171, label %172, label %198

172:                                              ; preds = %167
  %173 = load i64*, i64** %14, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = load i64*, i64** %14, align 8
  %179 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %180 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %179, i32 0, i32 11
  store i64* %178, i64** %180, align 8
  %181 = load i64, i64* %18, align 8
  %182 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %183 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %182, i32 0, i32 12
  store i64 %181, i64* %183, align 8
  br label %197

184:                                              ; preds = %172
  %185 = load i64*, i64** %14, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 1
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load i64*, i64** %14, align 8
  %191 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %192 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %191, i32 0, i32 13
  store i64* %190, i64** %192, align 8
  %193 = load i64, i64* %18, align 8
  %194 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %195 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %194, i32 0, i32 14
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %189, %184
  br label %197

197:                                              ; preds = %196, %177
  br label %198

198:                                              ; preds = %197, %167, %164
  br label %199

199:                                              ; preds = %198, %149, %144, %139, %136
  br label %425

200:                                              ; preds = %91
  %201 = load i64*, i64** %14, align 8
  %202 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %203 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %202, i32 0, i32 15
  store i64* %201, i64** %203, align 8
  %204 = load i64, i64* %18, align 8
  %205 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %206 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %205, i32 0, i32 16
  store i64 %204, i64* %206, align 8
  br label %425

207:                                              ; preds = %91
  %208 = load i64, i64* %18, align 8
  %209 = icmp uge i64 %208, 1
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i64*, i64** %14, align 8
  %212 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %213 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %212, i32 0, i32 17
  store i64* %211, i64** %213, align 8
  br label %215

214:                                              ; preds = %207
  store i32 1, i32* %19, align 4
  br label %215

215:                                              ; preds = %214, %210
  br label %425

216:                                              ; preds = %91
  %217 = load i64*, i64** %14, align 8
  %218 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %219 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %218, i32 0, i32 18
  store i64* %217, i64** %219, align 8
  %220 = load i64, i64* %18, align 8
  %221 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %222 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %221, i32 0, i32 19
  store i64 %220, i64* %222, align 8
  br label %425

223:                                              ; preds = %91
  %224 = load i64, i64* %18, align 8
  %225 = icmp uge i64 %224, 4
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = load i64*, i64** %14, align 8
  %228 = bitcast i64* %227 to i8*
  %229 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %230 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %229, i32 0, i32 45
  store i8* %228, i8** %230, align 8
  br label %232

231:                                              ; preds = %223
  store i32 1, i32* %19, align 4
  br label %232

232:                                              ; preds = %231, %226
  br label %425

233:                                              ; preds = %91
  %234 = load i64, i64* %18, align 8
  %235 = icmp uge i64 %234, 4
  br i1 %235, label %236, label %241

236:                                              ; preds = %233
  %237 = load i64*, i64** %14, align 8
  %238 = bitcast i64* %237 to i8*
  %239 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %240 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %239, i32 0, i32 44
  store i8* %238, i8** %240, align 8
  br label %242

241:                                              ; preds = %233
  store i32 1, i32* %19, align 4
  br label %242

242:                                              ; preds = %241, %236
  br label %425

243:                                              ; preds = %91
  %244 = load i64, i64* %18, align 8
  %245 = icmp uge i64 %244, 4
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i64*, i64** %14, align 8
  %248 = bitcast i64* %247 to i8*
  %249 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %250 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %249, i32 0, i32 43
  store i8* %248, i8** %250, align 8
  br label %252

251:                                              ; preds = %243
  store i32 1, i32* %19, align 4
  br label %252

252:                                              ; preds = %251, %246
  br label %425

253:                                              ; preds = %91
  %254 = load i64, i64* %18, align 8
  %255 = icmp uge i64 %254, 4
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = load i64*, i64** %14, align 8
  %258 = bitcast i64* %257 to i8*
  %259 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %260 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %259, i32 0, i32 42
  store i8* %258, i8** %260, align 8
  br label %262

261:                                              ; preds = %253
  store i32 1, i32* %19, align 4
  br label %262

262:                                              ; preds = %261, %256
  br label %425

263:                                              ; preds = %91
  %264 = load i64, i64* %18, align 8
  %265 = icmp ugt i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i64*, i64** %14, align 8
  %268 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %269 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %268, i32 0, i32 20
  store i64* %267, i64** %269, align 8
  br label %271

270:                                              ; preds = %263
  store i32 1, i32* %19, align 4
  br label %271

271:                                              ; preds = %270, %266
  br label %425

272:                                              ; preds = %91
  %273 = load i64*, i64** %14, align 8
  %274 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %275 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %274, i32 0, i32 21
  store i64* %273, i64** %275, align 8
  %276 = load i64, i64* %18, align 8
  %277 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %278 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %277, i32 0, i32 22
  store i64 %276, i64* %278, align 8
  br label %425

279:                                              ; preds = %91
  %280 = load i64, i64* %18, align 8
  %281 = icmp uge i64 %280, 4
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = load i64*, i64** %14, align 8
  %284 = bitcast i64* %283 to i8*
  %285 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %286 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %285, i32 0, i32 41
  store i8* %284, i8** %286, align 8
  br label %288

287:                                              ; preds = %279
  store i32 1, i32* %19, align 4
  br label %288

288:                                              ; preds = %287, %282
  br label %425

289:                                              ; preds = %91
  %290 = load i64*, i64** %14, align 8
  %291 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %292 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %291, i32 0, i32 23
  store i64* %290, i64** %292, align 8
  %293 = load i64, i64* %18, align 8
  %294 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %295 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %294, i32 0, i32 24
  store i64 %293, i64* %295, align 8
  br label %425

296:                                              ; preds = %91
  %297 = load i64, i64* %18, align 8
  %298 = icmp uge i64 %297, 2
  br i1 %298, label %299, label %304

299:                                              ; preds = %296
  %300 = load i64*, i64** %14, align 8
  %301 = bitcast i64* %300 to i8*
  %302 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %303 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %302, i32 0, i32 40
  store i8* %301, i8** %303, align 8
  br label %304

304:                                              ; preds = %299, %296
  br label %425

305:                                              ; preds = %91
  %306 = load i64*, i64** %14, align 8
  %307 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %308 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %307, i32 0, i32 25
  store i64* %306, i64** %308, align 8
  %309 = load i64, i64* %18, align 8
  %310 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %311 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %310, i32 0, i32 26
  store i64 %309, i64* %311, align 8
  br label %425

312:                                              ; preds = %91
  %313 = load i64*, i64** %14, align 8
  %314 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %315 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %314, i32 0, i32 27
  store i64* %313, i64** %315, align 8
  %316 = load i64, i64* %18, align 8
  %317 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %318 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %317, i32 0, i32 28
  store i64 %316, i64* %318, align 8
  br label %425

319:                                              ; preds = %91
  %320 = load i64*, i64** %14, align 8
  %321 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %322 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %321, i32 0, i32 29
  store i64* %320, i64** %322, align 8
  %323 = load i64, i64* %18, align 8
  %324 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %325 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %324, i32 0, i32 30
  store i64 %323, i64* %325, align 8
  br label %425

326:                                              ; preds = %91
  %327 = load i64, i64* %18, align 8
  %328 = icmp uge i64 %327, 4
  br i1 %328, label %329, label %334

329:                                              ; preds = %326
  %330 = load i64*, i64** %14, align 8
  %331 = bitcast i64* %330 to i8*
  %332 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %333 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %332, i32 0, i32 39
  store i8* %331, i8** %333, align 8
  br label %335

334:                                              ; preds = %326
  store i32 1, i32* %19, align 4
  br label %335

335:                                              ; preds = %334, %329
  br label %425

336:                                              ; preds = %91
  %337 = load i64, i64* %18, align 8
  %338 = icmp ne i64 %337, 4
  br i1 %338, label %339, label %340

339:                                              ; preds = %336
  store i32 1, i32* %19, align 4
  br label %425

340:                                              ; preds = %336
  %341 = load i64*, i64** %14, align 8
  %342 = bitcast i64* %341 to i8*
  %343 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %344 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %343, i32 0, i32 38
  store i8* %342, i8** %344, align 8
  br label %425

345:                                              ; preds = %91
  %346 = load i64, i64* %18, align 8
  %347 = icmp ne i64 %346, 4
  br i1 %347, label %348, label %349

348:                                              ; preds = %345
  store i32 1, i32* %19, align 4
  br label %425

349:                                              ; preds = %345
  %350 = load i64*, i64** %14, align 8
  %351 = bitcast i64* %350 to i8*
  %352 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %353 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %352, i32 0, i32 37
  store i8* %351, i8** %353, align 8
  br label %425

354:                                              ; preds = %91
  %355 = load i64, i64* %18, align 8
  %356 = icmp ne i64 %355, 4
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  store i32 1, i32* %19, align 4
  br label %425

358:                                              ; preds = %354
  %359 = load i64*, i64** %14, align 8
  %360 = bitcast i64* %359 to i8*
  %361 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %362 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %361, i32 0, i32 36
  store i8* %360, i8** %362, align 8
  br label %425

363:                                              ; preds = %91
  %364 = load i32, i32* %9, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = load i64, i64* %18, align 8
  %368 = icmp ne i64 %367, 1
  br i1 %368, label %369, label %370

369:                                              ; preds = %366, %363
  store i32 1, i32* %19, align 4
  br label %425

370:                                              ; preds = %366
  %371 = load i64*, i64** %14, align 8
  %372 = bitcast i64* %371 to i8*
  %373 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %374 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %373, i32 0, i32 35
  store i8* %372, i8** %374, align 8
  br label %425

375:                                              ; preds = %91
  %376 = load i32, i32* %9, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %375
  store i32 1, i32* %19, align 4
  br label %425

379:                                              ; preds = %375
  %380 = load i64*, i64** %14, align 8
  %381 = load i64, i64* %18, align 8
  %382 = call i64* @cfg80211_find_ie(i32 128, i64* %380, i64 %381)
  store i64* %382, i64** %16, align 8
  %383 = load i64*, i64** %16, align 8
  %384 = icmp ne i64* %383, null
  br i1 %384, label %385, label %398

385:                                              ; preds = %379
  %386 = load i64*, i64** %16, align 8
  %387 = getelementptr inbounds i64, i64* %386, i64 1
  %388 = load i64, i64* %387, align 8
  %389 = icmp eq i64 %388, 1
  br i1 %389, label %390, label %396

390:                                              ; preds = %385
  %391 = load i64*, i64** %16, align 8
  %392 = getelementptr inbounds i64, i64* %391, i64 2
  %393 = bitcast i64* %392 to i8*
  %394 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %395 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %394, i32 0, i32 35
  store i8* %393, i8** %395, align 8
  br label %397

396:                                              ; preds = %385
  store i32 1, i32* %19, align 4
  br label %397

397:                                              ; preds = %396, %390
  br label %398

398:                                              ; preds = %397, %379
  br label %425

399:                                              ; preds = %91
  %400 = load i64*, i64** %14, align 8
  %401 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %402 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %401, i32 0, i32 31
  store i64* %400, i64** %402, align 8
  %403 = load i64, i64* %18, align 8
  %404 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %405 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %404, i32 0, i32 32
  store i64 %403, i64* %405, align 8
  br label %425

406:                                              ; preds = %91
  %407 = load i64, i64* %18, align 8
  %408 = icmp ne i64 %407, 1
  br i1 %408, label %409, label %410

409:                                              ; preds = %406
  store i32 1, i32* %19, align 4
  br label %425

410:                                              ; preds = %406
  %411 = load i64*, i64** %14, align 8
  %412 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %413 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %412, i32 0, i32 33
  store i64* %411, i64** %413, align 8
  br label %425

414:                                              ; preds = %91
  %415 = load i64, i64* %18, align 8
  %416 = icmp uge i64 %415, 4
  br i1 %416, label %417, label %422

417:                                              ; preds = %414
  %418 = load i64*, i64** %14, align 8
  %419 = bitcast i64* %418 to i8*
  %420 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %421 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %420, i32 0, i32 34
  store i8* %419, i8** %421, align 8
  br label %423

422:                                              ; preds = %414
  store i32 1, i32* %19, align 4
  br label %423

423:                                              ; preds = %422, %417
  br label %425

424:                                              ; preds = %91
  br label %425

425:                                              ; preds = %424, %423, %410, %409, %399, %398, %378, %370, %369, %358, %357, %349, %348, %340, %339, %335, %319, %312, %305, %304, %289, %288, %272, %271, %262, %252, %242, %232, %216, %215, %200, %199, %129, %128, %115, %100, %93
  %426 = load i32, i32* %19, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %425
  %429 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %430 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %429, i32 0, i32 2
  store i32 1, i32* %430, align 8
  br label %435

431:                                              ; preds = %425
  %432 = load i64, i64* %17, align 8
  %433 = load i32, i32* @seen_elems, align 4
  %434 = call i32 @__set_bit(i64 %432, i32 %433)
  br label %435

435:                                              ; preds = %431, %428
  %436 = load i64, i64* %18, align 8
  %437 = load i64, i64* %13, align 8
  %438 = sub i64 %437, %436
  store i64 %438, i64* %13, align 8
  %439 = load i64, i64* %18, align 8
  %440 = load i64*, i64** %14, align 8
  %441 = getelementptr inbounds i64, i64* %440, i64 %439
  store i64* %441, i64** %14, align 8
  br label %37

442:                                              ; preds = %52, %37
  %443 = load i64, i64* %13, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %442
  %446 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %10, align 8
  %447 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %446, i32 0, i32 2
  store i32 1, i32* %447, align 8
  br label %448

448:                                              ; preds = %445, %442
  %449 = load i32, i32* %12, align 4
  ret i32 %449
}

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @memset(%struct.ieee802_11_elems*, i32, i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @crc32_be(i32, i64*, i64) #1

declare dso_local i64* @cfg80211_find_ie(i32, i64*, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
