; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_get_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i64 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"802.11\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_CCK_MODULATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@IEEE80211_OFDM_MODULATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"/g\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@IEEE80211_LINKED_SCANNING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"  link\00", align 1
@IEEE80211_NOLINK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c" .....\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_get_name(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %10 = bitcast %union.iwreq_data* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = call i32 @strlcpy(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IEEE80211_CCK_MODULATION, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %4
  %21 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %22 = bitcast %union.iwreq_data* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFNAMSIZ, align 4
  %25 = call i32 @strlcat(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IEEE80211_OFDM_MODULATION, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %34 = bitcast %union.iwreq_data* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFNAMSIZ, align 4
  %37 = call i32 @strlcat(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %20
  br label %53

39:                                               ; preds = %4
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IEEE80211_OFDM_MODULATION, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %48 = bitcast %union.iwreq_data* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFNAMSIZ, align 4
  %51 = call i32 @strlcat(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %39
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IEEE80211_LINKED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IEEE80211_LINKED_SCANNING, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59, %53
  %66 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %67 = bitcast %union.iwreq_data* %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IFNAMSIZ, align 4
  %70 = call i32 @strlcat(i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %84

71:                                               ; preds = %59
  %72 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IEEE80211_NOLINK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %79 = bitcast %union.iwreq_data* %78 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IFNAMSIZ, align 4
  %82 = call i32 @strlcat(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %71
  br label %84

84:                                               ; preds = %83, %65
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
