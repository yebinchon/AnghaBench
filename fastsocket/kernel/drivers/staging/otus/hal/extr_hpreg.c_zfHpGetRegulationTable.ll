; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpreg.c_zfHpGetRegulationTable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpreg.c_zfHpGetRegulationTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__, %struct.zsHpPriv* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, i64 }
%struct.zsHpPriv = type { i32, i64 }
%struct.cmode = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32*, i32* }

@wd = common dso_local global %struct.TYPE_13__* null, align 8
@ZM_REG_FLAG_CHANNEL_2GHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"couldn't find unitary 5GHz reg domain for Region Code \00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"couldn't find unitary 2GHz reg domain for Region Code \00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"current region code is the same with Region Code \00", align 1
@modes = common dso_local global %struct.cmode* null, align 8
@regDmn5GhzFreq = common dso_local global %struct.TYPE_12__* null, align 8
@regDmn2Ghz11gFreq = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"Unkonwn HAL mode \00", align 1
@BMLEN = common dso_local global i32 0, align 4
@ZM_REG_FLAG_CHANNEL_PASSIVE = common dso_local global i32 0, align 4
@ZM_REG_FLAG_CHANNEL_DFS = common dso_local global i32 0, align 4
@DFS_FCC3 = common dso_local global i32 0, align 4
@ZM_REG_FLAG_CHANNEL_DFS_CLEAR = common dso_local global i32 0, align 4
@LIMIT_FRAME_4MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpGetRegulationTable(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.cmode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.zsHpPriv*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @zmw_get_wlan_dev(i32* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.zsHpPriv*, %struct.zsHpPriv** %24, align 8
  store %struct.zsHpPriv* %25, %struct.zsHpPriv** %14, align 8
  %26 = call i32 (...) @zmw_declare_for_critical_section()
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @ZM_REG_FLAG_CHANNEL_2GHZ, align 4
  %29 = xor i32 %28, -1
  %30 = call i32 @GetWmRD(i64 %27, i32 %29, %struct.TYPE_11__* %9)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %33)
  br label %293

35:                                               ; preds = %4
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @ZM_REG_FLAG_CHANNEL_2GHZ, align 4
  %38 = call i32 @GetWmRD(i64 %36, i32 %37, %struct.TYPE_11__* %10)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %293

43:                                               ; preds = %35
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** @wd, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  br label %293

53:                                               ; preds = %43
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** @wd, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @zmw_enter_critical_section(i32* %59)
  %61 = load %struct.cmode*, %struct.cmode** @modes, align 8
  store %struct.cmode* %61, %struct.cmode** %11, align 8
  br label %62

62:                                               ; preds = %283, %58
  %63 = load %struct.cmode*, %struct.cmode** %11, align 8
  %64 = load %struct.cmode*, %struct.cmode** @modes, align 8
  %65 = load %struct.cmode*, %struct.cmode** @modes, align 8
  %66 = call i64 @N(%struct.cmode* %65)
  %67 = getelementptr inbounds %struct.cmode, %struct.cmode* %64, i64 %66
  %68 = icmp ult %struct.cmode* %63, %67
  br i1 %68, label %69, label %286

69:                                               ; preds = %62
  store i32* null, i32** %16, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %19, align 8
  %70 = load %struct.cmode*, %struct.cmode** %11, align 8
  %71 = getelementptr inbounds %struct.cmode, %struct.cmode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %103 [
    i32 128, label %73
    i32 133, label %74
    i32 131, label %87
    i32 130, label %88
    i32 129, label %101
    i32 132, label %102
  ]

73:                                               ; preds = %69
  store i32* null, i32** %16, align 8
  br label %109

74:                                               ; preds = %69
  %75 = load %struct.zsHpPriv*, %struct.zsHpPriv** %14, align 8
  %76 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %17, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %16, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @regDmn5GhzFreq, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 0
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %19, align 8
  store i64 4920, i64* %7, align 8
  store i64 5825, i64* %8, align 8
  br label %86

86:                                               ; preds = %80, %74
  br label %109

87:                                               ; preds = %69
  store i32* null, i32** %16, align 8
  br label %109

88:                                               ; preds = %69
  %89 = load %struct.zsHpPriv*, %struct.zsHpPriv** %14, align 8
  %90 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, 2
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %17, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %16, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** @regDmn2Ghz11gFreq, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 0
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %19, align 8
  store i64 2412, i64* %7, align 8
  store i64 2472, i64* %8, align 8
  br label %100

100:                                              ; preds = %94, %88
  br label %109

101:                                              ; preds = %69
  store i32* null, i32** %16, align 8
  br label %109

102:                                              ; preds = %69
  store i32* null, i32** %16, align 8
  br label %109

103:                                              ; preds = %69
  %104 = load %struct.cmode*, %struct.cmode** %11, align 8
  %105 = getelementptr inbounds %struct.cmode, %struct.cmode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %107)
  br label %283

109:                                              ; preds = %102, %101, %100, %87, %86, %73
  %110 = load i32*, i32** %16, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %283

