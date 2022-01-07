; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_rx.c_ieee80211_frag_cache_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_rx.c_ieee80211_frag_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frag_entry = type { i32, i32, i32, i32, i32*, i64 }
%struct.ieee80211_device = type { %struct.ieee80211_frag_entry** }

@IEEE80211_FRAG_CACHE_LEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"expiring fragment cache entry seq=%u last_frag=%u\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_frag_entry* (%struct.ieee80211_device*, i32, i32, i64, i64*, i64*)* @ieee80211_frag_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_frag_entry* @ieee80211_frag_cache_find(%struct.ieee80211_device* %0, i32 %1, i32 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.ieee80211_frag_entry*, align 8
  %8 = alloca %struct.ieee80211_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.ieee80211_frag_entry*, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %99, %6
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* @IEEE80211_FRAG_CACHE_LEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %102

20:                                               ; preds = %16
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_frag_entry**, %struct.ieee80211_frag_entry*** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %23, i64 %24
  %26 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %25, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %26, i64 %28
  store %struct.ieee80211_frag_entry* %29, %struct.ieee80211_frag_entry** %14, align 8
  %30 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %31 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %20
  %35 = load i32, i32* @jiffies, align 4
  %36 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %37 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i64 @time_after(i32 %35, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %34
  %46 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %47 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %50 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IEEE80211_DEBUG_FRAG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %54 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @dev_kfree_skb_any(i32* %55)
  %57 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %58 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %57, i32 0, i32 4
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %45, %34, %20
  %60 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %61 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %98

64:                                               ; preds = %59
  %65 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %66 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %64
  %71 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %72 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %98

80:                                               ; preds = %77, %70
  %81 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %82 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i64*, i64** %12, align 8
  %85 = load i32, i32* @ETH_ALEN, align 4
  %86 = call i64 @memcmp(i32 %83, i64* %84, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  %90 = getelementptr inbounds %struct.ieee80211_frag_entry, %struct.ieee80211_frag_entry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i64*, i64** %13, align 8
  %93 = load i32, i32* @ETH_ALEN, align 4
  %94 = call i64 @memcmp(i32 %91, i64* %92, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %14, align 8
  store %struct.ieee80211_frag_entry* %97, %struct.ieee80211_frag_entry** %7, align 8
  br label %103

98:                                               ; preds = %88, %80, %77, %64, %59
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %16

102:                                              ; preds = %16
  store %struct.ieee80211_frag_entry* null, %struct.ieee80211_frag_entry** %7, align 8
  br label %103

103:                                              ; preds = %102, %96
  %104 = load %struct.ieee80211_frag_entry*, %struct.ieee80211_frag_entry** %7, align 8
  ret %struct.ieee80211_frag_entry* %104
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @IEEE80211_DEBUG_FRAG(i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
