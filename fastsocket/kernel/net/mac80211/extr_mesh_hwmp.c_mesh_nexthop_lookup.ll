; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_mesh_nexthop_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_mesh_nexthop_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mesh_path = type { i32, i32, i64 }
%struct.sta_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@MESH_PATH_ACTIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@MESH_PATH_RESOLVING = common dso_local global i32 0, align 4
@MESH_PATH_FIXED = common dso_local global i32 0, align 4
@PREQ_Q_F_START = common dso_local global i32 0, align 4
@PREQ_Q_F_REFRESH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_nexthop_lookup(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mesh_path*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %13, %struct.ieee80211_hdr** %7, align 8
  %14 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %20, i32* %21)
  store %struct.mesh_path* %22, %struct.mesh_path** %5, align 8
  %23 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %24 = icmp ne %struct.mesh_path* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %27 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25, %2
  br label %109

33:                                               ; preds = %25
  %34 = load i32, i32* @jiffies, align 4
  %35 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %36 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @msecs_to_jiffies(i32 %43)
  %45 = sub nsw i64 %37, %44
  %46 = call i64 @time_after(i32 %34, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %33
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @ether_addr_equal(i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %48
  %59 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %60 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %58
  %66 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %67 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MESH_PATH_FIXED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %74 = load i32, i32* @PREQ_Q_F_START, align 4
  %75 = load i32, i32* @PREQ_Q_F_REFRESH, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @mesh_queue_preq(%struct.mesh_path* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %65, %58, %48, %33
  %79 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %80 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.sta_info* @rcu_dereference(i32 %81)
  store %struct.sta_info* %82, %struct.sta_info** %6, align 8
  %83 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %84 = icmp ne %struct.sta_info* %83, null
  br i1 %84, label %85, label %108

85:                                               ; preds = %78
  %86 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ETH_ALEN, align 4
  %94 = call i32 @memcpy(i32 %88, i32 %92, i32 %93)
  %95 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %96 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ETH_ALEN, align 4
  %103 = call i32 @memcpy(i32 %97, i32 %101, i32 %102)
  %104 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %105 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %106 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %107 = call i32 @ieee80211_mps_set_frame_flags(%struct.ieee80211_sub_if_data* %104, %struct.sta_info* %105, %struct.ieee80211_hdr* %106)
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %85, %78
  br label %109

109:                                              ; preds = %108, %32
  %110 = call i32 (...) @rcu_read_unlock()
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @mesh_queue_preq(%struct.mesh_path*, i32) #1

declare dso_local %struct.sta_info* @rcu_dereference(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ieee80211_mps_set_frame_flags(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.ieee80211_hdr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
