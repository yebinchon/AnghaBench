; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_35__, %struct.TYPE_34__, i64, i64, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__*, i8*, i64, i32, i8*, i32, i32, i64 }
%struct.TYPE_35__ = type { i64, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i64 }
%struct.TYPE_34__ = type { i32, i32, i32, i64, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@SIG_HOOKSTATE = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@hertz = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@ixjdebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Ringing cadence state = %d - %ld\0A\00", align 1
@PLD_SLIC_STATE_OHT = common dso_local global i64 0, align 8
@PLD_SLIC_STATE_ACTIVE = common dso_local global i64 0, align 8
@QTI_LINEJACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ixj_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixj_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %7, %struct.TYPE_36__** %5, align 8
  %8 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 25
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %993

15:                                               ; preds = %1
  %16 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 24
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %993

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 10
  %24 = bitcast i32* %23 to i8*
  %25 = call i64 @test_and_set_bit(i32 %21, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %993

27:                                               ; preds = %20
  %28 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %28, i32 0, i32 23
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ixj_perfmon(i32 %30)
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %33 = call i32 @ixj_hookstate(%struct.TYPE_36__* %32)
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %216

40:                                               ; preds = %27
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %47 = call i32 @ixj_cpt_stop(%struct.TYPE_36__* %46)
  %48 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 3
  store i32 0, i32* %54, align 4
  %55 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %55, i32 0, i32 12
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %60 = load i32, i32* @SIG_HOOKSTATE, align 4
  %61 = load i32, i32* @POLL_IN, align 4
  %62 = call i32 @ixj_kill_fasync(%struct.TYPE_36__* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %52, %45
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 10
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %69 = call i32 @ixj_add_timer(%struct.TYPE_36__* %68)
  br label %996

70:                                               ; preds = %40
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i32, i32* @hertz, align 4
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %76, %79
  %81 = mul nsw i32 %80, 25
  %82 = sdiv i32 %81, 100000
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %4, align 8
  br label %101

84:                                               ; preds = %70
  %85 = load i32, i32* @hertz, align 4
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = mul nsw i32 %89, 25
  %91 = sdiv i32 %90, 100000
  %92 = load i32, i32* @hertz, align 4
  %93 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = mul nsw i32 %96, 25
  %98 = sdiv i32 %97, 100000
  %99 = add nsw i32 %91, %98
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %4, align 8
  br label %101

101:                                              ; preds = %84, %75
  %102 = load i8*, i8** @jiffies, align 8
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %103, i32 0, i32 22
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %4, align 8
  %107 = getelementptr i8, i8* %105, i64 %106
  %108 = call i64 @time_before(i8* %102, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %151

110:                                              ; preds = %101
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %134

115:                                              ; preds = %110
  %116 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 21
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ixj_play_tone(%struct.TYPE_36__* %116, i32 %119)
  %121 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %121, i32 0, i32 17
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 32
  br i1 %125, label %126, label %133

126:                                              ; preds = %115
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %128, i32 0, i32 10
  %130 = call i32 @clear_bit(i32 %127, i32* %129)
  %131 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %132 = call i32 @ixj_add_timer(%struct.TYPE_36__* %131)
  br label %996

133:                                              ; preds = %115
  br label %150

134:                                              ; preds = %110
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %136 = call i32 @ixj_play_tone(%struct.TYPE_36__* %135, i32 0)
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %137, i32 0, i32 17
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 32
  br i1 %141, label %142, label %149

142:                                              ; preds = %134
  %143 = load i32, i32* %3, align 4
  %144 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %144, i32 0, i32 10
  %146 = call i32 @clear_bit(i32 %143, i32* %145)
  %147 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %148 = call i32 @ixj_add_timer(%struct.TYPE_36__* %147)
  br label %996

149:                                              ; preds = %134
  br label %150

150:                                              ; preds = %149, %133
  br label %215

151:                                              ; preds = %101
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %153 = call i32 @ixj_tone_timeout(%struct.TYPE_36__* %152)
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 13
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 9
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %161 = call i32 @ixj_dialtone(%struct.TYPE_36__* %160)
  br label %162

162:                                              ; preds = %159, %151
  %163 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %163, i32 0, i32 13
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %162
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %170 = call i32 @ixj_busytone(%struct.TYPE_36__* %169)
  %171 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %171, i32 0, i32 17
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 32
  br i1 %175, label %176, label %183

176:                                              ; preds = %168
  %177 = load i32, i32* %3, align 4
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 10
  %180 = call i32 @clear_bit(i32 %177, i32* %179)
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %182 = call i32 @ixj_add_timer(%struct.TYPE_36__* %181)
  br label %996

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183, %162
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 13
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %206

190:                                              ; preds = %184
  %191 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %192 = call i32 @ixj_ringback(%struct.TYPE_36__* %191)
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 17
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 32
  br i1 %197, label %198, label %205

198:                                              ; preds = %190
  %199 = load i32, i32* %3, align 4
  %200 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %200, i32 0, i32 10
  %202 = call i32 @clear_bit(i32 %199, i32* %201)
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %204 = call i32 @ixj_add_timer(%struct.TYPE_36__* %203)
  br label %996

205:                                              ; preds = %190
  br label %206

206:                                              ; preds = %205, %184
  %207 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %206
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %213 = call i32 @ixj_cpt_stop(%struct.TYPE_36__* %212)
  br label %214

214:                                              ; preds = %211, %206
  br label %215

215:                                              ; preds = %214, %150
  br label %216

216:                                              ; preds = %215, %27
  %217 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %222, i32 0, i32 17
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 32
  br i1 %226, label %242, label %227

227:                                              ; preds = %221, %216
  %228 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %229 = call i64 @IsRxReady(%struct.TYPE_36__* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %233 = call i32 @ixj_read_frame(%struct.TYPE_36__* %232)
  br label %234

234:                                              ; preds = %231, %227
  %235 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %236 = call i64 @IsTxReady(%struct.TYPE_36__* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %234
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %240 = call i32 @ixj_write_frame(%struct.TYPE_36__* %239)
  br label %241

241:                                              ; preds = %238, %234
  br label %242

242:                                              ; preds = %241, %221
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 13
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %244, i32 0, i32 6
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %856

248:                                              ; preds = %242
  %249 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 1
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %248
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %255, i32 0, i32 13
  %257 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %256, i32 0, i32 6
  store i64 0, i64* %257, align 8
  %258 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %259 = call i32 @ixj_ring_off(%struct.TYPE_36__* %258)
  br label %855

260:                                              ; preds = %248
  %261 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %261, i32 0, i32 18
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %263, i64 5
  %265 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %264, i32 0, i32 14
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %746

268:                                              ; preds = %260
  %269 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %269, i32 0, i32 18
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %271, i64 5
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 7
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %290

276:                                              ; preds = %268
  %277 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %277, i32 0, i32 18
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i64 5
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 7
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %746

284:                                              ; preds = %276
  %285 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %285, i32 0, i32 13
  %287 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %746

290:                                              ; preds = %284, %268
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %291, i32 0, i32 18
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i64 5
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  switch i32 %296, label %709 [
    i32 0, label %297
    i32 1, label %347
    i32 2, label %397
    i32 3, label %462
    i32 4, label %527
    i32 5, label %592
    i32 6, label %657
    i32 7, label %687
  ]

297:                                              ; preds = %290
  %298 = load i8*, i8** @jiffies, align 8
  %299 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %299, i32 0, i32 18
  %301 = load %struct.TYPE_30__*, %struct.TYPE_30__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %301, i64 5
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @hertz, align 4
  %306 = mul nsw i32 %305, 100
  %307 = mul nsw i32 %304, %306
  %308 = sdiv i32 %307, 10000
  %309 = sext i32 %308 to i64
  %310 = getelementptr i8, i8* %298, i64 %309
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %311, i32 0, i32 18
  %313 = load %struct.TYPE_30__*, %struct.TYPE_30__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %313, i64 5
  %315 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %314, i32 0, i32 13
  store i8* %310, i8** %315, align 8
  %316 = load i8*, i8** @jiffies, align 8
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 18
  %319 = load %struct.TYPE_30__*, %struct.TYPE_30__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %319, i64 5
  %321 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %320, i32 0, i32 13
  %322 = load i8*, i8** %321, align 8
  %323 = call i64 @time_before(i8* %316, i8* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %341

325:                                              ; preds = %297
  %326 = load i32, i32* @ixjdebug, align 4
  %327 = and i32 %326, 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %325
  %330 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %330, i32 0, i32 18
  %332 = load %struct.TYPE_30__*, %struct.TYPE_30__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %332, i64 5
  %334 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i8*, i8** @jiffies, align 8
  %337 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %335, i8* %336)
  br label %338

338:                                              ; preds = %329, %325
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %340 = call i32 @ixj_ring_on(%struct.TYPE_36__* %339)
  br label %341

341:                                              ; preds = %338, %297
  %342 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %342, i32 0, i32 18
  %344 = load %struct.TYPE_30__*, %struct.TYPE_30__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %344, i64 5
  %346 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %345, i32 0, i32 0
  store i32 1, i32* %346, align 8
  br label %709

347:                                              ; preds = %290
  %348 = load i8*, i8** @jiffies, align 8
  %349 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %349, i32 0, i32 18
  %351 = load %struct.TYPE_30__*, %struct.TYPE_30__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %351, i64 5
  %353 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %352, i32 0, i32 13
  %354 = load i8*, i8** %353, align 8
  %355 = call i64 @time_after(i8* %348, i8* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %396

357:                                              ; preds = %347
  %358 = load i8*, i8** @jiffies, align 8
  %359 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %359, i32 0, i32 18
  %361 = load %struct.TYPE_30__*, %struct.TYPE_30__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %361, i64 5
  %363 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @hertz, align 4
  %366 = mul nsw i32 %365, 100
  %367 = mul nsw i32 %364, %366
  %368 = sdiv i32 %367, 10000
  %369 = sext i32 %368 to i64
  %370 = getelementptr i8, i8* %358, i64 %369
  %371 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %371, i32 0, i32 18
  %373 = load %struct.TYPE_30__*, %struct.TYPE_30__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %373, i64 5
  %375 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %374, i32 0, i32 12
  store i8* %370, i8** %375, align 8
  %376 = load i32, i32* @ixjdebug, align 4
  %377 = and i32 %376, 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %388

379:                                              ; preds = %357
  %380 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %380, i32 0, i32 18
  %382 = load %struct.TYPE_30__*, %struct.TYPE_30__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %382, i64 5
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i8*, i8** @jiffies, align 8
  %387 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %385, i8* %386)
  br label %388

388:                                              ; preds = %379, %357
  %389 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %390 = call i32 @ixj_ring_off(%struct.TYPE_36__* %389)
  %391 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %391, i32 0, i32 18
  %393 = load %struct.TYPE_30__*, %struct.TYPE_30__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %393, i64 5
  %395 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %394, i32 0, i32 0
  store i32 2, i32* %395, align 8
  br label %396

396:                                              ; preds = %388, %347
  br label %709

397:                                              ; preds = %290
  %398 = load i8*, i8** @jiffies, align 8
  %399 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %399, i32 0, i32 18
  %401 = load %struct.TYPE_30__*, %struct.TYPE_30__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %401, i64 5
  %403 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %402, i32 0, i32 12
  %404 = load i8*, i8** %403, align 8
  %405 = call i64 @time_after(i8* %398, i8* %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %461

407:                                              ; preds = %397
  %408 = load i32, i32* @ixjdebug, align 4
  %409 = and i32 %408, 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %420

411:                                              ; preds = %407
  %412 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %412, i32 0, i32 18
  %414 = load %struct.TYPE_30__*, %struct.TYPE_30__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %414, i64 5
  %416 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load i8*, i8** @jiffies, align 8
  %419 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %417, i8* %418)
  br label %420

420:                                              ; preds = %411, %407
  %421 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %422 = call i32 @ixj_ring_on(%struct.TYPE_36__* %421)
  %423 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %423, i32 0, i32 18
  %425 = load %struct.TYPE_30__*, %struct.TYPE_30__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %425, i64 5
  %427 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %454

430:                                              ; preds = %420
  %431 = load i8*, i8** @jiffies, align 8
  %432 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %432, i32 0, i32 18
  %434 = load %struct.TYPE_30__*, %struct.TYPE_30__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %434, i64 5
  %436 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @hertz, align 4
  %439 = mul nsw i32 %438, 100
  %440 = mul nsw i32 %437, %439
  %441 = sdiv i32 %440, 10000
  %442 = sext i32 %441 to i64
  %443 = getelementptr i8, i8* %431, i64 %442
  %444 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %444, i32 0, i32 18
  %446 = load %struct.TYPE_30__*, %struct.TYPE_30__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %446, i64 5
  %448 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %447, i32 0, i32 11
  store i8* %443, i8** %448, align 8
  %449 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %449, i32 0, i32 18
  %451 = load %struct.TYPE_30__*, %struct.TYPE_30__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %451, i64 5
  %453 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %452, i32 0, i32 0
  store i32 3, i32* %453, align 8
  br label %460

454:                                              ; preds = %420
  %455 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %455, i32 0, i32 18
  %457 = load %struct.TYPE_30__*, %struct.TYPE_30__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %457, i64 5
  %459 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %458, i32 0, i32 0
  store i32 7, i32* %459, align 8
  br label %460

460:                                              ; preds = %454, %430
  br label %461

461:                                              ; preds = %460, %397
  br label %709

462:                                              ; preds = %290
  %463 = load i8*, i8** @jiffies, align 8
  %464 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %464, i32 0, i32 18
  %466 = load %struct.TYPE_30__*, %struct.TYPE_30__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %466, i64 5
  %468 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %467, i32 0, i32 11
  %469 = load i8*, i8** %468, align 8
  %470 = call i64 @time_after(i8* %463, i8* %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %526

472:                                              ; preds = %462
  %473 = load i32, i32* @ixjdebug, align 4
  %474 = and i32 %473, 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %485

476:                                              ; preds = %472
  %477 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %477, i32 0, i32 18
  %479 = load %struct.TYPE_30__*, %struct.TYPE_30__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %479, i64 5
  %481 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load i8*, i8** @jiffies, align 8
  %484 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %482, i8* %483)
  br label %485

485:                                              ; preds = %476, %472
  %486 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %487 = call i32 @ixj_ring_off(%struct.TYPE_36__* %486)
  %488 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %488, i32 0, i32 18
  %490 = load %struct.TYPE_30__*, %struct.TYPE_30__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %490, i64 5
  %492 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %491, i32 0, i32 4
  %493 = load i32, i32* %492, align 8
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %519

495:                                              ; preds = %485
  %496 = load i8*, i8** @jiffies, align 8
  %497 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %498 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %497, i32 0, i32 18
  %499 = load %struct.TYPE_30__*, %struct.TYPE_30__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %499, i64 5
  %501 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %500, i32 0, i32 4
  %502 = load i32, i32* %501, align 8
  %503 = load i32, i32* @hertz, align 4
  %504 = mul nsw i32 %503, 100
  %505 = mul nsw i32 %502, %504
  %506 = sdiv i32 %505, 10000
  %507 = sext i32 %506 to i64
  %508 = getelementptr i8, i8* %496, i64 %507
  %509 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %509, i32 0, i32 18
  %511 = load %struct.TYPE_30__*, %struct.TYPE_30__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %511, i64 5
  %513 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %512, i32 0, i32 10
  store i8* %508, i8** %513, align 8
  %514 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %514, i32 0, i32 18
  %516 = load %struct.TYPE_30__*, %struct.TYPE_30__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %516, i64 5
  %518 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %517, i32 0, i32 0
  store i32 4, i32* %518, align 8
  br label %525

519:                                              ; preds = %485
  %520 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %521 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %520, i32 0, i32 18
  %522 = load %struct.TYPE_30__*, %struct.TYPE_30__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %522, i64 5
  %524 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %523, i32 0, i32 0
  store i32 7, i32* %524, align 8
  br label %525

525:                                              ; preds = %519, %495
  br label %526

526:                                              ; preds = %525, %462
  br label %709

527:                                              ; preds = %290
  %528 = load i8*, i8** @jiffies, align 8
  %529 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %530 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %529, i32 0, i32 18
  %531 = load %struct.TYPE_30__*, %struct.TYPE_30__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %531, i64 5
  %533 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %532, i32 0, i32 10
  %534 = load i8*, i8** %533, align 8
  %535 = call i64 @time_after(i8* %528, i8* %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %591

537:                                              ; preds = %527
  %538 = load i32, i32* @ixjdebug, align 4
  %539 = and i32 %538, 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %550

541:                                              ; preds = %537
  %542 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %543 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %542, i32 0, i32 18
  %544 = load %struct.TYPE_30__*, %struct.TYPE_30__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %544, i64 5
  %546 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = load i8*, i8** @jiffies, align 8
  %549 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %547, i8* %548)
  br label %550

550:                                              ; preds = %541, %537
  %551 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %552 = call i32 @ixj_ring_on(%struct.TYPE_36__* %551)
  %553 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %554 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %553, i32 0, i32 18
  %555 = load %struct.TYPE_30__*, %struct.TYPE_30__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %555, i64 5
  %557 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %556, i32 0, i32 5
  %558 = load i32, i32* %557, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %584

560:                                              ; preds = %550
  %561 = load i8*, i8** @jiffies, align 8
  %562 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %563 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %562, i32 0, i32 18
  %564 = load %struct.TYPE_30__*, %struct.TYPE_30__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %564, i64 5
  %566 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %565, i32 0, i32 5
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* @hertz, align 4
  %569 = mul nsw i32 %568, 100
  %570 = mul nsw i32 %567, %569
  %571 = sdiv i32 %570, 10000
  %572 = sext i32 %571 to i64
  %573 = getelementptr i8, i8* %561, i64 %572
  %574 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %574, i32 0, i32 18
  %576 = load %struct.TYPE_30__*, %struct.TYPE_30__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %576, i64 5
  %578 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %577, i32 0, i32 9
  store i8* %573, i8** %578, align 8
  %579 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %580 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %579, i32 0, i32 18
  %581 = load %struct.TYPE_30__*, %struct.TYPE_30__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %581, i64 5
  %583 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %582, i32 0, i32 0
  store i32 5, i32* %583, align 8
  br label %590

584:                                              ; preds = %550
  %585 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %586 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %585, i32 0, i32 18
  %587 = load %struct.TYPE_30__*, %struct.TYPE_30__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %587, i64 5
  %589 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %588, i32 0, i32 0
  store i32 7, i32* %589, align 8
  br label %590

590:                                              ; preds = %584, %560
  br label %591

591:                                              ; preds = %590, %527
  br label %709

592:                                              ; preds = %290
  %593 = load i8*, i8** @jiffies, align 8
  %594 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %595 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %594, i32 0, i32 18
  %596 = load %struct.TYPE_30__*, %struct.TYPE_30__** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %596, i64 5
  %598 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %597, i32 0, i32 9
  %599 = load i8*, i8** %598, align 8
  %600 = call i64 @time_after(i8* %593, i8* %599)
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %656

602:                                              ; preds = %592
  %603 = load i32, i32* @ixjdebug, align 4
  %604 = and i32 %603, 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %615

606:                                              ; preds = %602
  %607 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %608 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %607, i32 0, i32 18
  %609 = load %struct.TYPE_30__*, %struct.TYPE_30__** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %609, i64 5
  %611 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = load i8*, i8** @jiffies, align 8
  %614 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %612, i8* %613)
  br label %615

615:                                              ; preds = %606, %602
  %616 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %617 = call i32 @ixj_ring_off(%struct.TYPE_36__* %616)
  %618 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %619 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %618, i32 0, i32 18
  %620 = load %struct.TYPE_30__*, %struct.TYPE_30__** %619, align 8
  %621 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %620, i64 5
  %622 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %621, i32 0, i32 6
  %623 = load i32, i32* %622, align 8
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %649

625:                                              ; preds = %615
  %626 = load i8*, i8** @jiffies, align 8
  %627 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %628 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %627, i32 0, i32 18
  %629 = load %struct.TYPE_30__*, %struct.TYPE_30__** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %629, i64 5
  %631 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %630, i32 0, i32 6
  %632 = load i32, i32* %631, align 8
  %633 = load i32, i32* @hertz, align 4
  %634 = mul nsw i32 %633, 100
  %635 = mul nsw i32 %632, %634
  %636 = sdiv i32 %635, 10000
  %637 = sext i32 %636 to i64
  %638 = getelementptr i8, i8* %626, i64 %637
  %639 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %640 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %639, i32 0, i32 18
  %641 = load %struct.TYPE_30__*, %struct.TYPE_30__** %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %641, i64 5
  %643 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %642, i32 0, i32 8
  store i8* %638, i8** %643, align 8
  %644 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %645 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %644, i32 0, i32 18
  %646 = load %struct.TYPE_30__*, %struct.TYPE_30__** %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %646, i64 5
  %648 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %647, i32 0, i32 0
  store i32 6, i32* %648, align 8
  br label %655

649:                                              ; preds = %615
  %650 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %651 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %650, i32 0, i32 18
  %652 = load %struct.TYPE_30__*, %struct.TYPE_30__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %652, i64 5
  %654 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %653, i32 0, i32 0
  store i32 7, i32* %654, align 8
  br label %655

655:                                              ; preds = %649, %625
  br label %656

656:                                              ; preds = %655, %592
  br label %709

657:                                              ; preds = %290
  %658 = load i8*, i8** @jiffies, align 8
  %659 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %660 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %659, i32 0, i32 18
  %661 = load %struct.TYPE_30__*, %struct.TYPE_30__** %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %661, i64 5
  %663 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %662, i32 0, i32 8
  %664 = load i8*, i8** %663, align 8
  %665 = call i64 @time_after(i8* %658, i8* %664)
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %667, label %686

667:                                              ; preds = %657
  %668 = load i32, i32* @ixjdebug, align 4
  %669 = and i32 %668, 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %680

671:                                              ; preds = %667
  %672 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %673 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %672, i32 0, i32 18
  %674 = load %struct.TYPE_30__*, %struct.TYPE_30__** %673, align 8
  %675 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %674, i64 5
  %676 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %675, i32 0, i32 0
  %677 = load i32, i32* %676, align 8
  %678 = load i8*, i8** @jiffies, align 8
  %679 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %677, i8* %678)
  br label %680

680:                                              ; preds = %671, %667
  %681 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %682 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %681, i32 0, i32 18
  %683 = load %struct.TYPE_30__*, %struct.TYPE_30__** %682, align 8
  %684 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %683, i64 5
  %685 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %684, i32 0, i32 0
  store i32 7, i32* %685, align 8
  br label %686

686:                                              ; preds = %680, %657
  br label %709

687:                                              ; preds = %290
  %688 = load i32, i32* @ixjdebug, align 4
  %689 = and i32 %688, 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %700

691:                                              ; preds = %687
  %692 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %693 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %692, i32 0, i32 18
  %694 = load %struct.TYPE_30__*, %struct.TYPE_30__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %694, i64 5
  %696 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = load i8*, i8** @jiffies, align 8
  %699 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %697, i8* %698)
  br label %700

700:                                              ; preds = %691, %687
  %701 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %702 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %701, i32 0, i32 13
  %703 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %702, i32 0, i32 1
  store i32 1, i32* %703, align 4
  %704 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %705 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %704, i32 0, i32 18
  %706 = load %struct.TYPE_30__*, %struct.TYPE_30__** %705, align 8
  %707 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %706, i64 5
  %708 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %707, i32 0, i32 0
  store i32 0, i32* %708, align 8
  br label %709

709:                                              ; preds = %290, %700, %686, %656, %591, %526, %461, %396, %341
  %710 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %711 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %710, i32 0, i32 13
  %712 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %711, i32 0, i32 1
  %713 = load i32, i32* %712, align 4
  %714 = icmp ne i32 %713, 0
  br i1 %714, label %715, label %739

715:                                              ; preds = %709
  %716 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %717 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %716, i32 0, i32 13
  %718 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %717, i32 0, i32 2
  %719 = load i32, i32* %718, align 8
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %739, label %721

721:                                              ; preds = %715
  %722 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %723 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %722, i32 0, i32 13
  %724 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %723, i32 0, i32 2
  store i32 1, i32* %724, align 8
  %725 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %726 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %725, i32 0, i32 20
  %727 = load i64, i64* %726, align 8
  %728 = icmp ne i64 %727, 0
  br i1 %728, label %729, label %735

729:                                              ; preds = %721
  %730 = load i64, i64* @PLD_SLIC_STATE_OHT, align 8
  %731 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %732 = call i32 @SLIC_SetState(i64 %730, %struct.TYPE_36__* %731)
  %733 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %734 = call i32 @ixj_pre_cid(%struct.TYPE_36__* %733)
  br label %735

735:                                              ; preds = %729, %721
  %736 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %737 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %736, i32 0, i32 13
  %738 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %737, i32 0, i32 1
  store i32 0, i32* %738, align 4
  br label %739

739:                                              ; preds = %735, %715, %709
  %740 = load i32, i32* %3, align 4
  %741 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %742 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %741, i32 0, i32 10
  %743 = call i32 @clear_bit(i32 %740, i32* %742)
  %744 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %745 = call i32 @ixj_add_timer(%struct.TYPE_36__* %744)
  br label %996

746:                                              ; preds = %284, %276, %260
  %747 = load i8*, i8** @jiffies, align 8
  %748 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %749 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %748, i32 0, i32 19
  %750 = load i8*, i8** %749, align 8
  %751 = load i32, i32* @hertz, align 4
  %752 = sdiv i32 %751, 2
  %753 = sext i32 %752 to i64
  %754 = getelementptr i8, i8* %750, i64 %753
  %755 = call i64 @time_after(i8* %747, i8* %754)
  %756 = icmp ne i64 %755, 0
  br i1 %756, label %757, label %848

757:                                              ; preds = %746
  %758 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %759 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %758, i32 0, i32 13
  %760 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %759, i32 0, i32 1
  %761 = load i32, i32* %760, align 4
  %762 = icmp ne i32 %761, 0
  br i1 %762, label %763, label %787

763:                                              ; preds = %757
  %764 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %765 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %764, i32 0, i32 13
  %766 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %765, i32 0, i32 2
  %767 = load i32, i32* %766, align 8
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %787, label %769

769:                                              ; preds = %763
  %770 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %771 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %770, i32 0, i32 13
  %772 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %771, i32 0, i32 2
  store i32 1, i32* %772, align 8
  %773 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %774 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %773, i32 0, i32 20
  %775 = load i64, i64* %774, align 8
  %776 = icmp ne i64 %775, 0
  br i1 %776, label %777, label %783

777:                                              ; preds = %769
  %778 = load i64, i64* @PLD_SLIC_STATE_OHT, align 8
  %779 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %780 = call i32 @SLIC_SetState(i64 %778, %struct.TYPE_36__* %779)
  %781 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %782 = call i32 @ixj_pre_cid(%struct.TYPE_36__* %781)
  br label %783

783:                                              ; preds = %777, %769
  %784 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %785 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %784, i32 0, i32 13
  %786 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %785, i32 0, i32 1
  store i32 0, i32* %786, align 4
  br label %787

787:                                              ; preds = %783, %763, %757
  %788 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %789 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %788, i32 0, i32 6
  %790 = load i32, i32* %789, align 8
  %791 = add nsw i32 %790, -1
  store i32 %791, i32* %789, align 8
  %792 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %793 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %792, i32 0, i32 6
  %794 = load i32, i32* %793, align 8
  %795 = icmp eq i32 %794, -1
  br i1 %795, label %796, label %799

796:                                              ; preds = %787
  %797 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %798 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %797, i32 0, i32 6
  store i32 15, i32* %798, align 8
  br label %799

799:                                              ; preds = %796, %787
  %800 = load i8*, i8** @jiffies, align 8
  %801 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %802 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %801, i32 0, i32 19
  store i8* %800, i8** %802, align 8
  %803 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %804 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %803, i32 0, i32 7
  %805 = load i32, i32* %804, align 4
  %806 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %807 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %806, i32 0, i32 6
  %808 = load i32, i32* %807, align 8
  %809 = shl i32 1, %808
  %810 = and i32 %805, %809
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %812, label %834

812:                                              ; preds = %799
  %813 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %814 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %813, i32 0, i32 13
  %815 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %814, i32 0, i32 2
  %816 = load i32, i32* %815, align 8
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %830

818:                                              ; preds = %812
  %819 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %820 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %819, i32 0, i32 18
  %821 = load %struct.TYPE_30__*, %struct.TYPE_30__** %820, align 8
  %822 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %821, i64 5
  %823 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %822, i32 0, i32 7
  %824 = load i64, i64* %823, align 8
  %825 = icmp ne i64 %824, 0
  br i1 %825, label %826, label %830

826:                                              ; preds = %818
  %827 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %828 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %827, i32 0, i32 13
  %829 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %828, i32 0, i32 0
  store i32 1, i32* %829, align 8
  br label %833

830:                                              ; preds = %818, %812
  %831 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %832 = call i32 @ixj_ring_on(%struct.TYPE_36__* %831)
  br label %833

833:                                              ; preds = %830, %826
  br label %847

834:                                              ; preds = %799
  %835 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %836 = call i32 @ixj_ring_off(%struct.TYPE_36__* %835)
  %837 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %838 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %837, i32 0, i32 13
  %839 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %838, i32 0, i32 2
  %840 = load i32, i32* %839, align 8
  %841 = icmp ne i32 %840, 0
  br i1 %841, label %846, label %842

842:                                              ; preds = %834
  %843 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %844 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %843, i32 0, i32 13
  %845 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %844, i32 0, i32 1
  store i32 1, i32* %845, align 4
  br label %846

846:                                              ; preds = %842, %834
  br label %847

847:                                              ; preds = %846, %833
  br label %848

848:                                              ; preds = %847, %746
  %849 = load i32, i32* %3, align 4
  %850 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %851 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %850, i32 0, i32 10
  %852 = call i32 @clear_bit(i32 %849, i32* %851)
  %853 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %854 = call i32 @ixj_add_timer(%struct.TYPE_36__* %853)
  br label %996

855:                                              ; preds = %254
  br label %856

856:                                              ; preds = %855, %242
  %857 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %858 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %857, i32 0, i32 13
  %859 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %858, i32 0, i32 5
  %860 = load i32, i32* %859, align 4
  %861 = icmp ne i32 %860, 0
  br i1 %861, label %957, label %862

862:                                              ; preds = %856
  %863 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %864 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %863, i32 0, i32 1
  %865 = load i32, i32* %864, align 4
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %867, label %923

867:                                              ; preds = %862
  %868 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %869 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %868, i32 0, i32 17
  %870 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %869, i32 0, i32 0
  %871 = load i32, i32* %870, align 8
  %872 = icmp ne i32 %871, 32
  br i1 %872, label %873, label %882

873:                                              ; preds = %867
  %874 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %875 = call i64 @SLIC_GetState(%struct.TYPE_36__* %874)
  %876 = load i64, i64* @PLD_SLIC_STATE_ACTIVE, align 8
  %877 = icmp ne i64 %875, %876
  br i1 %877, label %878, label %882

878:                                              ; preds = %873
  %879 = load i64, i64* @PLD_SLIC_STATE_ACTIVE, align 8
  %880 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %881 = call i32 @SLIC_SetState(i64 %879, %struct.TYPE_36__* %880)
  br label %882

882:                                              ; preds = %878, %873, %867
  %883 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %884 = call i32 @LineMonitor(%struct.TYPE_36__* %883)
  %885 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %886 = call i32 @read_filters(%struct.TYPE_36__* %885)
  %887 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %888 = call i32 @ixj_WriteDSPCommand(i32 20763, %struct.TYPE_36__* %887)
  %889 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %890 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %889, i32 0, i32 16
  %891 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %890, i32 0, i32 0
  %892 = load i32, i32* %891, align 8
  %893 = shl i32 %892, 8
  %894 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %895 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %894, i32 0, i32 16
  %896 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %895, i32 0, i32 1
  %897 = load i32, i32* %896, align 4
  %898 = or i32 %893, %897
  %899 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %900 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %899, i32 0, i32 8
  store i32 %898, i32* %900, align 8
  %901 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %902 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %901, i32 0, i32 3
  %903 = load i32, i32* %902, align 4
  %904 = icmp ne i32 %903, 0
  br i1 %904, label %922, label %905

905:                                              ; preds = %882
  %906 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %907 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %906, i32 0, i32 1
  %908 = load i32, i32* %907, align 4
  %909 = and i32 %908, 1
  %910 = icmp ne i32 %909, 0
  br i1 %910, label %911, label %922

911:                                              ; preds = %905
  %912 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %913 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %912, i32 0, i32 12
  %914 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %913, i32 0, i32 1
  %915 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %914, i32 0, i32 0
  store i32 1, i32* %915, align 8
  %916 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %917 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %916, i32 0, i32 3
  store i32 1, i32* %917, align 4
  %918 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %919 = load i32, i32* @SIG_HOOKSTATE, align 4
  %920 = load i32, i32* @POLL_IN, align 4
  %921 = call i32 @ixj_kill_fasync(%struct.TYPE_36__* %918, i32 %919, i32 %920)
  br label %922

922:                                              ; preds = %911, %905, %882
  br label %956

923:                                              ; preds = %862
  %924 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %925 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %924, i32 0, i32 12
  %926 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %925, i32 0, i32 1
  %927 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %926, i32 0, i32 1
  %928 = load i64, i64* %927, align 8
  %929 = icmp ne i64 %928, 0
  br i1 %929, label %930, label %939

930:                                              ; preds = %923
  %931 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %932 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %931, i32 0, i32 12
  %933 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %932, i32 0, i32 1
  %934 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %933, i32 0, i32 1
  store i64 0, i64* %934, align 8
  %935 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %936 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %935, i32 0, i32 14
  store i64 0, i64* %936, align 8
  %937 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %938 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %937, i32 0, i32 15
  store i64 0, i64* %938, align 8
  br label %939

939:                                              ; preds = %930, %923
  %940 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %941 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %940, i32 0, i32 3
  %942 = load i32, i32* %941, align 4
  %943 = icmp ne i32 %942, 0
  br i1 %943, label %944, label %955

944:                                              ; preds = %939
  %945 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %946 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %945, i32 0, i32 3
  store i32 0, i32* %946, align 4
  %947 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %948 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %947, i32 0, i32 12
  %949 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %948, i32 0, i32 1
  %950 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %949, i32 0, i32 0
  store i32 1, i32* %950, align 8
  %951 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %952 = load i32, i32* @SIG_HOOKSTATE, align 4
  %953 = load i32, i32* @POLL_IN, align 4
  %954 = call i32 @ixj_kill_fasync(%struct.TYPE_36__* %951, i32 %952, i32 %953)
  br label %955

955:                                              ; preds = %944, %939
  br label %956

956:                                              ; preds = %955, %922
  br label %957

957:                                              ; preds = %956, %856
  %958 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %959 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %958, i32 0, i32 9
  %960 = load i64, i64* %959, align 8
  %961 = load i64, i64* @QTI_LINEJACK, align 8
  %962 = icmp eq i64 %960, %961
  br i1 %962, label %963, label %978

963:                                              ; preds = %957
  %964 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %965 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %964, i32 0, i32 13
  %966 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %965, i32 0, i32 4
  %967 = load i32, i32* %966, align 8
  %968 = icmp ne i32 %967, 0
  br i1 %968, label %978, label %969

969:                                              ; preds = %963
  %970 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %971 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %970, i32 0, i32 13
  %972 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %971, i32 0, i32 3
  %973 = load i64, i64* %972, align 8
  %974 = icmp ne i64 %973, 0
  br i1 %974, label %975, label %978

975:                                              ; preds = %969
  %976 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %977 = call i32 @ixj_pstn_state(%struct.TYPE_36__* %976)
  br label %978

978:                                              ; preds = %975, %969, %963, %957
  %979 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %980 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %979, i32 0, i32 12
  %981 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %980, i32 0, i32 0
  %982 = load i64, i64* %981, align 8
  %983 = icmp ne i64 %982, 0
  br i1 %983, label %984, label %988

984:                                              ; preds = %978
  %985 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %986 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %985, i32 0, i32 11
  %987 = call i32 @wake_up_interruptible(i32* %986)
  br label %988

988:                                              ; preds = %984, %978
  %989 = load i32, i32* %3, align 4
  %990 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %991 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %990, i32 0, i32 10
  %992 = call i32 @clear_bit(i32 %989, i32* %991)
  br label %993

993:                                              ; preds = %988, %20, %15, %1
  %994 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %995 = call i32 @ixj_add_timer(%struct.TYPE_36__* %994)
  br label %996

996:                                              ; preds = %993, %848, %739, %198, %176, %142, %126, %63
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @ixj_perfmon(i32) #1

declare dso_local i32 @ixj_hookstate(%struct.TYPE_36__*) #1

declare dso_local i32 @ixj_cpt_stop(%struct.TYPE_36__*) #1

declare dso_local i32 @ixj_kill_fasync(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ixj_add_timer(%struct.TYPE_36__*) #1

declare dso_local i64 @time_before(i8*, i8*) #1

declare dso_local i32 @ixj_play_tone(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @ixj_tone_timeout(%struct.TYPE_36__*) #1

declare dso_local i32 @ixj_dialtone(%struct.TYPE_36__*) #1

declare dso_local i32 @ixj_busytone(%struct.TYPE_36__*) #1

declare dso_local i32 @ixj_ringback(%struct.TYPE_36__*) #1

declare dso_local i64 @IsRxReady(%struct.TYPE_36__*) #1

declare dso_local i32 @ixj_read_frame(%struct.TYPE_36__*) #1

declare dso_local i64 @IsTxReady(%struct.TYPE_36__*) #1

declare dso_local i32 @ixj_write_frame(%struct.TYPE_36__*) #1

declare dso_local i32 @ixj_ring_off(%struct.TYPE_36__*) #1

declare dso_local i32 @printk(i8*, i32, i8*) #1

declare dso_local i32 @ixj_ring_on(%struct.TYPE_36__*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @SLIC_SetState(i64, %struct.TYPE_36__*) #1

declare dso_local i32 @ixj_pre_cid(%struct.TYPE_36__*) #1

declare dso_local i64 @SLIC_GetState(%struct.TYPE_36__*) #1

declare dso_local i32 @LineMonitor(%struct.TYPE_36__*) #1

declare dso_local i32 @read_filters(%struct.TYPE_36__*) #1

declare dso_local i32 @ixj_WriteDSPCommand(i32, %struct.TYPE_36__*) #1

declare dso_local i32 @ixj_pstn_state(%struct.TYPE_36__*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
