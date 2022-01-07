; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_shutdown_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_shutdown_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_disk_slot = type { i64, i32 }
%struct.o2hb_node_event = type { i32 }
%struct.o2nm_node = type { i32 }

@o2hb_live_lock = common dso_local global i32 0, align 4
@ML_HEARTBEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Shutdown, node %d leaves region\0A\00", align 1
@o2hb_live_slots = common dso_local global i32* null, align 8
@o2hb_live_node_bitmap = common dso_local global i32 0, align 4
@O2HB_NODE_DOWN_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2hb_disk_slot*)* @o2hb_shutdown_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_shutdown_slot(%struct.o2hb_disk_slot* %0) #0 {
  %2 = alloca %struct.o2hb_disk_slot*, align 8
  %3 = alloca %struct.o2hb_node_event, align 4
  %4 = alloca %struct.o2nm_node*, align 8
  store %struct.o2hb_disk_slot* %0, %struct.o2hb_disk_slot** %2, align 8
  %5 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %3, i32 0, i32 0
  %6 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @LIST_HEAD_INIT(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %10 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call %struct.o2nm_node* @o2nm_get_node_by_num(i64 %11)
  store %struct.o2nm_node* %12, %struct.o2nm_node** %4, align 8
  %13 = load %struct.o2nm_node*, %struct.o2nm_node** %4, align 8
  %14 = icmp ne %struct.o2nm_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %56

16:                                               ; preds = %1
  %17 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %18 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %19 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %18, i32 0, i32 1
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ML_HEARTBEAT, align 4
  %24 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %25 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @mlog(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %29 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %28, i32 0, i32 1
  %30 = call i32 @list_del_init(i32* %29)
  %31 = load i32*, i32** @o2hb_live_slots, align 8
  %32 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %33 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = call i64 @list_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %22
  %39 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %40 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @o2hb_live_node_bitmap, align 4
  %43 = call i32 @clear_bit(i64 %41, i32 %42)
  %44 = load i32, i32* @O2HB_NODE_DOWN_CB, align 4
  %45 = load %struct.o2nm_node*, %struct.o2nm_node** %4, align 8
  %46 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %2, align 8
  %47 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @o2hb_queue_node_event(%struct.o2hb_node_event* %3, i32 %44, %struct.o2nm_node* %45, i64 %48)
  br label %50

50:                                               ; preds = %38, %22
  br label %51

51:                                               ; preds = %50, %16
  %52 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %53 = call i32 @o2hb_run_event_list(%struct.o2hb_node_event* %3)
  %54 = load %struct.o2nm_node*, %struct.o2nm_node** %4, align 8
  %55 = call i32 @o2nm_node_put(%struct.o2nm_node* %54)
  br label %56

56:                                               ; preds = %51, %15
  ret void
}

declare dso_local i32 @LIST_HEAD_INIT(i32) #1

declare dso_local %struct.o2nm_node* @o2nm_get_node_by_num(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @o2hb_queue_node_event(%struct.o2hb_node_event*, i32, %struct.o2nm_node*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @o2hb_run_event_list(%struct.o2hb_node_event*) #1

declare dso_local i32 @o2nm_node_put(%struct.o2nm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
