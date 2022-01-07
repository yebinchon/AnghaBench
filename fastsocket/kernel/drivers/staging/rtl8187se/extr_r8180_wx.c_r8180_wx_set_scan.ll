; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_set_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_set_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.r8180_priv = type { i32, %struct.ieee80211_device*, %struct.TYPE_6__, i64, i64 }
%struct.ieee80211_device = type { i32, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.iw_scan_req = type { i64, i32 }

@IW_SCAN_THIS_ESSID = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Now traffic is busy, please try later!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8180_wx_set_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8180_wx_set_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.r8180_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_device*, align 8
  %13 = alloca %struct.iw_scan_req*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %14)
  store %struct.r8180_priv* %15, %struct.r8180_priv** %10, align 8
  %16 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %17 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %17, align 8
  store %struct.ieee80211_device* %18, %struct.ieee80211_device** %12, align 8
  %19 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %20 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %19, i32 0, i32 1
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %20, align 8
  %22 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %116

26:                                               ; preds = %4
  %27 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %28 = bitcast %union.iwreq_data* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IW_SCAN_THIS_ESSID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %26
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast i8* %35 to %struct.iw_scan_req*
  store %struct.iw_scan_req* %36, %struct.iw_scan_req** %13, align 8
  %37 = load %struct.iw_scan_req*, %struct.iw_scan_req** %13, align 8
  %38 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load %struct.iw_scan_req*, %struct.iw_scan_req** %13, align 8
  %43 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ieee80211_device*, %struct.ieee80211_device** %12, align 8
  %46 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %12, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.iw_scan_req*, %struct.iw_scan_req** %13, align 8
  %53 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.iw_scan_req*, %struct.iw_scan_req** %13, align 8
  %56 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @memcpy(i32 %51, i32 %54, i64 %57)
  br label %59

59:                                               ; preds = %41, %34
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %62 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %61, i32 0, i32 0
  %63 = call i32 @down(i32* %62)
  %64 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %65 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %110

68:                                               ; preds = %60
  %69 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %70 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %69, i32 0, i32 1
  %71 = load %struct.ieee80211_device*, %struct.ieee80211_device** %70, align 8
  %72 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %74 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %68
  %78 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %79 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %78, i32 0, i32 1
  %80 = load %struct.ieee80211_device*, %struct.ieee80211_device** %79, align 8
  %81 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IEEE80211_LINKED, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = call i32 @IPSLeave(%struct.net_device* %86)
  %88 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %89 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %88, i32 0, i32 1
  %90 = load %struct.ieee80211_device*, %struct.ieee80211_device** %89, align 8
  %91 = call i32 @ieee80211_softmac_ips_scan_syncro(%struct.ieee80211_device* %90)
  store i32 0, i32* %11, align 4
  br label %109

92:                                               ; preds = %77, %68
  %93 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %94 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  store i32 0, i32* %11, align 4
  %99 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %108

100:                                              ; preds = %92
  %101 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %102 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %101, i32 0, i32 1
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %102, align 8
  %104 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %105 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @ieee80211_wx_set_scan(%struct.ieee80211_device* %103, %struct.iw_request_info* %104, %union.iwreq_data* %105, i8* %106)
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %100, %98
  br label %109

109:                                              ; preds = %108, %85
  br label %111

110:                                              ; preds = %60
  store i32 -1, i32* %11, align 4
  br label %111

111:                                              ; preds = %110, %109
  %112 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %113 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %112, i32 0, i32 0
  %114 = call i32 @up(i32* %113)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %111, %25
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @IPSLeave(%struct.net_device*) #1

declare dso_local i32 @ieee80211_softmac_ips_scan_syncro(%struct.ieee80211_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ieee80211_wx_set_scan(%struct.ieee80211_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
