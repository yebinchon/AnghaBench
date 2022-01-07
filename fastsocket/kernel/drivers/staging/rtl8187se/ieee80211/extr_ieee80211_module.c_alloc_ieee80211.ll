; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_module.c_alloc_ieee80211.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_module.c_alloc_ieee80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee80211_device = type { i32, i32, i32, i32, i32*, i32*, i64*, i32*, i64, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Initializing...\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to network device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to allocate beacon storage: %d\0A\00", align 1
@DEFAULT_FTS = common dso_local global i32 0, align 4
@DEFAULT_MAX_SCAN_AGE = common dso_local global i32 0, align 4
@ieee80211_crypt_deinit_handler = common dso_local global i32 0, align 4
@IEEE_IBSS_MAC_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_ieee80211(i32 %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @IEEE80211_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 144, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.net_device* @alloc_etherdev(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @IEEE80211_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %131

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.ieee80211_device* @netdev_priv(%struct.net_device* %19)
  store %struct.ieee80211_device* %20, %struct.ieee80211_device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 20
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %25 = call i32 @ieee80211_networks_allocate(%struct.ieee80211_device* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i8*, ...) @IEEE80211_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %131

31:                                               ; preds = %18
  %32 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %33 = call i32 @ieee80211_networks_initialize(%struct.ieee80211_device* %32)
  %34 = load i32, i32* @DEFAULT_FTS, align 4
  %35 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %35, i32 0, i32 19
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @DEFAULT_MAX_SCAN_AGE, align 4
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 18
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %46, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 17
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 16
  %53 = call i32 @init_timer(%struct.TYPE_2__* %52)
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %55 = ptrtoint %struct.ieee80211_device* %54 to i64
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 16
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load i32, i32* @ieee80211_crypt_deinit_handler, align 4
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %61 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %60, i32 0, i32 16
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %63, i32 0, i32 15
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %66, i32 0, i32 14
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %69, i32 0, i32 13
  store i64 0, i64* %70, align 8
  %71 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %71, i32 0, i32 12
  store i64 0, i64* %72, align 8
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 11
  store i64 0, i64* %74, align 8
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 10
  store i64 0, i64* %76, align 8
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %78 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %77, i32 0, i32 9
  store i64 0, i64* %78, align 8
  %79 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %80 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %81, i32 0, i32 8
  store i64 0, i64* %82, align 8
  %83 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %84 = call i32 @ieee80211_softmac_init(%struct.ieee80211_device* %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %97, %31
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @IEEE_IBSS_MAC_HASH_SIZE, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %91 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %90, i32 0, i32 7
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %85

100:                                              ; preds = %85
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %123, %100
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 17
  br i1 %103, label %104, label %126

104:                                              ; preds = %101
  %105 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %106 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 -1, i32* %110, align 4
  %111 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %112 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 -1, i32* %116, align 4
  %117 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %118 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %117, i32 0, i32 6
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %104
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %101

126:                                              ; preds = %101
  %127 = call i32 (...) @ieee80211_tkip_null()
  %128 = call i32 (...) @ieee80211_wep_null()
  %129 = call i32 (...) @ieee80211_ccmp_null()
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %130, %struct.net_device** %2, align 8
  br label %138

131:                                              ; preds = %28, %16
  %132 = load %struct.net_device*, %struct.net_device** %5, align 8
  %133 = icmp ne %struct.net_device* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.net_device*, %struct.net_device** %5, align 8
  %136 = call i32 @free_netdev(%struct.net_device* %135)
  br label %137

137:                                              ; preds = %134, %131
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %138

138:                                              ; preds = %137, %126
  %139 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %139
}

declare dso_local i32 @IEEE80211_DEBUG_INFO(i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @IEEE80211_ERROR(i8*, ...) #1

declare dso_local %struct.ieee80211_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ieee80211_networks_allocate(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_networks_initialize(%struct.ieee80211_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ieee80211_softmac_init(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_tkip_null(...) #1

declare dso_local i32 @ieee80211_wep_null(...) #1

declare dso_local i32 @ieee80211_ccmp_null(...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