113:                                              ; preds = %109
  %114 = load i32*, i32** %16, align 8
  %115 = call i64 @isChanBitMaskZero(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %283

118:                                              ; preds = %113
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %120 = icmp eq %struct.TYPE_12__* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %283

122:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %279, %122
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @BMLEN, align 4
  %126 = mul nsw i32 64, %125
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %282

128:                                              ; preds = %123
  %129 = load i32, i32* %13, align 4
  %130 = load i32*, i32** %16, align 8
  %131 = call i64 @IS_BIT_SET(i32 %129, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %278

133:                                              ; preds = %128
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 %136
  store %struct.TYPE_12__* %137, %struct.TYPE_12__** %18, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %15, align 8
  br label %141

141:                                              ; preds = %271, %133
  %142 = load i64, i64* %15, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp sle i64 %142, %145
  br i1 %146, label %147, label %277

147:                                              ; preds = %141
  %148 = load %struct.zsHpPriv*, %struct.zsHpPriv** %14, align 8
  %149 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %155, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %270, label %161

161:                                              ; preds = %152, %147
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %164, 20
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %271

167:                                              ; preds = %161
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* %7, align 8
  %170 = icmp sge i64 %168, %169
  br i1 %170, label %171, label %269

171:                                              ; preds = %167
  %172 = load i64, i64* %15, align 8
  %173 = load i64, i64* %8, align 8
  %174 = icmp sle i64 %172, %173
  br i1 %174, label %175, label %269

175:                                              ; preds = %171
  %176 = load i64, i64* %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  store i64 %176, i64* %177, align 8
  %178 = load %struct.cmode*, %struct.cmode** %11, align 8
  %179 = getelementptr inbounds %struct.cmode, %struct.cmode* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  store i32 %180, i32* %181, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i32 %184, i32* %185, align 4
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %188, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %175
  %195 = load i32, i32* @ZM_REG_FLAG_CHANNEL_PASSIVE, align 4
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %195
  store i32 %198, i32* %196, align 8
  br label %205

199:                                              ; preds = %175
  %200 = load i32, i32* @ZM_REG_FLAG_CHANNEL_PASSIVE, align 4
  %201 = xor i32 %200, -1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, %201
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %199, %194
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %208, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %205
  %215 = load i32, i32* @ZM_REG_FLAG_CHANNEL_DFS, align 4
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32 %215, i32* %216, align 8
  br label %219

217:                                              ; preds = %205
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32 0, i32* %218, align 8
  br label %219

219:                                              ; preds = %217, %214
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %222, %225
  %227 = load i32, i32* @DFS_FCC3, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %219
  %231 = load i32, i32* @ZM_REG_FLAG_CHANNEL_DFS, align 4
  %232 = xor i32 %231, -1
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, %232
  store i32 %235, i32* %233, align 8
  %236 = load i32, i32* @ZM_REG_FLAG_CHANNEL_DFS_CLEAR, align 4
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %236
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %230, %219
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @LIMIT_FRAME_4MS, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %240
  %248 = load i32, i32* @ZM_REG_FLAG_CHANNEL_DFS_CLEAR, align 4
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %248
  store i32 %251, i32* %249, align 8
  br label %252

252:                                              ; preds = %247, %240
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 5
  store i64 0, i64* %253, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 4
  store i64 0, i64* %254, align 8
  %255 = load i32, i32* %12, align 4
  %256 = icmp slt i32 %255, 60
  %257 = zext i1 %256 to i32
  %258 = call i32 @zm_assert(i32 %257)
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** @wd, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %261, align 8
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i64 %265
  %267 = bitcast %struct.TYPE_10__* %266 to i8*
  %268 = bitcast %struct.TYPE_10__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 40, i1 false)
  br label %269

269:                                              ; preds = %252, %171, %167
  br label %270

270:                                              ; preds = %269, %152
  br label %271

271:                                              ; preds = %270, %166
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* %15, align 8
  %276 = add nsw i64 %275, %274
  store i64 %276, i64* %15, align 8
  br label %141

277:                                              ; preds = %141
  br label %278

278:                                              ; preds = %277, %128
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %13, align 4
  br label %123

282:                                              ; preds = %123
  br label %283

283:                                              ; preds = %282, %121, %117, %112, %103
  %284 = load %struct.cmode*, %struct.cmode** %11, align 8
  %285 = getelementptr inbounds %struct.cmode, %struct.cmode* %284, i32 1
  store %struct.cmode* %285, %struct.cmode** %11, align 8
  br label %62

286:                                              ; preds = %62
  %287 = load i32, i32* %12, align 4
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** @wd, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  store i32 %287, i32* %290, align 8
  %291 = load i32*, i32** %5, align 8
  %292 = call i32 @zmw_leave_critical_section(i32* %291)
  br label %293

293:                                              ; preds = %286, %50, %40, %32
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @GetWmRD(i64, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i64) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i64 @N(%struct.cmode*) #1

declare dso_local i64 @isChanBitMaskZero(i32*) #1

declare dso_local i64 @IS_BIT_SET(i32, i32*) #1

declare dso_local i32 @zm_assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
