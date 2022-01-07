; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessBeacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)* }
%struct.TYPE_7__ = type { i64, i32, i32*, i32, i32*, i32, i32, i64, i64, i32 }
%struct.zsPartnerNotifyEvent = type { i32 }
%struct.zsAdditionInfo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.zsWlanBeaconFrameHeader = type { i32 }
%struct.zsBssInfo = type { i64 }

@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A2_OFFSET = common dso_local global i32 0, align 4
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A3_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"20070916 Receive opposite Beacon!\00", align 1
@ZM_BIT_1 = common dso_local global i32 0, align 4
@ZM_BIT_4 = common dso_local global i32 0, align 4
@ZM_WLAN_EID_SSID = common dso_local global i32 0, align 4
@capabilityInfo = common dso_local global i32 0, align 4
@offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaProcessBeacon(i32* %0, i32* %1, %struct.zsAdditionInfo* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zsAdditionInfo*, align 8
  %7 = alloca %struct.zsWlanBeaconFrameHeader*, align 8
  %8 = alloca %struct.zsBssInfo*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.zsPartnerNotifyEvent, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.zsAdditionInfo* %2, %struct.zsAdditionInfo** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @zmw_get_wlan_dev(i32* %15)
  %17 = call i32 (...) @zmw_declare_for_critical_section()
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @zfStaProtErpMonitor(i32* %18, i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @zfStaIsConnected(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %148

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %30 = call i32 @ZM_MAC_WORD_TO_BYTE(i32 %28, i32* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %24
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %40 = load i32, i32* @ZM_WLAN_HEADER_A2_OFFSET, align 4
  %41 = call i64 @zfRxBufferEqualToStr(i32* %37, i32* %38, i32* %39, i32 %40, i32 6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @zfPowerSavingMgrProcessBeacon(i32* %44, i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @zfStaUpdateWmeParameter(i32* %47, i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @zfStaUpdateDot11HDFS(i32* %56, i32* %57)
  br label %59

59:                                               ; preds = %55, %43
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @zfStaUpdateDot11HTPC(i32* %66, i32* %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %72 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %77 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @zfStaSignalStatistic(i32* %70, i32 %75, i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %69, %36
  br label %147

88:                                               ; preds = %24
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ZM_MODE_IBSS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %146

94:                                               ; preds = %88
  %95 = load i32*, i32** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %98 = load i32, i32* @ZM_WLAN_HEADER_A3_OFFSET, align 4
  %99 = call i64 @zfRxBufferEqualToStr(i32* %95, i32* %96, i32* %97, i32 %98, i32 6)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %145

101:                                              ; preds = %94
  %102 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @zmw_enter_critical_section(i32* %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @zmw_leave_critical_section(i32* %110)
  %112 = load i32*, i32** %4, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @zfStaSetOppositeInfoFromRxBuf(i32* %112, i32* %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %101
  %118 = load i32*, i32** %4, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @zfInitPartnerNotifyEvent(i32* %118, i32* %119, %struct.zsPartnerNotifyEvent* %13)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)*, i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)** %122, align 8
  %124 = icmp ne i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)*, i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)** %127, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 %128(i32* %129, i32 1, %struct.zsPartnerNotifyEvent* %13)
  br label %131

131:                                              ; preds = %125, %117
  br label %132

132:                                              ; preds = %131, %101
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %135 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %140 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @zfStaSignalStatistic(i32* %133, i32 %138, i32 %143)
  br label %145

145:                                              ; preds = %132, %94
  br label %146

146:                                              ; preds = %145, %88
  br label %147

147:                                              ; preds = %146, %87
  br label %148

148:                                              ; preds = %147, %3
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %148
  br label %228

155:                                              ; preds = %148
  %156 = load i32*, i32** %4, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %159 = call i32 @zfCopyFromRxBuffer(i32* %156, i32* %157, i32* %158, i32 0, i32 4)
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %161 = bitcast i32* %160 to %struct.zsWlanBeaconFrameHeader*
  store %struct.zsWlanBeaconFrameHeader* %161, %struct.zsWlanBeaconFrameHeader** %7, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @zmw_enter_critical_section(i32* %162)
  %164 = load i32*, i32** %4, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = load %struct.zsWlanBeaconFrameHeader*, %struct.zsWlanBeaconFrameHeader** %7, align 8
  %167 = call %struct.zsBssInfo* @zfStaFindBssInfo(i32* %164, i32* %165, %struct.zsWlanBeaconFrameHeader* %166)
  store %struct.zsBssInfo* %167, %struct.zsBssInfo** %8, align 8
  %168 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %169 = icmp eq %struct.zsBssInfo* %168, null
  br i1 %169, label %170, label %194

170:                                              ; preds = %155
  %171 = load i32*, i32** %4, align 8
  %172 = call %struct.zsBssInfo* @zfBssInfoAllocate(i32* %171)
  store %struct.zsBssInfo* %172, %struct.zsBssInfo** %8, align 8
  %173 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %174 = icmp ne %struct.zsBssInfo* %173, null
  br i1 %174, label %175, label %193

175:                                              ; preds = %170
  %176 = load i32*, i32** %4, align 8
  %177 = load i32*, i32** %5, align 8
  %178 = load %struct.zsWlanBeaconFrameHeader*, %struct.zsWlanBeaconFrameHeader** %7, align 8
  %179 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %180 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %181 = call i32 @zfStaInitBssInfo(i32* %176, i32* %177, %struct.zsWlanBeaconFrameHeader* %178, %struct.zsBssInfo* %179, %struct.zsAdditionInfo* %180, i32 0)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %175
  %185 = load i32*, i32** %4, align 8
  %186 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %187 = call i32 @zfBssInfoFree(i32* %185, %struct.zsBssInfo* %186)
  br label %192

188:                                              ; preds = %175
  %189 = load i32*, i32** %4, align 8
  %190 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %191 = call i32 @zfBssInfoInsertToList(i32* %189, %struct.zsBssInfo* %190)
  br label %192

192:                                              ; preds = %188, %184
  br label %193

193:                                              ; preds = %192, %170
  br label %225

194:                                              ; preds = %155
  %195 = load i32*, i32** %4, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = load %struct.zsWlanBeaconFrameHeader*, %struct.zsWlanBeaconFrameHeader** %7, align 8
  %198 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %199 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %200 = call i32 @zfStaInitBssInfo(i32* %195, i32* %196, %struct.zsWlanBeaconFrameHeader* %197, %struct.zsBssInfo* %198, %struct.zsAdditionInfo* %199, i32 1)
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %203, label %210

203:                                              ; preds = %194
  %204 = load i32*, i32** %4, align 8
  %205 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %206 = call i32 @zfBssInfoRemoveFromList(i32* %204, %struct.zsBssInfo* %205)
  %207 = load i32*, i32** %4, align 8
  %208 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %209 = call i32 @zfBssInfoFree(i32* %207, %struct.zsBssInfo* %208)
  br label %224

210:                                              ; preds = %194
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @ZM_MODE_IBSS, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %210
  %217 = load i32*, i32** %4, align 8
  %218 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %219 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = inttoptr i64 %220 to i32*
  %222 = call i32 @zfStaFindFreeOpposite(i32* %217, i32* %221, i32* %14)
  br label %223

223:                                              ; preds = %216, %210
  br label %224

224:                                              ; preds = %223, %203
  br label %225

225:                                              ; preds = %224, %193
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @zmw_leave_critical_section(i32* %226)
  br label %228

228:                                              ; preds = %225, %154
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfStaProtErpMonitor(i32*, i32*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @ZM_MAC_WORD_TO_BYTE(i32, i32*) #1

declare dso_local i64 @zfRxBufferEqualToStr(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @zfPowerSavingMgrProcessBeacon(i32*, i32*) #1

declare dso_local i32 @zfStaUpdateWmeParameter(i32*, i32*) #1

declare dso_local i32 @zfStaUpdateDot11HDFS(i32*, i32*) #1

declare dso_local i32 @zfStaUpdateDot11HTPC(i32*, i32*) #1

declare dso_local i32 @zfStaSignalStatistic(i32*, i32, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfStaSetOppositeInfoFromRxBuf(i32*, i32*) #1

declare dso_local i32 @zfInitPartnerNotifyEvent(i32*, i32*, %struct.zsPartnerNotifyEvent*) #1

declare dso_local i32 @zfCopyFromRxBuffer(i32*, i32*, i32*, i32, i32) #1

declare dso_local %struct.zsBssInfo* @zfStaFindBssInfo(i32*, i32*, %struct.zsWlanBeaconFrameHeader*) #1

declare dso_local %struct.zsBssInfo* @zfBssInfoAllocate(i32*) #1

declare dso_local i32 @zfStaInitBssInfo(i32*, i32*, %struct.zsWlanBeaconFrameHeader*, %struct.zsBssInfo*, %struct.zsAdditionInfo*, i32) #1

declare dso_local i32 @zfBssInfoFree(i32*, %struct.zsBssInfo*) #1

declare dso_local i32 @zfBssInfoInsertToList(i32*, %struct.zsBssInfo*) #1

declare dso_local i32 @zfBssInfoRemoveFromList(i32*, %struct.zsBssInfo*) #1

declare dso_local i32 @zfStaFindFreeOpposite(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
