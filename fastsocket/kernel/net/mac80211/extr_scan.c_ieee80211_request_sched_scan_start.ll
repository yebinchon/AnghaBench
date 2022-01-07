; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_request_sched_scan_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_request_sched_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32, i32 }
%struct.ieee80211_sched_scan_ies = type { i32*, i32* }

@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_NUM_BANDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_request_sched_scan_start(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_sched_scan_request* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_sched_scan_ies, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.cfg80211_sched_scan_request* %1, %struct.cfg80211_sched_scan_request** %4, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %5, align 8
  %13 = bitcast %struct.ieee80211_sched_scan_ies* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %15 = add nsw i32 2, %14
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %4, align 8
  %21 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @rcu_access_pointer(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %135

35:                                               ; preds = %2
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %135

45:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %104, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %107

50:                                               ; preds = %46
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  br label %104

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32 @kzalloc(i32 %64, i32 %65)
  %67 = getelementptr inbounds %struct.ieee80211_sched_scan_ies, %struct.ieee80211_sched_scan_ies* %6, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = getelementptr inbounds %struct.ieee80211_sched_scan_ies, %struct.ieee80211_sched_scan_ies* %6, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %63
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %121

82:                                               ; preds = %63
  %83 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_sched_scan_ies, %struct.ieee80211_sched_scan_ies* %6, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %4, align 8
  %92 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %4, align 8
  %95 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @ieee80211_build_preq_ies(%struct.ieee80211_local* %83, i32 %89, i32 %90, i32 %93, i32 %96, i32 %97, i32 -1, i32 0)
  %99 = getelementptr inbounds %struct.ieee80211_sched_scan_ies, %struct.ieee80211_sched_scan_ies* %6, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %98, i32* %103, align 4
  br label %104

104:                                              ; preds = %82, %62
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %46

107:                                              ; preds = %46
  %108 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %109 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %110 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %4, align 8
  %111 = call i32 @drv_sched_scan_start(%struct.ieee80211_local* %108, %struct.ieee80211_sub_if_data* %109, %struct.cfg80211_sched_scan_request* %110, %struct.ieee80211_sched_scan_ies* %6)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %119 = call i32 @rcu_assign_pointer(i32 %117, %struct.ieee80211_sub_if_data* %118)
  br label %120

120:                                              ; preds = %114, %107
  br label %121

121:                                              ; preds = %120, %79
  br label %122

122:                                              ; preds = %125, %121
  %123 = load i32, i32* %8, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.ieee80211_sched_scan_ies, %struct.ieee80211_sched_scan_ies* %6, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @kfree(i32 %132)
  br label %122

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %42, %32
  %136 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %137 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %136, i32 0, i32 1
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @rcu_access_pointer(i32) #2

declare dso_local i32 @kzalloc(i32, i32) #2

declare dso_local i32 @ieee80211_build_preq_ies(%struct.ieee80211_local*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @drv_sched_scan_start(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_sched_scan_ies*) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
