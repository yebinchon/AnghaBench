; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_iwctl.c_iwctl_siwscan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_iwctl.c_iwctl_siwscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8* }
%struct.iw_scan_req = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%union.iwreq_data = type { i32 }

@WLAN_IEHDR_LEN = common dso_local global i32 0, align 4
@WLAN_SSID_MAXLEN = common dso_local global i32 0, align 4
@DEVICE_FLAGS_OPENED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" SIOCSIWSCAN \0A\00", align 1
@WMAC_IS_SCANNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"SIOCSIWSCAN(overlap??)-->In scanning...\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"wireless_send_event--->SIOCGIWSCAN(scan done)\0A\00", align 1
@SIOCGIWSCAN = common dso_local global i32 0, align 4
@IW_SCAN_THIS_ESSID = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@WMAC_SCAN_PASSIVE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"SIOCSIWSCAN:[desired_ssid=%s,len=%d]\0A\00", align 1
@WLAN_CMD_BSSID_SCAN = common dso_local global i32 0, align 4
@IW_SCAN_TYPE_PASSIVE = common dso_local global i64 0, align 8
@WMAC_SCAN_ACTIVE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwctl_siwscan(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.iw_scan_req*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.iwreq_data, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call i32 @netdev_priv(%struct.net_device* %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %10, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %11, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.iw_scan_req*
  store %struct.iw_scan_req* %25, %struct.iw_scan_req** %12, align 8
  %26 = load i32, i32* @WLAN_IEHDR_LEN, align 4
  %27 = load i32, i32* @WLAN_SSID_MAXLEN, align 4
  %28 = add nsw i32 %26, %27
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca %union.iwreq_data, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DEVICE_FLAGS_OPENED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %178

42:                                               ; preds = %4
  %43 = call i32 (i8*, ...) @PRINT_K(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WMAC_IS_SCANNING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = call i32 (i8*, ...) @PRINT_K(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %178

53:                                               ; preds = %42
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @PRINT_K(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @memset(%union.iwreq_data* %17, i32 0, i32 4)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SIOCGIWSCAN, align 4
  %65 = call i32 @wireless_send_event(i32 %63, i32 %64, %union.iwreq_data* %17, i32* null)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %178

66:                                               ; preds = %53
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %71 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %73, 24
  br i1 %74, label %75, label %163

75:                                               ; preds = %66
  %76 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %77 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IW_SCAN_THIS_ESSID, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %151

82:                                               ; preds = %75
  %83 = load i32, i32* @WLAN_IEHDR_LEN, align 4
  %84 = load i32, i32* @WLAN_SSID_MAXLEN, align 4
  %85 = add nsw i32 %83, %84
  %86 = add nsw i32 %85, 1
  %87 = call i32 @memset(%union.iwreq_data* %32, i32 0, i32 %86)
  %88 = bitcast %union.iwreq_data* %32 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %15, align 8
  %89 = load i32, i32* @WLAN_EID_SSID, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.iw_scan_req*, %struct.iw_scan_req** %12, align 8
  %96 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.iw_scan_req*, %struct.iw_scan_req** %12, align 8
  %99 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @memcpy(i8* %94, i32 %97, i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.iw_scan_req*, %struct.iw_scan_req** %12, align 8
  %106 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %104, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %82
  %115 = load %struct.iw_scan_req*, %struct.iw_scan_req** %12, align 8
  %116 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.iw_scan_req*, %struct.iw_scan_req** %12, align 8
  %121 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %119, %114
  br label %133

127:                                              ; preds = %82
  %128 = load %struct.iw_scan_req*, %struct.iw_scan_req** %12, align 8
  %129 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %126
  %134 = load i8*, i8** @WMAC_SCAN_PASSIVE, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = bitcast %union.iwreq_data* %32 to %struct.TYPE_4__*
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 16
  %140 = bitcast %union.iwreq_data* %32 to %struct.TYPE_4__*
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i8*, ...) @PRINT_K(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %139, i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %145 = ptrtoint %struct.TYPE_6__* %144 to i32
  %146 = load i32, i32* @WLAN_CMD_BSSID_SCAN, align 4
  %147 = call i32 @bScheduleCommand(i32 %145, i32 %146, %union.iwreq_data* %32)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = call i32 @spin_unlock_irq(i32* %149)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %178

151:                                              ; preds = %75
  %152 = load %struct.iw_scan_req*, %struct.iw_scan_req** %12, align 8
  %153 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @IW_SCAN_TYPE_PASSIVE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i8*, i8** @WMAC_SCAN_PASSIVE, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %157, %151
  br label %162

162:                                              ; preds = %161
  br label %167

163:                                              ; preds = %66
  %164 = load i8*, i8** @WMAC_SCAN_ACTIVE, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %163, %162
  %168 = load i8*, i8** @WMAC_SCAN_PASSIVE, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %172 = ptrtoint %struct.TYPE_6__* %171 to i32
  %173 = load i32, i32* @WLAN_CMD_BSSID_SCAN, align 4
  %174 = call i32 @bScheduleCommand(i32 %172, i32 %173, %union.iwreq_data* null)
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = call i32 @spin_unlock_irq(i32* %176)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %178

178:                                              ; preds = %167, %133, %58, %49, %39
  %179 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PRINT_K(i8*, ...) #1

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @bScheduleCommand(i32, i32, %union.iwreq_data*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
