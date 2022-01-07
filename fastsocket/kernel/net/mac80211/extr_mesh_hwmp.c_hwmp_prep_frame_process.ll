; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_hwmp_prep_frame_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_hwmp_prep_frame_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_mgmt = type { i32 }
%struct.mesh_path = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"received PREP from %pM\0A\00", align 1
@MESH_PATH_ACTIVE = common dso_local global i32 0, align 4
@MPATH_PREP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i32*, i32)* @hwmp_prep_frame_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwmp_prep_frame_process(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_mgmt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_if_mesh*, align 8
  %10 = alloca %struct.mesh_path*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %24, %struct.ieee80211_if_mesh** %9, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %16, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %17, align 8
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @PREP_IE_TARGET_ADDR(i32* %30)
  %32 = call i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32* @PREP_IE_ORIG_ADDR(i32* %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ether_addr_equal(i32* %35, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  store i32 1, i32* %21, align 4
  br label %152

43:                                               ; preds = %4
  %44 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 1, i32* %21, align 4
  br label %152

50:                                               ; preds = %43
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @PREP_IE_TTL(i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  store i32 1, i32* %21, align 4
  br label %152

63:                                               ; preds = %50
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %65, i32* %66)
  store %struct.mesh_path* %67, %struct.mesh_path** %10, align 8
  %68 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %69 = icmp ne %struct.mesh_path* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %72 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %71, i32 0, i32 1
  %73 = call i32 @spin_lock_bh(i32* %72)
  br label %75

74:                                               ; preds = %63
  br label %143

75:                                               ; preds = %70
  %76 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %77 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %84 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock_bh(i32* %84)
  br label %143

86:                                               ; preds = %75
  %87 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %88 = call %struct.TYPE_12__* @next_hop_deref_protected(%struct.mesh_path* %87)
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ETH_ALEN, align 4
  %93 = call i32 @memcpy(i32* %28, i32 %91, i32 %92)
  %94 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %95 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock_bh(i32* %95)
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %13, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @PREP_IE_FLAGS(i32* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @PREP_IE_LIFETIME(i32* %101)
  store i32 %102, i32* %20, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @PREP_IE_HOPCOUNT(i32* %103)
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = call i32* @PREP_IE_TARGET_ADDR(i32* %106)
  store i32* %107, i32** %11, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @PREP_IE_TARGET_SN(i32* %108)
  store i32 %109, i32* %18, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @PREP_IE_ORIG_SN(i32* %110)
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* @MPATH_PREP, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %19, align 4
  %116 = call i32 @cpu_to_le32(i32 %115)
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @cpu_to_le32(i32 %118)
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %20, align 4
  %123 = call i32 @cpu_to_le32(i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @cpu_to_le32(i32 %124)
  %126 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %127 = call i32 @mesh_path_sel_frame_tx(i32 %112, i32 %113, i32* %114, i32 %116, i32 0, i32* %117, i32 %119, i32* %28, i32 %120, i32 %121, i32 %123, i32 %125, i32 0, %struct.ieee80211_sub_if_data* %126)
  %128 = call i32 (...) @rcu_read_unlock()
  %129 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %130 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %137 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  store i32 1, i32* %21, align 4
  br label %152

143:                                              ; preds = %82, %74
  %144 = call i32 (...) @rcu_read_unlock()
  %145 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  store i32 0, i32* %21, align 4
  br label %152

152:                                              ; preds = %143, %86, %55, %49, %42
  %153 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %21, align 4
  switch i32 %154, label %156 [
    i32 0, label %155
    i32 1, label %155
  ]

155:                                              ; preds = %152, %152
  ret void

156:                                              ; preds = %152
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data*, i8*, i32*) #2

declare dso_local i32* @PREP_IE_TARGET_ADDR(i32*) #2

declare dso_local i32* @PREP_IE_ORIG_ADDR(i32*) #2

declare dso_local i64 @ether_addr_equal(i32*, i32) #2

declare dso_local i32 @PREP_IE_TTL(i32*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data*, i32*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local %struct.TYPE_12__* @next_hop_deref_protected(%struct.mesh_path*) #2

declare dso_local i32 @PREP_IE_FLAGS(i32*) #2

declare dso_local i32 @PREP_IE_LIFETIME(i32*) #2

declare dso_local i32 @PREP_IE_HOPCOUNT(i32*) #2

declare dso_local i32 @PREP_IE_TARGET_SN(i32*) #2

declare dso_local i32 @PREP_IE_ORIG_SN(i32*) #2

declare dso_local i32 @mesh_path_sel_frame_tx(i32, i32, i32*, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, %struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
