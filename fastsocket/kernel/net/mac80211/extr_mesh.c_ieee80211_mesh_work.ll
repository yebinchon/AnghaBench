; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@MESH_WORK_GROW_MPATH_TABLE = common dso_local global i32 0, align 4
@MESH_WORK_GROW_MPP_TABLE = common dso_local global i32 0, align 4
@MESH_WORK_HOUSEKEEPING = common dso_local global i32 0, align 4
@MESH_WORK_ROOT = common dso_local global i32 0, align 4
@MESH_WORK_DRIFT_ADJUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mesh_work(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_mesh*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %4 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %6, %struct.ieee80211_if_mesh** %3, align 8
  %7 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i32, i32* @jiffies, align 4
  %13 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @msecs_to_jiffies(i32 %19)
  %21 = add nsw i64 %15, %20
  %22 = call i64 @time_after(i32 %12, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %26 = call i32 @mesh_path_start_discovery(%struct.ieee80211_sub_if_data* %25)
  br label %27

27:                                               ; preds = %24, %11, %1
  %28 = load i32, i32* @MESH_WORK_GROW_MPATH_TABLE, align 4
  %29 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %29, i32 0, i32 0
  %31 = call i64 @test_and_clear_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 (...) @mesh_mpath_table_grow()
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* @MESH_WORK_GROW_MPP_TABLE, align 4
  %37 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %37, i32 0, i32 0
  %39 = call i64 @test_and_clear_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 (...) @mesh_mpp_table_grow()
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i32, i32* @MESH_WORK_HOUSEKEEPING, align 4
  %45 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %45, i32 0, i32 0
  %47 = call i64 @test_and_clear_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %51 = call i32 @ieee80211_mesh_housekeeping(%struct.ieee80211_sub_if_data* %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* @MESH_WORK_ROOT, align 4
  %54 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %54, i32 0, i32 0
  %56 = call i64 @test_and_clear_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %60 = call i32 @ieee80211_mesh_rootpath(%struct.ieee80211_sub_if_data* %59)
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i32, i32* @MESH_WORK_DRIFT_ADJUST, align 4
  %63 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %63, i32 0, i32 0
  %65 = call i64 @test_and_clear_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %69 = call i32 @mesh_sync_adjust_tbtt(%struct.ieee80211_sub_if_data* %68)
  br label %70

70:                                               ; preds = %67, %61
  ret void
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mesh_path_start_discovery(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mesh_mpath_table_grow(...) #1

declare dso_local i32 @mesh_mpp_table_grow(...) #1

declare dso_local i32 @ieee80211_mesh_housekeeping(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_mesh_rootpath(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mesh_sync_adjust_tbtt(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
