; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_module.c_free_ieee80211.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_module.c_free_ieee80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee80211_device = type { %struct.ieee80211_crypt_data**, i32, %struct.ieee80211_crypt_data* }
%struct.ieee80211_crypt_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@WEP_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_ieee80211(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_crypt_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ieee80211_device* @netdev_priv(%struct.net_device* %6)
  store %struct.ieee80211_device* %7, %struct.ieee80211_device** %3, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 2
  %10 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %9, align 8
  %11 = icmp ne %struct.ieee80211_crypt_data* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 2
  %15 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %14, align 8
  %16 = call i32 @kfree(%struct.ieee80211_crypt_data* %15)
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 2
  store %struct.ieee80211_crypt_data* null, %struct.ieee80211_crypt_data** %18, align 8
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %21 = call i32 @RemoveAllTS(%struct.ieee80211_device* %20)
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %23 = call i32 @ieee80211_softmac_free(%struct.ieee80211_device* %22)
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 1
  %26 = call i32 @del_timer_sync(i32* %25)
  %27 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %28 = call i32 @ieee80211_crypt_deinit_entries(%struct.ieee80211_device* %27, i32 1)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %68, %19
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @WEP_KEYS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %34, i32 0, i32 0
  %36 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %36, i64 %38
  %40 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %39, align 8
  store %struct.ieee80211_crypt_data* %40, %struct.ieee80211_crypt_data** %5, align 8
  %41 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %42 = icmp ne %struct.ieee80211_crypt_data* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %33
  %44 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32 %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %60 = call i32 @kfree(%struct.ieee80211_crypt_data* %59)
  %61 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %62 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %61, i32 0, i32 0
  %63 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %63, i64 %65
  store %struct.ieee80211_crypt_data* null, %struct.ieee80211_crypt_data** %66, align 8
  br label %67

67:                                               ; preds = %58, %33
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %29

71:                                               ; preds = %29
  %72 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %73 = call i32 @ieee80211_networks_free(%struct.ieee80211_device* %72)
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @free_netdev(%struct.net_device* %74)
  ret void
}

declare dso_local %struct.ieee80211_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.ieee80211_crypt_data*) #1

declare dso_local i32 @RemoveAllTS(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_softmac_free(%struct.ieee80211_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ieee80211_crypt_deinit_entries(%struct.ieee80211_device*, i32) #1

declare dso_local i32 @ieee80211_networks_free(%struct.ieee80211_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
