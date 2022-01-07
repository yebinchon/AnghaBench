; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211_wext_get_iwauth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211_wext_get_iwauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"get_iwauth flags[%d]\0A\00", align 1
@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@HOSTWEP_EXCLUDEUNENCRYPTED = common dso_local global i32 0, align 4
@HOSTWEP_PRIVACYINVOKED = common dso_local global i32 0, align 4
@HOSTWEP_SHAREDKEY = common dso_local global i32 0, align 4
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @p80211_wext_get_iwauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211_wext_get_iwauth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.iw_param*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %9, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.iw_param*
  store %struct.iw_param* %16, %struct.iw_param** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %18 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IW_AUTH_INDEX, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %24 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IW_AUTH_INDEX, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %65 [
    i32 129, label %28
    i32 128, label %39
    i32 130, label %50
  ]

28:                                               ; preds = %4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HOSTWEP_EXCLUDEUNENCRYPTED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %38 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %66

39:                                               ; preds = %4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %49 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %66

50:                                               ; preds = %4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HOSTWEP_SHAREDKEY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %64 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %66

65:                                               ; preds = %4
  br label %66

66:                                               ; preds = %65, %61, %39, %28
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
