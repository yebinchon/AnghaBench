; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mds.c_Mds_DurationSet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mds.c_Mds_DurationSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { i32 }
%struct.wb35_descriptor = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i64, i64 }

@DOT_11_DA_OFFSET = common dso_local global i32 0, align 4
@CURRENT_RTS_THRESHOLD = common dso_local global i32 0, align 4
@CURRENT_PROTECT_MECHANISM = common dso_local global i64 0, align 8
@DEFAULT_SIFSTIME = common dso_local global i32 0, align 4
@PREAMBLE_PLUS_SIGNAL_PLUS_SIGNALEXTENSION = common dso_local global i32 0, align 4
@Tsym = common dso_local global i32 0, align 4
@LONG_PREAMBLE_PLUS_PLCPHEADER_TIME = common dso_local global i32 0, align 4
@SHORT_PREAMBLE_PLUS_PLCPHEADER_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsoft_priv*, %struct.wb35_descriptor*, i32*)* @Mds_DurationSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Mds_DurationSet(%struct.wbsoft_priv* %0, %struct.wb35_descriptor* %1, i32* %2) #0 {
  %4 = alloca %struct.wbsoft_priv*, align 8
  %5 = alloca %struct.wb35_descriptor*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  store %struct.wbsoft_priv* %0, %struct.wbsoft_priv** %4, align 8
  store %struct.wb35_descriptor* %1, %struct.wb35_descriptor** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i32 0, i32* %17, align 4
  store i8 0, i8* %18, align 1
  %19 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %20 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 32
  %23 = add nsw i32 %22, 3
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, -4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32*, i32** %6, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = bitcast i32* %37 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %8, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = bitcast i32* %42 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %16, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @DOT_11_DA_OFFSET, align 4
  %46 = add nsw i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  store i8 1, i8* %18, align 1
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i8, i8* %18, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 4
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @CURRENT_RTS_THRESHOLD, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i8 1, i8* %15, align 1
  br label %78

67:                                               ; preds = %56
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i64, i64* @CURRENT_PROTECT_MECHANISM, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i8 1, i8* %14, align 1
  br label %76

76:                                               ; preds = %75, %72
  br label %77

77:                                               ; preds = %76, %67
  br label %78

78:                                               ; preds = %77, %66
  br label %79

79:                                               ; preds = %78, %53
  %80 = load i8, i8* %15, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8, i8* %14, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %198

87:                                               ; preds = %83, %79
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = load i32, i32* @DEFAULT_SIFSTIME, align 4
  %94 = mul nsw i32 2, %93
  %95 = load i32, i32* @PREAMBLE_PLUS_SIGNAL_PLUS_SIGNALEXTENSION, align 4
  %96 = mul nsw i32 2, %95
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* %17, align 4
  %99 = mul nsw i32 %98, 8
  %100 = add nsw i32 %99, 22
  %101 = load i32, i32* %12, align 4
  %102 = mul nsw i32 %101, 4
  %103 = add nsw i32 %100, %102
  %104 = sub nsw i32 %103, 1
  %105 = load i32, i32* %12, align 4
  %106 = mul nsw i32 %105, 4
  %107 = sdiv i32 %104, %106
  %108 = load i32, i32* @Tsym, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %97, %109
  %111 = load i32, i32* @Tsym, align 4
  %112 = mul nsw i32 2, %111
  %113 = add nsw i32 %110, %112
  store i32 %113, i32* %9, align 4
  br label %139

114:                                              ; preds = %87
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @LONG_PREAMBLE_PLUS_PLCPHEADER_TIME, align 4
  %121 = mul nsw i32 %120, 2
  store i32 %121, i32* %9, align 4
  br label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @SHORT_PREAMBLE_PLUS_PLCPHEADER_TIME, align 4
  %124 = mul nsw i32 %123, 2
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 14
  %128 = mul nsw i32 %127, 8
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %128, %129
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* %12, align 4
  %133 = sdiv i32 %131, %132
  %134 = load i32, i32* @DEFAULT_SIFSTIME, align 4
  %135 = mul nsw i32 %134, 2
  %136 = add nsw i32 %133, %135
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %125, %92
  %140 = load i8, i8* %15, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %180

142:                                              ; preds = %139
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load i32, i32* @DEFAULT_SIFSTIME, align 4
  %149 = load i32, i32* @PREAMBLE_PLUS_SIGNAL_PLUS_SIGNALEXTENSION, align 4
  %150 = add nsw i32 %148, %149
  %151 = load i32, i32* @Tsym, align 4
  %152 = mul nsw i32 2, %151
  %153 = add nsw i32 %150, %152
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %9, align 4
  br label %179

156:                                              ; preds = %142
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i32, i32* @LONG_PREAMBLE_PLUS_PLCPHEADER_TIME, align 4
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %9, align 4
  br label %169

165:                                              ; preds = %156
  %166 = load i32, i32* @SHORT_PREAMBLE_PLUS_PLCPHEADER_TIME, align 4
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %165, %161
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 112, %170
  %172 = sub nsw i32 %171, 1
  %173 = load i32, i32* %12, align 4
  %174 = sdiv i32 %172, %173
  %175 = load i32, i32* @DEFAULT_SIFSTIME, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %169, %147
  br label %180

180:                                              ; preds = %179, %139
  %181 = load i8, i8* %15, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 1, i32 0
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load i8, i8* %14, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 1, i32 0
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %180, %83
  %199 = load i8, i8* %18, align 1
  %200 = icmp ne i8 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 0, i32* %9, align 4
  br label %338

