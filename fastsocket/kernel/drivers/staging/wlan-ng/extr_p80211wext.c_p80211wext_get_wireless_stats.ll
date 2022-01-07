; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_get_wireless_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_get_wireless_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_statistics = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_20__, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i32 (%struct.TYPE_24__*, i32*)*, %struct.TYPE_21__, %struct.iw_statistics }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@WLAN_MSD_RUNNING = common dso_local global i64 0, align 8
@DIDmsg_lnxreq_commsquality = common dso_local global i32 0, align 4
@P80211ENUM_truth_true = common dso_local global i32 0, align 4
@P80211ENUM_msgitem_status_data_ok = common dso_local global i32 0, align 4
@IW_QUAL_ALL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iw_statistics* @p80211wext_get_wireless_stats(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.iw_statistics*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.iw_statistics*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %5, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 3
  store %struct.iw_statistics* %12, %struct.iw_statistics** %6, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = icmp eq %struct.TYPE_24__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WLAN_MSD_RUNNING, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  br label %93

22:                                               ; preds = %15
  %23 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %24 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @DIDmsg_lnxreq_commsquality, align 4
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @P80211ENUM_truth_true, align 4
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @P80211ENUM_msgitem_status_data_ok, align 4
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_24__*, i32*)*, i32 (%struct.TYPE_24__*, i32*)** %34, align 8
  %36 = icmp eq i32 (%struct.TYPE_24__*, i32*)* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  br label %93

38:                                               ; preds = %22
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_24__*, i32*)*, i32 (%struct.TYPE_24__*, i32*)** %40, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = bitcast %struct.TYPE_14__* %4 to i32*
  %44 = call i32 %41(%struct.TYPE_24__* %42, i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @qual_as_percent(i32 %47)
  %49 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %50 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %56 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %62 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @IW_QUAL_ALL_UPDATED, align 4
  %65 = load i32, i32* @IW_QUAL_DBM, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %68 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %75 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 8
  %77 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %78 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %81 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %84 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %87 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %90 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  store %struct.iw_statistics* %92, %struct.iw_statistics** %2, align 8
  br label %93

93:                                               ; preds = %38, %37, %21
  %94 = load %struct.iw_statistics*, %struct.iw_statistics** %2, align 8
  ret %struct.iw_statistics* %94
}

declare dso_local i32 @qual_as_percent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
