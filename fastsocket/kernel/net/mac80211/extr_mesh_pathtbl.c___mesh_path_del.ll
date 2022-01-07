; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_pathtbl.c___mesh_path_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_pathtbl.c___mesh_path_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_table = type { i32 }
%struct.mpath_node = type { i32, i32, %struct.mesh_path* }
%struct.mesh_path = type { i32, i64, i32 }

@MESH_PATH_RESOLVING = common dso_local global i32 0, align 4
@mesh_path_node_reclaim = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mesh_table*, %struct.mpath_node*)* @__mesh_path_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mesh_path_del(%struct.mesh_table* %0, %struct.mpath_node* %1) #0 {
  %3 = alloca %struct.mesh_table*, align 8
  %4 = alloca %struct.mpath_node*, align 8
  %5 = alloca %struct.mesh_path*, align 8
  store %struct.mesh_table* %0, %struct.mesh_table** %3, align 8
  store %struct.mpath_node* %1, %struct.mpath_node** %4, align 8
  %6 = load %struct.mpath_node*, %struct.mpath_node** %4, align 8
  %7 = getelementptr inbounds %struct.mpath_node, %struct.mpath_node* %6, i32 0, i32 2
  %8 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  store %struct.mesh_path* %8, %struct.mesh_path** %5, align 8
  %9 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %10 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %13 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %14 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %18 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %23 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %24 = call i32 @mesh_gate_del(%struct.mesh_table* %22, %struct.mesh_path* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.mpath_node*, %struct.mpath_node** %4, align 8
  %27 = getelementptr inbounds %struct.mpath_node, %struct.mpath_node* %26, i32 0, i32 1
  %28 = call i32 @hlist_del_rcu(i32* %27)
  %29 = load %struct.mpath_node*, %struct.mpath_node** %4, align 8
  %30 = getelementptr inbounds %struct.mpath_node, %struct.mpath_node* %29, i32 0, i32 0
  %31 = load i32, i32* @mesh_path_node_reclaim, align 4
  %32 = call i32 @call_rcu(i32* %30, i32 %31)
  %33 = load %struct.mesh_path*, %struct.mesh_path** %5, align 8
  %34 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %37 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %36, i32 0, i32 0
  %38 = call i32 @atomic_dec(i32* %37)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mesh_gate_del(%struct.mesh_table*, %struct.mesh_path*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
