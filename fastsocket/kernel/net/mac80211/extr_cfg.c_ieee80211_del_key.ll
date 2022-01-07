; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_del_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_del_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { i32*, %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32, i32 }
%struct.sta_info = type { i32*, i32 }
%struct.ieee80211_key = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i32, i64*)* @ieee80211_del_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_del_key(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca %struct.ieee80211_key*, align 8
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %16)
  store %struct.ieee80211_sub_if_data* %17, %struct.ieee80211_sub_if_data** %11, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 1
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  store %struct.ieee80211_local* %20, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_key* null, %struct.ieee80211_key** %14, align 8
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64*, i64** %10, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %15, align 4
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %32, i64* %33)
  store %struct.sta_info* %34, %struct.sta_info** %13, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %36 = icmp ne %struct.sta_info* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %75

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %43 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local* %42, i32 %45)
  store %struct.ieee80211_key* %46, %struct.ieee80211_key** %14, align 8
  br label %56

47:                                               ; preds = %38
  %48 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %49 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local* %48, i32 %54)
  store %struct.ieee80211_key* %55, %struct.ieee80211_key** %14, align 8
  br label %56

56:                                               ; preds = %47, %41
  br label %66

57:                                               ; preds = %5
  %58 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local* %58, i32 %64)
  store %struct.ieee80211_key* %65, %struct.ieee80211_key** %14, align 8
  br label %66

66:                                               ; preds = %57, %56
  %67 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %68 = icmp ne %struct.ieee80211_key* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %15, align 4
  br label %75

72:                                               ; preds = %66
  %73 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %74 = call i32 @ieee80211_key_free(%struct.ieee80211_key* %73, i32 1)
  store i32 0, i32* %15, align 4
  br label %75

75:                                               ; preds = %72, %69, %37
  %76 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %77 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %80 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i64*) #1

declare dso_local %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_key_free(%struct.ieee80211_key*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
