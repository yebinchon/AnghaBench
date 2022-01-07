; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_PgPacketWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_PgPacketWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i64* }

@PG_STATE_HEADER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@efuse_PgPacketWrite.repeat_times = internal global i64 0, align 8
@EFUSE_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"efuse_PgPacketWrite error \0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"EFUSE Power ON\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EFUSE PG_STATE_HEADER\0A\00", align 1
@BIT0 = common dso_local global i64 0, align 8
@BIT1 = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"EFUSE PG_STATE_HEADER-1\0A\00", align 1
@PG_STATE_DATA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"EFUSE PG_STATE_HEADER-2\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"EFUSE PG_STATE_DATA\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"EFUSE PG_STATE_HEADER-3\0A\00", align 1
@EFUSE_REPEAT_THRESHOLD_ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, i64, i64, i64*)* @efuse_PgPacketWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efuse_PgPacketWrite(%struct.net_device* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_2__, align 8
  %23 = alloca %struct.TYPE_2__, align 8
  %24 = alloca [64 x i64], align 16
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %31 = load i64, i64* @PG_STATE_HEADER, align 8
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* @TRUE, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i64, i64* @TRUE, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load i64, i64* @TRUE, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %25, align 8
  store i64 15, i64* %26, align 8
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = call i64 @efuse_GetCurrentSize(%struct.net_device* %38)
  %40 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %4
  %43 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %5, align 8
  br label %447

45:                                               ; preds = %4
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @memset(i64* %52, i32 255, i32 64)
  %54 = load i64, i64* %8, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = call i32 @efuse_WordEnableDataRead(i64 %54, i64* %55, i64* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @efuse_CalculateWordCnts(i64 %60)
  store i64 %61, i64* %18, align 8
  %62 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %444, %45
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %69 = icmp slt i64 %67, %68
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i1 [ false, %63 ], [ %69, %66 ]
  br i1 %71, label %72, label %445

72:                                               ; preds = %70
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @PG_STATE_HEADER, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %407

76:                                               ; preds = %72
  %77 = load i64, i64* @TRUE, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %12, align 4
  store i64 15, i64* %26, align 8
  %79 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call i64 @efuse_OneByteRead(%struct.net_device* %80, i64 %81, i64* %15)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %326

84:                                               ; preds = %76
  %85 = load i64, i64* %15, align 8
  %86 = icmp ne i64 %85, 255
  br i1 %86, label %87, label %326

87:                                               ; preds = %84
  %88 = load i64, i64* %15, align 8
  store i64 %88, i64* %19, align 8
  %89 = load i64, i64* %19, align 8
  %90 = ashr i64 %89, 4
  %91 = and i64 %90, 15
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load i64, i64* %19, align 8
  %95 = and i64 %94, 15
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @efuse_CalculateWordCnts(i64 %98)
  store i64 %99, i64* %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %87
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %17, align 8
  %108 = mul nsw i64 %107, 2
  %109 = add nsw i64 %106, %108
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %14, align 8
  br label %324

111:                                              ; preds = %87
  store i64 0, i64* %25, align 8
  br label %112

112:                                              ; preds = %132, %111
  %113 = load i64, i64* %25, align 8
  %114 = load i64, i64* %17, align 8
  %115 = mul nsw i64 %114, 2
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %112
  %118 = load %struct.net_device*, %struct.net_device** %6, align 8
  %119 = load i64, i64* %14, align 8
  %120 = add nsw i64 %119, 1
  %121 = load i64, i64* %25, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i64 @efuse_OneByteRead(%struct.net_device* %118, i64 %122, i64* %15)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load i64, i64* %15, align 8
  %127 = icmp ne i64 %126, 255
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i64, i64* @FALSE, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %128, %125, %117
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %25, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %25, align 8
  br label %112

135:                                              ; preds = %112
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @FALSE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* %17, align 8
  %143 = mul nsw i64 %142, 2
  %144 = add nsw i64 %141, %143
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %14, align 8
  br label %323

146:                                              ; preds = %135
  store i64 15, i64* %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @BIT0, align 8
  %150 = and i64 %148, %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @BIT0, align 8
  %154 = and i64 %152, %153
  %155 = or i64 %150, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %146
  %158 = load i64, i64* @BIT0, align 8
  %159 = xor i64 %158, -1
  %160 = load i64, i64* %20, align 8
  %161 = and i64 %160, %159
  store i64 %161, i64* %20, align 8
  br label %162

162:                                              ; preds = %157, %146
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @BIT1, align 8
  %166 = and i64 %164, %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @BIT1, align 8
  %170 = and i64 %168, %169
  %171 = or i64 %166, %170
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %162
  %174 = load i64, i64* @BIT1, align 8
  %175 = xor i64 %174, -1
  %176 = load i64, i64* %20, align 8
  %177 = and i64 %176, %175
  store i64 %177, i64* %20, align 8
  br label %178

178:                                              ; preds = %173, %162
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @BIT2, align 8
  %182 = and i64 %180, %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @BIT2, align 8
  %186 = and i64 %184, %185
  %187 = or i64 %182, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %178
  %190 = load i64, i64* @BIT2, align 8
  %191 = xor i64 %190, -1
  %192 = load i64, i64* %20, align 8
  %193 = and i64 %192, %191
  store i64 %193, i64* %20, align 8
  br label %194

194:                                              ; preds = %189, %178
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @BIT3, align 8
  %198 = and i64 %196, %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @BIT3, align 8
  %202 = and i64 %200, %201
  %203 = or i64 %198, %202
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %194
  %206 = load i64, i64* @BIT3, align 8
  %207 = xor i64 %206, -1
  %208 = load i64, i64* %20, align 8
  %209 = and i64 %208, %207
  store i64 %209, i64* %20, align 8
  br label %210

210:                                              ; preds = %205, %194
  %211 = load i64, i64* %20, align 8
  %212 = and i64 %211, 15
  %213 = icmp ne i64 %212, 15
  br i1 %213, label %214, label %310

214:                                              ; preds = %210
  %215 = load %struct.net_device*, %struct.net_device** %6, align 8
  %216 = load i64, i64* %14, align 8
  %217 = add nsw i64 %216, 1
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %221 = load i64*, i64** %220, align 8
  %222 = call i64 @efuse_WordEnableDataWrite(%struct.net_device* %215, i64 %217, i64 %219, i64* %221)
  store i64 %222, i64* %26, align 8
  %223 = load i64, i64* %26, align 8
  %224 = and i64 %223, 15
  %225 = icmp ne i64 15, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %214
  %227 = load i64, i64* %7, align 8
  store i64 %227, i64* %27, align 8
  %228 = load i64, i64* %26, align 8
  store i64 %228, i64* %28, align 8
  %229 = load %struct.net_device*, %struct.net_device** %6, align 8
  %230 = load i64, i64* %27, align 8
  %231 = load i64, i64* %28, align 8
  %232 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %233 = call i64 @efuse_PgPacketWrite(%struct.net_device* %229, i64 %230, i64 %231, i64* %232)
  br label %234

234:                                              ; preds = %226, %214
  store i64 15, i64* %21, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @BIT0, align 8
  %238 = and i64 %236, %237
  %239 = load i64, i64* %20, align 8
  %240 = load i64, i64* @BIT0, align 8
  %241 = and i64 %239, %240
  %242 = xor i64 %238, %241
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %234
  %245 = load i64, i64* @BIT0, align 8
  %246 = xor i64 %245, -1
  %247 = load i64, i64* %21, align 8
  %248 = and i64 %247, %246
  store i64 %248, i64* %21, align 8
  br label %249

249:                                              ; preds = %244, %234
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @BIT1, align 8
  %253 = and i64 %251, %252
  %254 = load i64, i64* %20, align 8
  %255 = load i64, i64* @BIT1, align 8
  %256 = and i64 %254, %255
  %257 = xor i64 %253, %256
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %249
  %260 = load i64, i64* @BIT1, align 8
  %261 = xor i64 %260, -1
  %262 = load i64, i64* %21, align 8
  %263 = and i64 %262, %261
  store i64 %263, i64* %21, align 8
  br label %264

264:                                              ; preds = %259, %249
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @BIT2, align 8
  %268 = and i64 %266, %267
  %269 = load i64, i64* %20, align 8
  %270 = load i64, i64* @BIT2, align 8
  %271 = and i64 %269, %270
  %272 = xor i64 %268, %271
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %264
  %275 = load i64, i64* @BIT2, align 8
  %276 = xor i64 %275, -1
  %277 = load i64, i64* %21, align 8
  %278 = and i64 %277, %276
  store i64 %278, i64* %21, align 8
  br label %279

279:                                              ; preds = %274, %264
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @BIT3, align 8
  %283 = and i64 %281, %282
  %284 = load i64, i64* %20, align 8
  %285 = load i64, i64* @BIT3, align 8
  %286 = and i64 %284, %285
  %287 = xor i64 %283, %286
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %279
  %290 = load i64, i64* @BIT3, align 8
  %291 = xor i64 %290, -1
  %292 = load i64, i64* %21, align 8
  %293 = and i64 %292, %291
  store i64 %293, i64* %21, align 8
  br label %294

294:                                              ; preds = %289, %279
  %295 = load i64, i64* %21, align 8
  %296 = and i64 %295, 15
  %297 = icmp ne i64 %296, 15
  br i1 %297, label %298, label %306

298:                                              ; preds = %294
  %299 = load %struct.net_device*, %struct.net_device** %6, align 8
  %300 = call i64 @efuse_GetCurrentSize(%struct.net_device* %299)
  store i64 %300, i64* %14, align 8
  %301 = load i64, i64* %7, align 8
  %302 = trunc i64 %301 to i32
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %302, i32* %303, align 8
  %304 = load i64, i64* %21, align 8
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 %304, i64* %305, align 8
  br label %309

306:                                              ; preds = %294
  %307 = load i64, i64* @FALSE, align 8
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %11, align 4
  br label %309

309:                                              ; preds = %306, %298
  br label %322

310:                                              ; preds = %210
  %311 = load i64, i64* %14, align 8
  %312 = load i64, i64* %17, align 8
  %313 = mul nsw i64 2, %312
  %314 = add nsw i64 %311, %313
  %315 = add nsw i64 %314, 1
  store i64 %315, i64* %14, align 8
  %316 = load i64, i64* %7, align 8
  %317 = trunc i64 %316 to i32
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %317, i32* %318, align 8
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 %320, i64* %321, align 8
  br label %322

322:                                              ; preds = %310, %309
  br label %323

323:                                              ; preds = %322, %140
  br label %324

324:                                              ; preds = %323, %105
  %325 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %406

326:                                              ; preds = %84, %76
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = shl i32 %328, 4
  %330 = and i32 %329, 240
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = or i64 %331, %333
  store i64 %334, i64* %16, align 8
  %335 = load %struct.net_device*, %struct.net_device** %6, align 8
  %336 = load i64, i64* %14, align 8
  %337 = load i64, i64* %16, align 8
  %338 = call i32 @efuse_OneByteWrite(%struct.net_device* %335, i64 %336, i64 %337)
  %339 = load %struct.net_device*, %struct.net_device** %6, align 8
  %340 = load i64, i64* %14, align 8
  %341 = call i64 @efuse_OneByteRead(%struct.net_device* %339, i64 %340, i64* %19)
  %342 = load i64, i64* %19, align 8
  %343 = load i64, i64* %16, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %347

345:                                              ; preds = %326
  %346 = load i64, i64* @PG_STATE_DATA, align 8
  store i64 %346, i64* %10, align 8
  br label %405

347:                                              ; preds = %326
  %348 = load i64, i64* %19, align 8
  %349 = ashr i64 %348, 4
  %350 = and i64 %349, 15
  %351 = trunc i64 %350 to i32
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %351, i32* %352, align 8
  %353 = load i64, i64* %19, align 8
  %354 = and i64 %353, 15
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i64 %354, i64* %355, align 8
  %356 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = call i64 @efuse_CalculateWordCnts(i64 %357)
  store i64 %358, i64* %17, align 8
  %359 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %360 = call i32 @memset(i64* %359, i32 255, i32 64)
  %361 = load %struct.net_device*, %struct.net_device** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %365 = call i64 @efuse_PgPacketRead(%struct.net_device* %361, i32 %363, i64* %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %397

367:                                              ; preds = %347
  %368 = load %struct.net_device*, %struct.net_device** %6, align 8
  %369 = load i64, i64* %14, align 8
  %370 = add nsw i64 %369, 1
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %374 = call i64 @efuse_WordEnableDataWrite(%struct.net_device* %368, i64 %370, i64 %372, i64* %373)
  store i64 %374, i64* %26, align 8
  %375 = load i64, i64* %26, align 8
  %376 = and i64 %375, 15
  %377 = icmp ne i64 15, %376
  br i1 %377, label %378, label %390

378:                                              ; preds = %367
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  store i64 %381, i64* %29, align 8
  %382 = load i64, i64* %26, align 8
  store i64 %382, i64* %30, align 8
  %383 = load %struct.net_device*, %struct.net_device** %6, align 8
  %384 = load i64, i64* %29, align 8
  %385 = load i64, i64* %30, align 8
  %386 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %387 = call i64 @efuse_PgPacketWrite(%struct.net_device* %383, i64 %384, i64 %385, i64* %386)
  %388 = load %struct.net_device*, %struct.net_device** %6, align 8
  %389 = call i64 @efuse_GetCurrentSize(%struct.net_device* %388)
  store i64 %389, i64* %14, align 8
  br label %396

390:                                              ; preds = %367
  %391 = load i64, i64* %14, align 8
  %392 = load i64, i64* %17, align 8
  %393 = mul nsw i64 %392, 2
  %394 = add nsw i64 %391, %393
  %395 = add nsw i64 %394, 1
  store i64 %395, i64* %14, align 8
  br label %396

396:                                              ; preds = %390, %378
  br label %403

397:                                              ; preds = %347
  %398 = load i64, i64* %14, align 8
  %399 = load i64, i64* %17, align 8
  %400 = mul nsw i64 %399, 2
  %401 = add nsw i64 %398, %400
  %402 = add nsw i64 %401, 1
  store i64 %402, i64* %14, align 8
  br label %403

403:                                              ; preds = %397, %396
  %404 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %405

405:                                              ; preds = %403, %345
  br label %406

406:                                              ; preds = %405, %324
  br label %444

407:                                              ; preds = %72
  %408 = load i64, i64* %10, align 8
  %409 = load i64, i64* @PG_STATE_DATA, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %411, label %443

411:                                              ; preds = %407
  %412 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i64 15, i64* %26, align 8
  %413 = load %struct.net_device*, %struct.net_device** %6, align 8
  %414 = load i64, i64* %14, align 8
  %415 = add nsw i64 %414, 1
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %419 = load i64*, i64** %418, align 8
  %420 = call i64 @efuse_WordEnableDataWrite(%struct.net_device* %413, i64 %415, i64 %417, i64* %419)
  store i64 %420, i64* %26, align 8
  %421 = load i64, i64* %26, align 8
  %422 = and i64 %421, 15
  %423 = icmp eq i64 %422, 15
  br i1 %423, label %424, label %427

424:                                              ; preds = %411
  %425 = load i64, i64* @FALSE, align 8
  %426 = trunc i64 %425 to i32
  store i32 %426, i32* %11, align 4
  br label %442

427:                                              ; preds = %411
  %428 = load i64, i64* %14, align 8
  %429 = load i64, i64* %18, align 8
  %430 = mul nsw i64 2, %429
  %431 = add nsw i64 %428, %430
  %432 = add nsw i64 %431, 1
  store i64 %432, i64* %14, align 8
  %433 = load i64, i64* %7, align 8
  %434 = trunc i64 %433 to i32
  %435 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %434, i32* %435, align 8
  %436 = load i64, i64* %26, align 8
  %437 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 %436, i64* %437, align 8
  %438 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = call i64 @efuse_CalculateWordCnts(i64 %439)
  store i64 %440, i64* %18, align 8
  %441 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %442

442:                                              ; preds = %427, %424
  br label %443

443:                                              ; preds = %442, %407
  br label %444

444:                                              ; preds = %443, %406
  br label %63

445:                                              ; preds = %70
  %446 = load i64, i64* @TRUE, align 8
  store i64 %446, i64* %5, align 8
  br label %447

447:                                              ; preds = %445, %42
  %448 = load i64, i64* %5, align 8
  ret i64 %448
}

declare dso_local i64 @efuse_GetCurrentSize(%struct.net_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @efuse_WordEnableDataRead(i64, i64*, i64*) #1

declare dso_local i64 @efuse_CalculateWordCnts(i64) #1

declare dso_local i64 @efuse_OneByteRead(%struct.net_device*, i64, i64*) #1

declare dso_local i64 @efuse_WordEnableDataWrite(%struct.net_device*, i64, i64, i64*) #1

declare dso_local i32 @efuse_OneByteWrite(%struct.net_device*, i64, i64) #1

declare dso_local i64 @efuse_PgPacketRead(%struct.net_device*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
