; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_siwscan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_siwscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64, i64, i32, i64, i64, i32, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }

@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"!!! Driver is in Monitor Mode now !!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WPA_SUPPLICANT_ENABLE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@fRTMP_ADAPTER_BSS_SCAN_IN_PROGRESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"!!! WpaSupplicantScanCount > 3\0A\00", align 1
@fOP_STATUS_MEDIA_STATE_CONNECTED = common dso_local global i32 0, align 4
@Ndis802_11AuthModeWPA = common dso_local global i64 0, align 8
@Ndis802_11AuthModeWPAPSK = common dso_local global i64 0, align 8
@WPA_802_1X_PORT_NOT_SECURED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [76 x i8] c"!!! Link UP, Port Not Secured! ignore this set::OID_802_11_BSSID_LIST_SCAN\0A\00", align 1
@CNTL_IDLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"!!! MLME busy, reset MLME state machine !!!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MLME_CNTL_STATE_MACHINE = common dso_local global i32 0, align 4
@OID_802_11_BSSID_LIST_SCAN = common dso_local global i32 0, align 4
@GUI_IDLE_POWER_SAVE = common dso_local global i32 0, align 4
@OPMODE_STA = common dso_local global i64 0, align 8
@fRTMP_ADAPTER_IDLE_RADIO_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_siwscan(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %10, align 8
  %16 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %18 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %19 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_18__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %23 = call i32 @DBGPRINT(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENETDOWN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %140

26:                                               ; preds = %4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %28 = call i64 @MONITOR_ON(%struct.TYPE_18__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %32 = call i32 @DBGPRINT(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %140

35:                                               ; preds = %26
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WPA_SUPPLICANT_ENABLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i64, i64* @TRUE, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 7
  store i64 %49, i64* %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %54 = load i32, i32* @fRTMP_ADAPTER_BSS_SCAN_IN_PROGRESS, align 4
  %55 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_18__* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %140

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* @jiffies, align 4
  store i32 %60, i32* %11, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @WPA_SUPPLICANT_ENABLE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 3
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %75 = call i32 @DBGPRINT(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %76, i32* %12, align 4
  br label %139

77:                                               ; preds = %67, %59
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %79 = load i32, i32* @fOP_STATUS_MEDIA_STATE_CONNECTED, align 4
  %80 = call i64 @OPSTATUS_TEST_FLAG(%struct.TYPE_18__* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %77
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @Ndis802_11AuthModeWPA, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %82
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @Ndis802_11AuthModeWPAPSK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %89, %82
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @WPA_802_1X_PORT_NOT_SECURED, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %105 = call i32 @DBGPRINT(i32 %104, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %106, i32* %12, align 4
  br label %139

107:                                              ; preds = %96, %89, %77
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CNTL_IDLE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %117 = call i32 @RT28XX_MLME_RESET_STATE_MACHINE(%struct.TYPE_18__* %116)
  %118 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %119 = call i32 @DBGPRINT(i32 %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %107
  %121 = load i32, i32* @FALSE, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 6
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 5
  store i32 %128, i32* %131, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %133 = load i32, i32* @MLME_CNTL_STATE_MACHINE, align 4
  %134 = load i32, i32* @OID_802_11_BSSID_LIST_SCAN, align 4
  %135 = call i32 @MlmeEnqueue(%struct.TYPE_18__* %132, i32 %133, i32 %134, i32 0, i32* null)
  %136 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %136, i32* %12, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %138 = call i32 @RT28XX_MLME_HANDLER(%struct.TYPE_18__* %137)
  br label %139

139:                                              ; preds = %120, %103, %73
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %57, %30, %21
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i64 @RTMP_TEST_FLAG(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i64 @MONITOR_ON(%struct.TYPE_18__*) #1

declare dso_local i64 @OPSTATUS_TEST_FLAG(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @RT28XX_MLME_RESET_STATE_MACHINE(%struct.TYPE_18__*) #1

declare dso_local i32 @MlmeEnqueue(%struct.TYPE_18__*, i32, i32, i32, i32*) #1

declare dso_local i32 @RT28XX_MLME_HANDLER(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
