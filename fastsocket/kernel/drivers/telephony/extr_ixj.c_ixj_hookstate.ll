; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_hookstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_hookstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i64, i64, %struct.TYPE_26__, i8*, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_21__, i32, i32, i8*, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_26__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"IXJ : /dev/phone%d pots-pstn hookstate check %d at %ld\0A\00", align 1
@PLD_SLIC_STATE_ACTIVE = common dso_local global i32 0, align 4
@PLD_SLIC_STATE_STANDBY = common dso_local global i32 0, align 4
@PLD_SLIC_STATE_RINGING = common dso_local global i32 0, align 4
@PORT_SPEAKER = common dso_local global i64 0, align 8
@PORT_HANDSET = common dso_local global i64 0, align 8
@SIG_HOOKSTATE = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@hertz = common dso_local global i32 0, align 4
@SIG_FLASH = common dso_local global i32 0, align 4
@PORT_PSTN = common dso_local global i64 0, align 8
@SOP_PU_CONVERSATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @ixj_hookstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_hookstate(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %172 [
    i32 130, label %7
    i32 132, label %18
    i32 129, label %18
    i32 128, label %18
    i32 131, label %169
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = call i32 @ixj_gpio_read(%struct.TYPE_17__* %8)
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %3, align 4
  br label %172

18:                                               ; preds = %1, %1, %1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %20 = call i32 @SLIC_GetState(%struct.TYPE_17__* %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 132
  br i1 %24, label %25, label %89

25:                                               ; preds = %18
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %89

31:                                               ; preds = %25
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 14
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %89

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %41
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 12
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** @jiffies, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 12
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i8*, i8** @jiffies, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 12
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr i8, i8* %68, i64 2
  %70 = call i64 @time_before(i8* %65, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* %3, align 4
  %74 = xor i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %78

75:                                               ; preds = %64
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 12
  store i8* null, i8** %77, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i8*, i8** @jiffies, align 8
  %87 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i8* %86)
  br label %88

88:                                               ; preds = %78, %41
  br label %168

89:                                               ; preds = %36, %25, %18
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PLD_SLIC_STATE_ACTIVE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %89
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PLD_SLIC_STATE_STANDBY, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %167

105:                                              ; preds = %97, %89
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %111, %105
  %118 = call i32 (...) @in_interrupt()
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = call i32 @msleep(i32 20)
  br label %122

122:                                              ; preds = %120, %117
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %124 = call i32 @SLIC_GetState(%struct.TYPE_17__* %123)
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PLD_SLIC_STATE_RINGING, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %134 = call i32 @ixj_ring_on(%struct.TYPE_17__* %133)
  br label %135

135:                                              ; preds = %132, %122
  br label %136

136:                                              ; preds = %135, %111
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 128
  br i1 %140, label %141, label %157

141:                                              ; preds = %136
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @inb_p(i32 %144)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 9
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 1, i32 0
  store i32 %156, i32* %3, align 4
  br label %166

157:                                              ; preds = %136
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 0
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %157, %141
  br label %167

167:                                              ; preds = %166, %97
  br label %168

168:                                              ; preds = %167, %88
  br label %172

169:                                              ; preds = %1
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %171 = call i32 @ixj_pcmcia_cable_check(%struct.TYPE_17__* %170)
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %1, %169, %168, %7
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %3, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %216

178:                                              ; preds = %172
  %179 = load i32, i32* %3, align 4
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @PORT_SPEAKER, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %178
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @PORT_HANDSET, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %187, %178
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %199 = load i32, i32* @SIG_HOOKSTATE, align 4
  %200 = load i32, i32* @POLL_IN, align 4
  %201 = call i32 @ixj_kill_fasync(%struct.TYPE_17__* %198, i32 %199, i32 %200)
  br label %215

202:                                              ; preds = %187
  %203 = load i32, i32* %3, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %202
  %206 = load i8*, i8** @jiffies, align 8
  %207 = load i32, i32* @hertz, align 4
  %208 = mul nsw i32 60, %207
  %209 = sdiv i32 %208, 100
  %210 = sext i32 %209 to i64
  %211 = getelementptr i8, i8* %206, i64 %210
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 6
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %205, %202
  br label %215

215:                                              ; preds = %214, %193
  br label %216

216:                                              ; preds = %215, %172
  %217 = load i32, i32* %3, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %238

219:                                              ; preds = %216
  %220 = load i8*, i8** @jiffies, align 8
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 6
  %223 = load i8*, i8** %222, align 8
  %224 = call i64 @time_before(i8* %220, i8* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %219
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 7
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 1
  store i32 1, i32* %230, align 4
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 6
  store i8* null, i8** %232, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %234 = load i32, i32* @SIG_FLASH, align 4
  %235 = load i32, i32* @POLL_IN, align 4
  %236 = call i32 @ixj_kill_fasync(%struct.TYPE_17__* %233, i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %226, %219
  br label %247

238:                                              ; preds = %216
  %239 = load i8*, i8** @jiffies, align 8
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 6
  %242 = load i8*, i8** %241, align 8
  %243 = call i64 @time_before(i8* %239, i8* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  store i32 1, i32* %3, align 4
  br label %246

246:                                              ; preds = %245, %238
  br label %247

247:                                              ; preds = %246, %237
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @PORT_PSTN, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %247
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @SOP_PU_CONVERSATION, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %253
  %260 = load i32, i32* %3, align 4
  %261 = or i32 %260, 2
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %259, %253, %247
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @PORT_SPEAKER, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %293

268:                                              ; preds = %262
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %271, 131
  br i1 %272, label %273, label %289

273:                                              ; preds = %268
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %273
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %279
  %286 = load i32, i32* %3, align 4
  %287 = or i32 %286, 2
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %285, %279, %273
  br label %292

289:                                              ; preds = %268
  %290 = load i32, i32* %3, align 4
  %291 = or i32 %290, 2
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %289, %288
  br label %293

293:                                              ; preds = %292, %262
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @PORT_HANDSET, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %293
  %300 = load i32, i32* %3, align 4
  %301 = or i32 %300, 2
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %299, %293
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i32 @ixj_gpio_read(%struct.TYPE_17__*) #1

declare dso_local i32 @SLIC_GetState(%struct.TYPE_17__*) #1

declare dso_local i64 @time_before(i8*, i8*) #1

declare dso_local i32 @printk(i8*, i32, i32, i8*) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ixj_ring_on(%struct.TYPE_17__*) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @ixj_pcmcia_cable_check(%struct.TYPE_17__*) #1

declare dso_local i32 @ixj_kill_fasync(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
