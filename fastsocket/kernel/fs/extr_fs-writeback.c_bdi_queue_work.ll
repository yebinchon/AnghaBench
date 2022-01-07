; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_bdi_queue_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_bdi_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.backing_dev_info = type { %struct.bdi_writeback, i32, i32, i32 }
%struct.bdi_writeback = type { i64 }
%struct.wb_writeback_work = type { i32 }

@default_backing_dev_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.backing_dev_info*, %struct.wb_writeback_work*)* @bdi_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdi_queue_work(%struct.backing_dev_info* %0, %struct.wb_writeback_work* %1) #0 {
  %3 = alloca %struct.backing_dev_info*, align 8
  %4 = alloca %struct.wb_writeback_work*, align 8
  %5 = alloca %struct.bdi_writeback*, align 8
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %3, align 8
  store %struct.wb_writeback_work* %1, %struct.wb_writeback_work** %4, align 8
  %6 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %7 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %4, align 8
  %8 = call i32 @trace_writeback_queue(%struct.backing_dev_info* %6, %struct.wb_writeback_work* %7)
  %9 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %10 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %4, align 8
  %13 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %12, i32 0, i32 0
  %14 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %15 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %14, i32 0, i32 3
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  %17 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %18 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %17, i32 0, i32 2
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %21 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %20, i32 0, i32 1
  %22 = call i32 @list_empty_careful(i32* %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %27 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %4, align 8
  %28 = call i32 @trace_writeback_nothread(%struct.backing_dev_info* %26, %struct.wb_writeback_work* %27)
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_backing_dev_info, i32 0, i32 0, i32 0), align 8
  %30 = call i32 @wake_up_process(i64 %29)
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %33 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %32, i32 0, i32 0
  store %struct.bdi_writeback* %33, %struct.bdi_writeback** %5, align 8
  %34 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %35 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %40 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @wake_up_process(i64 %41)
  br label %43

43:                                               ; preds = %38, %31
  br label %44

44:                                               ; preds = %43, %25
  ret void
}

declare dso_local i32 @trace_writeback_queue(%struct.backing_dev_info*, %struct.wb_writeback_work*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty_careful(i32*) #1

declare dso_local i32 @trace_writeback_nothread(%struct.backing_dev_info*, %struct.wb_writeback_work*) #1

declare dso_local i32 @wake_up_process(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
