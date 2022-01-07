; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_disable_hw_accel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_disable_hw_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { i32, %struct.TYPE_9__, %struct.TYPE_7__*, %struct.ieee80211_sub_if_data*, %struct.sta_info* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.sta_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@KEY_FLAG_UPLOADED_TO_HARDWARE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@DISABLE_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to remove key (%d, %pM) from hardware (%d)\0A\00", align 1
@bcast_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_key*)* @ieee80211_key_disable_hw_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_key_disable_hw_accel(%struct.ieee80211_key* %0) #0 {
  %2 = alloca %struct.ieee80211_key*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %2, align 8
  %6 = call i32 (...) @might_sleep()
  %7 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %8 = icmp ne %struct.ieee80211_key* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9, %1
  br label %109

19:                                               ; preds = %9
  %20 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call i32 @assert_key_lock(%struct.TYPE_7__* %22)
  %24 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @KEY_FLAG_UPLOADED_TO_HARDWARE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %109

31:                                               ; preds = %19
  %32 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %32, i32 0, i32 4
  %34 = load %struct.sta_info*, %struct.sta_info** %33, align 8
  store %struct.sta_info* %34, %struct.sta_info** %4, align 8
  %35 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %35, i32 0, i32 3
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %36, align 8
  store %struct.ieee80211_sub_if_data* %37, %struct.ieee80211_sub_if_data** %3, align 8
  %38 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %31
  %46 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %45
  %54 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %63 = call i32 @increment_tailroom_need_count(%struct.ieee80211_sub_if_data* %62)
  br label %64

64:                                               ; preds = %61, %53, %45, %31
  %65 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %66 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* @DISABLE_KEY, align 4
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %70 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %71 = icmp ne %struct.sta_info* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 0
  br label %76

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi %struct.TYPE_8__* [ %74, %72 ], [ null, %75 ]
  %78 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %79 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %78, i32 0, i32 1
  %80 = call i32 @drv_set_key(%struct.TYPE_7__* %67, i32 %68, %struct.ieee80211_sub_if_data* %69, %struct.TYPE_8__* %77, %struct.TYPE_9__* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %76
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %85 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %86 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %90 = icmp ne %struct.sta_info* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %93 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  br label %98

96:                                               ; preds = %83
  %97 = load i32, i32* @bcast_addr, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = phi i32 [ %95, %91 ], [ %97, %96 ]
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @sdata_err(%struct.ieee80211_sub_if_data* %84, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %76
  %103 = load i32, i32* @KEY_FLAG_UPLOADED_TO_HARDWARE, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %106 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %102, %30, %18
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @assert_key_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @increment_tailroom_need_count(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @drv_set_key(%struct.TYPE_7__*, i32, %struct.ieee80211_sub_if_data*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @sdata_err(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