202:                                              ; preds = %198
  %203 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %204 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %207

207:                                              ; preds = %302, %202
  %208 = load i32, i32* %13, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %305

210:                                              ; preds = %207
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 4
  store i32 %216, i32* %10, align 4
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %244

221:                                              ; preds = %210
  %222 = load i32, i32* @PREAMBLE_PLUS_SIGNAL_PLUS_SIGNALEXTENSION, align 4
  %223 = mul nsw i32 %222, 3
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %10, align 4
  %225 = mul nsw i32 %224, 8
  %226 = add nsw i32 %225, 22
  %227 = load i32, i32* %12, align 4
  %228 = mul nsw i32 %227, 4
  %229 = add nsw i32 %226, %228
  %230 = sub nsw i32 %229, 1
  %231 = load i32, i32* %12, align 4
  %232 = mul nsw i32 %231, 4
  %233 = sdiv i32 %230, %232
  %234 = load i32, i32* @Tsym, align 4
  %235 = mul nsw i32 %233, %234
  %236 = load i32, i32* @Tsym, align 4
  %237 = mul nsw i32 3, %236
  %238 = add nsw i32 %235, %237
  %239 = load i32, i32* @DEFAULT_SIFSTIME, align 4
  %240 = mul nsw i32 %239, 3
  %241 = add nsw i32 %238, %240
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %9, align 4
  br label %269

244:                                              ; preds = %210
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i32, i32* @LONG_PREAMBLE_PLUS_PLCPHEADER_TIME, align 4
  %251 = mul nsw i32 %250, 3
  store i32 %251, i32* %9, align 4
  br label %255

252:                                              ; preds = %244
  %253 = load i32, i32* @SHORT_PREAMBLE_PLUS_PLCPHEADER_TIME, align 4
  %254 = mul nsw i32 %253, 3
  store i32 %254, i32* %9, align 4
  br label %255

255:                                              ; preds = %252, %249
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 28
  %258 = mul nsw i32 %257, 8
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 %258, %259
  %261 = sub nsw i32 %260, 1
  %262 = load i32, i32* %12, align 4
  %263 = sdiv i32 %261, %262
  %264 = load i32, i32* @DEFAULT_SIFSTIME, align 4
  %265 = mul nsw i32 %264, 3
  %266 = add nsw i32 %263, %265
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %9, align 4
  br label %269

269:                                              ; preds = %255, %221
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @cpu_to_le16(i32 %270)
  %272 = load i32*, i32** %6, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 5
  store i32 %271, i32* %273, align 4
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = call i8* @cpu_to_le32(i8* %276)
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  store i8* %277, i8** %279, align 8
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 3
  %282 = load i8*, i8** %281, align 8
  %283 = call i8* @cpu_to_le32(i8* %282)
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 3
  store i8* %283, i8** %285, align 8
  %286 = load i32, i32* %11, align 4
  %287 = load i32*, i32** %6, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  store i32* %289, i32** %6, align 8
  %290 = load i32*, i32** %6, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 4
  %292 = bitcast i32* %291 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %292, %struct.TYPE_3__** %8, align 8
  %293 = load i32, i32* %13, align 4
  %294 = icmp ne i32 %293, 1
  br i1 %294, label %295, label %301

295:                                              ; preds = %269
  %296 = load i32*, i32** %6, align 8
  %297 = load i32, i32* %11, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = bitcast i32* %299 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %300, %struct.TYPE_4__** %16, align 8
  br label %301

301:                                              ; preds = %295, %269
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %13, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %13, align 4
  br label %207

305:                                              ; preds = %207
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %305
  %311 = load i32, i32* @PREAMBLE_PLUS_SIGNAL_PLUS_SIGNALEXTENSION, align 4
  store i32 %311, i32* %9, align 4
  %312 = load i32, i32* @Tsym, align 4
  %313 = mul nsw i32 2, %312
  %314 = load i32, i32* @DEFAULT_SIFSTIME, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i32, i32* %9, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %9, align 4
  br label %337

318:                                              ; preds = %305
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 4
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = load i32, i32* @LONG_PREAMBLE_PLUS_PLCPHEADER_TIME, align 4
  store i32 %324, i32* %9, align 4
  br label %327

325:                                              ; preds = %318
  %326 = load i32, i32* @SHORT_PREAMBLE_PLUS_PLCPHEADER_TIME, align 4
  store i32 %326, i32* %9, align 4
  br label %327

327:                                              ; preds = %325, %323
  %328 = load i32, i32* %12, align 4
  %329 = add nsw i32 112, %328
  %330 = sub nsw i32 %329, 1
  %331 = load i32, i32* %12, align 4
  %332 = sdiv i32 %330, %331
  %333 = load i32, i32* @DEFAULT_SIFSTIME, align 4
  %334 = add nsw i32 %332, %333
  %335 = load i32, i32* %9, align 4
  %336 = add nsw i32 %335, %334
  store i32 %336, i32* %9, align 4
  br label %337

337:                                              ; preds = %327, %310
  br label %338

338:                                              ; preds = %337, %201
  %339 = load i32, i32* %9, align 4
  %340 = call i32 @cpu_to_le16(i32 %339)
  %341 = load i32*, i32** %6, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 5
  store i32 %340, i32* %342, align 4
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = call i8* @cpu_to_le32(i8* %345)
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  store i8* %346, i8** %348, align 8
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 3
  %351 = load i8*, i8** %350, align 8
  %352 = call i8* @cpu_to_le32(i8* %351)
  %353 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i32 0, i32 3
  store i8* %352, i8** %354, align 8
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
