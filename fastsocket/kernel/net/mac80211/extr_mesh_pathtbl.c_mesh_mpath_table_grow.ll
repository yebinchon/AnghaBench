; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_pathtbl.c_mesh_mpath_table_grow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_pathtbl.c_mesh_mpath_table_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_table = type { i32, i64 }

@pathtbl_resize_lock = common dso_local global i32 0, align 4
@mesh_paths = common dso_local global i32 0, align 4
@mesh_table_free_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_mpath_table_grow() #0 {
  %1 = alloca %struct.mesh_table*, align 8
  %2 = alloca %struct.mesh_table*, align 8
  %3 = call i32 @write_lock_bh(i32* @pathtbl_resize_lock)
  %4 = call %struct.mesh_table* (...) @resize_dereference_mesh_paths()
  store %struct.mesh_table* %4, %struct.mesh_table** %1, align 8
  %5 = load %struct.mesh_table*, %struct.mesh_table** %1, align 8
  %6 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  %9 = call %struct.mesh_table* @mesh_table_alloc(i64 %8)
  store %struct.mesh_table* %9, %struct.mesh_table** %2, align 8
  %10 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %11 = icmp ne %struct.mesh_table* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %29

13:                                               ; preds = %0
  %14 = load %struct.mesh_table*, %struct.mesh_table** %1, align 8
  %15 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %16 = call i64 @mesh_table_grow(%struct.mesh_table* %14, %struct.mesh_table* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %20 = call i32 @__mesh_table_free(%struct.mesh_table* %19)
  br label %29

21:                                               ; preds = %13
  %22 = load i32, i32* @mesh_paths, align 4
  %23 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %24 = call i32 @rcu_assign_pointer(i32 %22, %struct.mesh_table* %23)
  %25 = load %struct.mesh_table*, %struct.mesh_table** %1, align 8
  %26 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %25, i32 0, i32 0
  %27 = load i32, i32* @mesh_table_free_rcu, align 4
  %28 = call i32 @call_rcu(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %18, %12
  %30 = call i32 @write_unlock_bh(i32* @pathtbl_resize_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.mesh_table* @resize_dereference_mesh_paths(...) #1

declare dso_local %struct.mesh_table* @mesh_table_alloc(i64) #1

declare dso_local i64 @mesh_table_grow(%struct.mesh_table*, %struct.mesh_table*) #1

declare dso_local i32 @__mesh_table_free(%struct.mesh_table*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.mesh_table*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
