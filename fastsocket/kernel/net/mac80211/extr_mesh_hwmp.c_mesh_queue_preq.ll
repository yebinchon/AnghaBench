; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_mesh_queue_preq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_mesh_queue_preq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_path = type { i32, i32, i32, %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mesh_preq_queue = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate PREQ node\0A\00", align 1
@MAX_PREQ_QUEUE_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"PREQ node queue full\0A\00", align 1
@MESH_PATH_REQ_QUEUED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mesh_path*, i32)* @mesh_queue_preq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_queue_preq(%struct.mesh_path* %0, i32 %1) #0 {
  %3 = alloca %struct.mesh_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_if_mesh*, align 8
  %7 = alloca %struct.mesh_preq_queue*, align 8
  store %struct.mesh_path* %0, %struct.mesh_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %9 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %8, i32 0, i32 3
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  store %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_sub_if_data** %5, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %13, %struct.ieee80211_if_mesh** %6, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.mesh_preq_queue* @kmalloc(i32 12, i32 %14)
  store %struct.mesh_preq_queue* %15, %struct.mesh_preq_queue** %7, align 8
  %16 = load %struct.mesh_preq_queue*, %struct.mesh_preq_queue** %7, align 8
  %17 = icmp ne %struct.mesh_preq_queue* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %20 = call i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %144

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %22, i32 0, i32 3
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_PREQ_QUEUE_LEN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %31, i32 0, i32 3
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.mesh_preq_queue*, %struct.mesh_preq_queue** %7, align 8
  %35 = call i32 @kfree(%struct.mesh_preq_queue* %34)
  %36 = call i64 (...) @printk_ratelimit()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %40 = call i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %30
  br label %144

42:                                               ; preds = %21
  %43 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %44 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %43, i32 0, i32 1
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %47 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MESH_PATH_REQ_QUEUED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %54 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %56, i32 0, i32 3
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.mesh_preq_queue*, %struct.mesh_preq_queue** %7, align 8
  %60 = call i32 @kfree(%struct.mesh_preq_queue* %59)
  br label %144

61:                                               ; preds = %42
  %62 = load %struct.mesh_preq_queue*, %struct.mesh_preq_queue** %7, align 8
  %63 = getelementptr inbounds %struct.mesh_preq_queue, %struct.mesh_preq_queue* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %66 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ETH_ALEN, align 4
  %69 = call i32 @memcpy(i32 %64, i32 %67, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.mesh_preq_queue*, %struct.mesh_preq_queue** %7, align 8
  %72 = getelementptr inbounds %struct.mesh_preq_queue, %struct.mesh_preq_queue* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @MESH_PATH_REQ_QUEUED, align 4
  %74 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %75 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %79 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load %struct.mesh_preq_queue*, %struct.mesh_preq_queue** %7, align 8
  %82 = getelementptr inbounds %struct.mesh_preq_queue, %struct.mesh_preq_queue* %81, i32 0, i32 0
  %83 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @list_add_tail(i32* %82, i32* %85)
  %87 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %91, i32 0, i32 3
  %93 = call i32 @spin_unlock_bh(i32* %92)
  %94 = load i64, i64* @jiffies, align 8
  %95 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %99 = call i64 @min_preq_int_jiff(%struct.ieee80211_sub_if_data* %98)
  %100 = add nsw i64 %97, %99
  %101 = call i64 @time_after(i64 %94, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %61
  %104 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %108, i32 0, i32 0
  %110 = call i32 @ieee80211_queue_work(i32* %107, i32* %109)
  br label %144

111:                                              ; preds = %61
  %112 = load i64, i64* @jiffies, align 8
  %113 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %114 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @time_before(i64 %112, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %111
  %119 = load i64, i64* @jiffies, align 8
  %120 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %121 = call i64 @min_preq_int_jiff(%struct.ieee80211_sub_if_data* %120)
  %122 = sub nsw i64 %119, %121
  %123 = sub nsw i64 %122, 1
  %124 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %125 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %127 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %131 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %130, i32 0, i32 0
  %132 = call i32 @ieee80211_queue_work(i32* %129, i32* %131)
  br label %143

133:                                              ; preds = %111
  %134 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %135 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %134, i32 0, i32 2
  %136 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %137 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %140 = call i64 @min_preq_int_jiff(%struct.ieee80211_sub_if_data* %139)
  %141 = add nsw i64 %138, %140
  %142 = call i32 @mod_timer(i32* %135, i64 %141)
  br label %143

143:                                              ; preds = %133, %118
  br label %144

144:                                              ; preds = %18, %41, %52, %143, %103
  ret void
}

declare dso_local %struct.mesh_preq_queue* @kmalloc(i32, i32) #1

declare dso_local i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.mesh_preq_queue*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @min_preq_int_jiff(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
