; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_sta_info_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_sta_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32*, %struct.TYPE_10__, i32*, i32*, i32*, i32, i32, i32, i32, %struct.ieee80211_sub_if_data*, %struct.ieee80211_local*, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__, i32, %struct.ieee80211_local* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.timespec = type { i32 }

@sta_unblock = common dso_local global i32 0, align 4
@ieee80211_ba_session_work = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IEEE80211_STA_NONE = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Allocated STA %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 2
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %8, align 8
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 96, %18
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.sta_info* @kzalloc(i64 %19, i32 %20)
  store %struct.sta_info* %21, %struct.sta_info** %9, align 8
  %22 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %23 = icmp ne %struct.sta_info* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %145

25:                                               ; preds = %3
  %26 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 14
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 13
  %31 = load i32, i32* @sta_unblock, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 12
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* @ieee80211_ba_session_work, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 12
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %45, i32* %46, i32 %47)
  %49 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %50 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 10
  store %struct.ieee80211_local* %49, %struct.ieee80211_local** %51, align 8
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %53 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 9
  store %struct.ieee80211_sub_if_data* %52, %struct.ieee80211_sub_if_data** %54, align 8
  %55 = load i32, i32* @jiffies, align 4
  %56 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %57 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %59 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = call i32 @do_posix_clock_monotonic_gettime(%struct.timespec* %10)
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 5
  %68 = call i32 @ewma_init(i32* %67, i32 1024, i32 8)
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %70 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @sta_prepare_rate_control(%struct.ieee80211_local* %69, %struct.sta_info* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %25
  %75 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %76 = call i32 @kfree(%struct.sta_info* %75)
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %145

77:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %85 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %78

93:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %113, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %100 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @skb_queue_head_init(i32* %104)
  %106 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %107 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = call i32 @skb_queue_head_init(i32* %111)
  br label %113

113:                                              ; preds = %98
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %94

116:                                              ; preds = %94
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %130, %116
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %117
  %122 = load i32, i32* @USHRT_MAX, align 4
  %123 = call i32 @cpu_to_le16(i32 %122)
  %124 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %125 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %117

133:                                              ; preds = %117
  %134 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  %135 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %136 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  %138 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %139 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %140 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @sta_dbg(%struct.ieee80211_sub_if_data* %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  store %struct.sta_info* %144, %struct.sta_info** %4, align 8
  br label %145

145:                                              ; preds = %133, %74, %24
  %146 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  ret %struct.sta_info* %146
}

declare dso_local %struct.sta_info* @kzalloc(i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @do_posix_clock_monotonic_gettime(%struct.timespec*) #1

declare dso_local i32 @ewma_init(i32*, i32, i32) #1

declare dso_local i64 @sta_prepare_rate_control(%struct.ieee80211_local*, %struct.sta_info*, i32) #1

declare dso_local i32 @kfree(%struct.sta_info*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @sta_dbg(%struct.ieee80211_sub_if_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
