; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_mesh_path_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_mesh_path_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_path = type { i32, i64, i32, i32, i32, i32, %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MESH_PATH_RESOLVED = common dso_local global i32 0, align 4
@MESH_PATH_RESOLVING = common dso_local global i32 0, align 4
@MESH_PATH_REQ_QUEUED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no gate was reachable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_path_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mesh_path*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.mesh_path*
  store %struct.mesh_path* %8, %struct.mesh_path** %3, align 8
  %9 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %10 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %9, i32 0, i32 6
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  store %struct.ieee80211_sub_if_data* %11, %struct.ieee80211_sub_if_data** %4, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %106

19:                                               ; preds = %1
  %20 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %21 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %20, i32 0, i32 4
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %24 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MESH_PATH_RESOLVED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %19
  %30 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %31 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %29, %19
  %37 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %38 = load i32, i32* @MESH_PATH_RESOLVED, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %42 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %46 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %45, i32 0, i32 4
  %47 = call i32 @spin_unlock_bh(i32* %46)
  br label %106

48:                                               ; preds = %29
  %49 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %50 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %53 = call i64 @max_preq_retries(%struct.ieee80211_sub_if_data* %52)
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %48
  %56 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %57 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %61 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @MESH_PATH_REQ_QUEUED, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %67 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %71 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %70, i32 0, i32 4
  %72 = call i32 @spin_unlock_bh(i32* %71)
  %73 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %74 = call i32 @mesh_queue_preq(%struct.mesh_path* %73, i32 0)
  br label %105

75:                                               ; preds = %48
  %76 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %77 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load i32, i32* @jiffies, align 4
  %79 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %80 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %82 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %81, i32 0, i32 4
  %83 = call i32 @spin_unlock_bh(i32* %82)
  %84 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %85 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %75
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %90 = call i64 @mesh_gate_num(%struct.ieee80211_sub_if_data* %89)
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %94 = call i32 @mesh_path_send_to_gates(%struct.mesh_path* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %99 = call i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %92
  br label %104

101:                                              ; preds = %88, %75
  %102 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %103 = call i32 @mesh_path_flush_pending(%struct.mesh_path* %102)
  br label %104

104:                                              ; preds = %101, %100
  br label %105

105:                                              ; preds = %104, %55
  br label %106

106:                                              ; preds = %18, %105, %36
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @max_preq_retries(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mesh_queue_preq(%struct.mesh_path*, i32) #1

declare dso_local i64 @mesh_gate_num(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mesh_path_send_to_gates(%struct.mesh_path*) #1

declare dso_local i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data*, i8*) #1

declare dso_local i32 @mesh_path_flush_pending(%struct.mesh_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
