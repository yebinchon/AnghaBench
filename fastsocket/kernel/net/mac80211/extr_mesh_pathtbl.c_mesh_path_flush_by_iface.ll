; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_pathtbl.c_mesh_path_flush_by_iface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_pathtbl.c_mesh_path_flush_by_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.mesh_table = type { i32 }

@pathtbl_resize_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_path_flush_by_iface(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.mesh_table*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = call i32 @read_lock_bh(i32* @pathtbl_resize_lock)
  %6 = call %struct.mesh_table* (...) @resize_dereference_mesh_paths()
  store %struct.mesh_table* %6, %struct.mesh_table** %3, align 8
  %7 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %9 = call i32 @table_flush_by_iface(%struct.mesh_table* %7, %struct.ieee80211_sub_if_data* %8)
  %10 = call %struct.mesh_table* (...) @resize_dereference_mpp_paths()
  store %struct.mesh_table* %10, %struct.mesh_table** %3, align 8
  %11 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %13 = call i32 @table_flush_by_iface(%struct.mesh_table* %11, %struct.ieee80211_sub_if_data* %12)
  %14 = call i32 @read_unlock_bh(i32* @pathtbl_resize_lock)
  %15 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.mesh_table* @resize_dereference_mesh_paths(...) #1

declare dso_local i32 @table_flush_by_iface(%struct.mesh_table*, %struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.mesh_table* @resize_dereference_mpp_paths(...) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
