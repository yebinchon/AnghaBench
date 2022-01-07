; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_wb_check_old_data_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_wb_check_old_data_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.bdi_writeback = type { i64 }
%struct.wb_writeback_work = type { i64, i32, i32, i32 }

@dirty_writeback_interval = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@NR_UNSTABLE_NFS = common dso_local global i32 0, align 4
@inodes_stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WB_SYNC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bdi_writeback*)* @wb_check_old_data_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wb_check_old_data_flush(%struct.bdi_writeback* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bdi_writeback*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wb_writeback_work, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %3, align 8
  %7 = load i32, i32* @dirty_writeback_interval, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %51

10:                                               ; preds = %1
  %11 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %12 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @dirty_writeback_interval, align 4
  %15 = mul nsw i32 %14, 10
  %16 = call i64 @msecs_to_jiffies(i32 %15)
  %17 = add i64 %13, %16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @time_before(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  store i64 0, i64* %2, align 8
  br label %51

23:                                               ; preds = %10
  %24 = load i64, i64* @jiffies, align 8
  %25 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %26 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @NR_FILE_DIRTY, align 4
  %28 = call i64 @global_page_state(i32 %27)
  %29 = load i32, i32* @NR_UNSTABLE_NFS, align 4
  %30 = call i64 @global_page_state(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 0), align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 1), align 8
  %34 = sub nsw i64 %32, %33
  %35 = add nsw i64 %31, %34
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %6, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %6, i32 0, i32 1
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %6, i32 0, i32 2
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %6, i32 0, i32 3
  %44 = load i32, i32* @WB_SYNC_NONE, align 4
  store i32 %44, i32* %43, align 8
  %45 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %46 = call i64 @wb_writeback(%struct.bdi_writeback* %45, %struct.wb_writeback_work* %6)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @trace_mm_olddata_writeout(i64 %47)
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %2, align 8
  br label %51

50:                                               ; preds = %23
  store i64 0, i64* %2, align 8
  br label %51

51:                                               ; preds = %50, %38, %22, %9
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @global_page_state(i32) #1

declare dso_local i64 @wb_writeback(%struct.bdi_writeback*, %struct.wb_writeback_work*) #1

declare dso_local i32 @trace_mm_olddata_writeout(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
