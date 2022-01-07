; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_2860_main_dev.c_rt2860_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_2860_main_dev.c_rt2860_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@INT_SOURCE_CSR = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_RESET_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_HALT_IN_PROGRESS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_NIC_NOT_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"snowpin - IntSource.word == 0xffffffff\0A\00", align 1
@TxCoherent = common dso_local global i32 0, align 4
@RT_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c">>>TxCoherent<<<\0A\00", align 1
@RxCoherent = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c">>>RxCoherent<<<\0A\00", align 1
@FifoStaFullInt = common dso_local global i32 0, align 4
@INT_MGMT_DLY = common dso_local global i32 0, align 4
@INT_RX = common dso_local global i32 0, align 4
@INT_HCCA_DLY = common dso_local global i32 0, align 4
@INT_AC3_DLY = common dso_local global i32 0, align 4
@INT_AC2_DLY = common dso_local global i32 0, align 4
@INT_AC1_DLY = common dso_local global i32 0, align 4
@INT_AC0_DLY = common dso_local global i32 0, align 4
@PreTBTTInt = common dso_local global i32 0, align 4
@TBTTInt = common dso_local global i32 0, align 4
@AutoWakeupInt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2860_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = load i32, i32* @INT_SOURCE_CSR, align 4
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %30 = call i32 @RTMP_IO_READ32(%struct.TYPE_14__* %27, i32 %28, i32* %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = load i32, i32* @INT_SOURCE_CSR, align 4
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @RTMP_IO_WRITE32(%struct.TYPE_14__* %31, i32 %32, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = load i32, i32* @fRTMP_ADAPTER_RESET_IN_PROGRESS, align 4
  %41 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_14__* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %2
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %46 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_14__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %2
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %49, i32* %3, align 4
  br label %321

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %57 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @RTMP_SET_FLAG(%struct.TYPE_14__* %55, i32 %58)
  %60 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %321

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TxCoherent, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %70 = call i32 @DBGPRINT(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = call i32 @RTMPHandleRxCoherentInterrupt(%struct.TYPE_14__* %71)
  br label %73

73:                                               ; preds = %68, %62
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RxCoherent, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %81 = call i32 @DBGPRINT(i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = call i32 @RTMPHandleRxCoherentInterrupt(%struct.TYPE_14__* %82)
  br label %84

84:                                               ; preds = %79, %73
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FifoStaFullInt, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %84
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FifoStaFullInt, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = load i32, i32* @FifoStaFullInt, align 4
  %100 = call i32 @rt2860_int_disable(%struct.TYPE_14__* %98, i32 %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 7
  %103 = call i32 @tasklet_hi_schedule(i32* %102)
  br label %104

104:                                              ; preds = %97, %90
  %105 = load i32, i32* @FifoStaFullInt, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %84
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @INT_MGMT_DLY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %110
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @INT_MGMT_DLY, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = load i32, i32* @INT_MGMT_DLY, align 4
  %126 = call i32 @rt2860_int_disable(%struct.TYPE_14__* %124, i32 %125)
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 6
  %129 = call i32 @tasklet_hi_schedule(i32* %128)
  br label %130

130:                                              ; preds = %123, %116
  %131 = load i32, i32* @INT_MGMT_DLY, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %110
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @INT_RX, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %136
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @INT_RX, align 4
  %147 = and i32 %145, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %151 = load i32, i32* @INT_RX, align 4
  %152 = call i32 @rt2860_int_disable(%struct.TYPE_14__* %150, i32 %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 5
  %155 = call i32 @tasklet_hi_schedule(i32* %154)
  br label %156

156:                                              ; preds = %149, %142
  %157 = load i32, i32* @INT_RX, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %136
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @INT_HCCA_DLY, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %162
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @INT_HCCA_DLY, align 4
  %173 = and i32 %171, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %168
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %177 = load i32, i32* @INT_HCCA_DLY, align 4
  %178 = call i32 @rt2860_int_disable(%struct.TYPE_14__* %176, i32 %177)
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 4
  %181 = call i32 @tasklet_hi_schedule(i32* %180)
  br label %182

182:                                              ; preds = %175, %168
  %183 = load i32, i32* @INT_HCCA_DLY, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %182, %162
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @INT_AC3_DLY, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %188
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @INT_AC3_DLY, align 4
  %199 = and i32 %197, %198
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %194
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %203 = load i32, i32* @INT_AC3_DLY, align 4
  %204 = call i32 @rt2860_int_disable(%struct.TYPE_14__* %202, i32 %203)
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 3
  %207 = call i32 @tasklet_hi_schedule(i32* %206)
  br label %208

208:                                              ; preds = %201, %194
  %209 = load i32, i32* @INT_AC3_DLY, align 4
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %208, %188
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @INT_AC2_DLY, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %240

220:                                              ; preds = %214
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @INT_AC2_DLY, align 4
  %225 = and i32 %223, %224
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %220
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %229 = load i32, i32* @INT_AC2_DLY, align 4
  %230 = call i32 @rt2860_int_disable(%struct.TYPE_14__* %228, i32 %229)
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 2
  %233 = call i32 @tasklet_hi_schedule(i32* %232)
  br label %234

234:                                              ; preds = %227, %220
  %235 = load i32, i32* @INT_AC2_DLY, align 4
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %234, %214
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @INT_AC1_DLY, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %266

246:                                              ; preds = %240
  %247 = load i32, i32* @INT_AC1_DLY, align 4
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 4
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @INT_AC1_DLY, align 4
  %256 = and i32 %254, %255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %246
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %260 = load i32, i32* @INT_AC1_DLY, align 4
  %261 = call i32 @rt2860_int_disable(%struct.TYPE_14__* %259, i32 %260)
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 1
  %264 = call i32 @tasklet_hi_schedule(i32* %263)
  br label %265

265:                                              ; preds = %258, %246
  br label %266

266:                                              ; preds = %265, %240
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @INT_AC0_DLY, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %292

272:                                              ; preds = %266
  %273 = load i32, i32* @INT_AC0_DLY, align 4
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @INT_AC0_DLY, align 4
  %282 = and i32 %280, %281
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %272
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %286 = load i32, i32* @INT_AC0_DLY, align 4
  %287 = call i32 @rt2860_int_disable(%struct.TYPE_14__* %285, i32 %286)
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  %290 = call i32 @tasklet_hi_schedule(i32* %289)
  br label %291

291:                                              ; preds = %284, %272
  br label %292

292:                                              ; preds = %291, %266
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @PreTBTTInt, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %292
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %300 = call i32 @RTMPHandlePreTBTTInterrupt(%struct.TYPE_14__* %299)
  br label %301

301:                                              ; preds = %298, %292
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @TBTTInt, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %301
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %309 = call i32 @RTMPHandleTBTTInterrupt(%struct.TYPE_14__* %308)
  br label %310

310:                                              ; preds = %307, %301
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @AutoWakeupInt, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %310
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %318 = call i32 @RTMPHandleTwakeupInterrupt(%struct.TYPE_14__* %317)
  br label %319

319:                                              ; preds = %316, %310
  %320 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %320, i32* %3, align 4
  br label %321

321:                                              ; preds = %319, %54, %48
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

declare dso_local i32 @RTMP_IO_READ32(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @RTMP_IO_WRITE32(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @RTMP_TEST_FLAG(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @RTMP_SET_FLAG(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @RTMPHandleRxCoherentInterrupt(%struct.TYPE_14__*) #1

declare dso_local i32 @rt2860_int_disable(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @RTMPHandlePreTBTTInterrupt(%struct.TYPE_14__*) #1

declare dso_local i32 @RTMPHandleTBTTInterrupt(%struct.TYPE_14__*) #1

declare dso_local i32 @RTMPHandleTwakeupInterrupt(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
