; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_ieee80211_mps_set_frame_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_ieee80211_mps_set_frame_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.sta_info = type { i64, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@NL80211_MESH_POWER_ACTIVE = common dso_local global i32 0, align 4
@IEEE80211_FCTL_PM = common dso_local global i32 0, align 4
@NL80211_MESH_POWER_DEEP_SLEEP = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_MESH_PS_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mps_set_frame_flags(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.ieee80211_hdr* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.ieee80211_hdr* %2, %struct.ieee80211_hdr** %6, align 8
  %9 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @is_unicast_ether_addr(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ieee80211_is_data_qos(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %22 = icmp ne %struct.sta_info* %21, null
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %20, %14, %3
  %25 = phi i1 [ false, %14 ], [ false, %3 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %124

30:                                               ; preds = %24
  %31 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_unicast_ether_addr(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ieee80211_is_data_qos(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  br label %58

52:                                               ; preds = %42, %36, %30
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @NL80211_MESH_POWER_ACTIVE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  %64 = xor i32 %63, -1
  %65 = call i32 @cpu_to_le16(i32 %64)
  %66 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %77

70:                                               ; preds = %58
  %71 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  %72 = call i32 @cpu_to_le16(i32 %71)
  %73 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %70, %62
  %78 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ieee80211_is_data_qos(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %124

84:                                               ; preds = %77
  %85 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %86 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %85)
  store i32* %86, i32** %8, align 8
  %87 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @is_unicast_ether_addr(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @NL80211_MESH_POWER_DEEP_SLEEP, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %109, label %96

96:                                               ; preds = %92, %84
  %97 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @is_multicast_ether_addr(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %102, %92
  %110 = load i32, i32* @IEEE80211_QOS_CTL_MESH_PS_LEVEL, align 4
  %111 = ashr i32 %110, 8
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %124

116:                                              ; preds = %102, %96
  %117 = load i32, i32* @IEEE80211_QOS_CTL_MESH_PS_LEVEL, align 4
  %118 = ashr i32 %117, 8
  %119 = xor i32 %118, -1
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %29, %83, %116, %109
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @is_unicast_ether_addr(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
