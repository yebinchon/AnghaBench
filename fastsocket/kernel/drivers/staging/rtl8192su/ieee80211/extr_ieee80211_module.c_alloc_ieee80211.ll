; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_module.c_alloc_ieee80211.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_module.c_alloc_ieee80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee80211_device = type { i32, i32, i32, i32, i32*, i32*, i64*, i32*, i32*, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Initializing...\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to network device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to allocate beacon storage: %d\0A\00", align 1
@DEFAULT_FTS = common dso_local global i32 0, align 4
@DEFAULT_MAX_SCAN_AGE = common dso_local global i32 0, align 4
@ieee80211_crypt_deinit_handler = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"can't alloc memory for HTInfo\0A\00", align 1
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
  %11 = add i64 176, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.net_device* @alloc_etherdev(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @IEEE80211_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %170

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.ieee80211_device* @netdev_priv(%struct.net_device* %19)
  store %struct.ieee80211_device* %20, %struct.ieee80211_device** %4, align 8
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 176, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(%struct.ieee80211_device* %21, i32 0, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 26
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %31 = call i32 @ieee80211_networks_allocate(%struct.ieee80211_device* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, ...) @IEEE80211_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %170

37:                                               ; preds = %18
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %39 = call i32 @ieee80211_networks_initialize(%struct.ieee80211_device* %38)
  %40 = load i32, i32* @DEFAULT_FTS, align 4
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 25
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @DEFAULT_MAX_SCAN_AGE, align 4
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %44, i32 0, i32 24
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %54, i32 0, i32 23
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 22
  %59 = call i32 @init_timer(%struct.TYPE_2__* %58)
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %61 = ptrtoint %struct.ieee80211_device* %60 to i64
  %62 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %62, i32 0, i32 22
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load i32, i32* @ieee80211_crypt_deinit_handler, align 4
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %66, i32 0, i32 22
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %69, i32 0, i32 21
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %72, i32 0, i32 20
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 19
  %77 = call i32 @spin_lock_init(i32* %76)
  %78 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %78, i32 0, i32 18
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %81, i32 0, i32 17
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  %84 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %84, i32 0, i32 16
  %86 = call i32 @atomic_set(i32* %85, i32 0)
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 15
  store i64 0, i64* %88, align 8
  %89 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %89, i32 0, i32 14
  store i64 0, i64* %90, align 8
  %91 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %92 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %91, i32 0, i32 13
  store i64 0, i64* %92, align 8
  %93 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %94 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %93, i32 0, i32 12
  store i64 0, i64* %94, align 8
  %95 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %95, i32 0, i32 11
  store i64 0, i64* %96, align 8
  %97 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %98 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %97, i32 0, i32 3
  store i32 1, i32* %98, align 4
  %99 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %100 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %99, i32 0, i32 10
  store i64 0, i64* %100, align 8
  %101 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %102 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %101, i32 0, i32 9
  store i64 0, i64* %102, align 8
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %104 = call i32 @ieee80211_softmac_init(%struct.ieee80211_device* %103)
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i64 @kzalloc(i32 4, i32 %105)
  %107 = inttoptr i64 %106 to i32*
  %108 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %109 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %108, i32 0, i32 8
  store i32* %107, i32** %109, align 8
  %110 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %111 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %110, i32 0, i32 8
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %37
  %115 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %116 = call i32 @IEEE80211_DEBUG(i32 %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %177

117:                                              ; preds = %37
  %118 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %119 = call i32 @HTUpdateDefaultSetting(%struct.ieee80211_device* %118)
  %120 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %121 = call i32 @HTInitializeHTInfo(%struct.ieee80211_device* %120)
  %122 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %123 = call i32 @TSInitialize(%struct.ieee80211_device* %122)
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %136, %117
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @IEEE_IBSS_MAC_HASH_SIZE, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %130 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i32 @INIT_LIST_HEAD(i32* %134)
  br label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %124

139:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %162, %139
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %141, 17
  br i1 %142, label %143, label %165

143:                                              ; preds = %140
  %144 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %145 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 -1, i32* %149, align 4
  %150 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %151 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %150, i32 0, i32 5
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 -1, i32* %155, align 4
  %156 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %157 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %156, i32 0, i32 6
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %143
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %140

165:                                              ; preds = %140
  %166 = call i32 (...) @ieee80211_tkip_null()
  %167 = call i32 (...) @ieee80211_wep_null()
  %168 = call i32 (...) @ieee80211_ccmp_null()
  %169 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %169, %struct.net_device** %2, align 8
  br label %177

170:                                              ; preds = %34, %16
  %171 = load %struct.net_device*, %struct.net_device** %5, align 8
  %172 = icmp ne %struct.net_device* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.net_device*, %struct.net_device** %5, align 8
  %175 = call i32 @free_netdev(%struct.net_device* %174)
  br label %176

176:                                              ; preds = %173, %170
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %177

177:                                              ; preds = %176, %165, %114
  %178 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %178
}

declare dso_local i32 @IEEE80211_DEBUG_INFO(i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @IEEE80211_ERROR(i8*, ...) #1

declare dso_local %struct.ieee80211_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ieee80211_device*, i32, i32) #1

declare dso_local i32 @ieee80211_networks_allocate(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_networks_initialize(%struct.ieee80211_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ieee80211_softmac_init(%struct.ieee80211_device*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*) #1

declare dso_local i32 @HTUpdateDefaultSetting(%struct.ieee80211_device*) #1

declare dso_local i32 @HTInitializeHTInfo(%struct.ieee80211_device*) #1

declare dso_local i32 @TSInitialize(%struct.ieee80211_device*) #1

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
