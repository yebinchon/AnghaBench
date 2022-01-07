; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_sta_info_insert_drv_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_sta_info_insert_drv_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sta_info = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_STA_NOTEXIST = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"failed to move IBSS STA %pM to state %d (%d) - keeping it anyway\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.sta_info*)* @sta_info_insert_drv_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_info_insert_drv_state(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.sta_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.sta_info* %2, %struct.sta_info** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, 1
  %24 = call i32 @drv_sta_state(%struct.ieee80211_local* %18, %struct.ieee80211_sub_if_data* %19, %struct.sta_info* %20, i32 %21, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %32

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %11

32:                                               ; preds = %27, %11
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %35
  store i32 0, i32* %4, align 4
  br label %82

46:                                               ; preds = %32
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %55 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %56 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %54, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60, i32 %61)
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %53, %46
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %71 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %73, 1
  %75 = call i32 @drv_sta_state(%struct.ieee80211_local* %69, %struct.ieee80211_sub_if_data* %70, %struct.sta_info* %71, i32 %72, i32 %74)
  %76 = call i32 @WARN_ON(i32 %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, -1
  store i32 %79, i32* %8, align 4
  br label %64

80:                                               ; preds = %64
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %45
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @drv_sta_state(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
