; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_2__, %struct.ieee80211_local* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_local = type { i32, i32, i32, i32, i32, i32, i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IEEE80211_SDATA_ALLMULTI = common dso_local global i32 0, align 4
@IEEE80211_SDATA_PROMISC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ieee80211_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %9)
  store %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_sub_if_data** %3, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 2
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFF_ALLMULTI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_PROMISC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IEEE80211_SDATA_ALLMULTI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IEEE80211_SDATA_PROMISC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %1
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_ALLMULTI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %61, i32 0, i32 6
  %63 = call i32 @atomic_inc(i32* %62)
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %65, i32 0, i32 6
  %67 = call i32 @atomic_dec(i32* %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @IEEE80211_SDATA_ALLMULTI, align 4
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = xor i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %1
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IFF_PROMISC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 5
  %88 = call i32 @atomic_inc(i32* %87)
  br label %93

89:                                               ; preds = %78
  %90 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %91 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %90, i32 0, i32 5
  %92 = call i32 @atomic_dec(i32* %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* @IEEE80211_SDATA_PROMISC, align 4
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = xor i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %74
  %100 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %99
  %107 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %106
  %114 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %122 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, ...) @drv_set_multicast_list(%struct.ieee80211_local* %121, %struct.ieee80211_sub_if_data* %122, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %120, %113, %106, %99
  %131 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %132 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %131, i32 0, i32 2
  %133 = call i32 @spin_lock_bh(i32* %132)
  %134 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %135 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %134, i32 0, i32 4
  %136 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %137 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %136, i32 0, i32 3
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 2
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 1
  %142 = call i32 @__dev_addr_sync(i32* %135, i32* %137, i32* %139, i32* %141)
  %143 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %144 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %143, i32 0, i32 2
  %145 = call i32 @spin_unlock_bh(i32* %144)
  %146 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %147 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %146, i32 0, i32 1
  %148 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %149 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %148, i32 0, i32 0
  %150 = call i32 @ieee80211_queue_work(i32* %147, i32* %149)
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @drv_set_multicast_list(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__dev_addr_sync(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
