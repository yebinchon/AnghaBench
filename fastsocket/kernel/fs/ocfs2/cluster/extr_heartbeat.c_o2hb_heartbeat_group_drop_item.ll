; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_heartbeat_group_drop_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_heartbeat_group_drop_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.config_item = type { i32 }
%struct.task_struct = type { i32 }
%struct.o2hb_region = type { i32, %struct.task_struct* }

@o2hb_live_lock = common dso_local global i32 0, align 4
@o2hb_steady_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @o2hb_heartbeat_group_drop_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_heartbeat_group_drop_item(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.o2hb_region*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %7 = load %struct.config_item*, %struct.config_item** %4, align 8
  %8 = call %struct.o2hb_region* @to_o2hb_region(%struct.config_item* %7)
  store %struct.o2hb_region* %8, %struct.o2hb_region** %6, align 8
  %9 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %10 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %11 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %10, i32 0, i32 1
  %12 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  store %struct.task_struct* %12, %struct.task_struct** %5, align 8
  %13 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %14 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %13, i32 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %14, align 8
  %15 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = call i32 @kthread_stop(%struct.task_struct* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %23 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %22, i32 0, i32 0
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %28 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %27, i32 0, i32 0
  %29 = call i32 @atomic_set(i32* %28, i32 0)
  %30 = call i32 @wake_up(i32* @o2hb_steady_queue)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.config_item*, %struct.config_item** %4, align 8
  %33 = call i32 @config_item_put(%struct.config_item* %32)
  ret void
}

declare dso_local %struct.o2hb_region* @to_o2hb_region(%struct.config_item*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
