; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_wb_do_writeback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_wb_do_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }
%struct.wb_writeback_work = type { i64, i32 }

@BDI_writeback_running = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wb_do_writeback(%struct.bdi_writeback* %0, i32 %1) #0 {
  %3 = alloca %struct.bdi_writeback*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.backing_dev_info*, align 8
  %6 = alloca %struct.wb_writeback_work*, align 8
  %7 = alloca i64, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %9 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %8, i32 0, i32 0
  %10 = load %struct.backing_dev_info*, %struct.backing_dev_info** %9, align 8
  store %struct.backing_dev_info* %10, %struct.backing_dev_info** %5, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32, i32* @BDI_writeback_running, align 4
  %12 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %13 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %12, i32 0, i32 0
  %14 = load %struct.backing_dev_info*, %struct.backing_dev_info** %13, align 8
  %15 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %11, i32* %15)
  br label %17

17:                                               ; preds = %50, %2
  %18 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %19 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %20 = call %struct.wb_writeback_work* @get_next_work_item(%struct.backing_dev_info* %18, %struct.bdi_writeback* %19)
  store %struct.wb_writeback_work* %20, %struct.wb_writeback_work** %6, align 8
  %21 = icmp ne %struct.wb_writeback_work* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @WB_SYNC_ALL, align 4
  %27 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %6, align 8
  %28 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %31 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %6, align 8
  %32 = call i32 @trace_writeback_exec(%struct.backing_dev_info* %30, %struct.wb_writeback_work* %31)
  %33 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %34 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %6, align 8
  %35 = call i64 @wb_writeback(%struct.bdi_writeback* %33, %struct.wb_writeback_work* %34)
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %6, align 8
  %39 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %6, align 8
  %44 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @complete(i64 %45)
  br label %50

47:                                               ; preds = %29
  %48 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %6, align 8
  %49 = call i32 @kfree(%struct.wb_writeback_work* %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %17

51:                                               ; preds = %17
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @trace_mm_background_writeout(i64 %52)
  %54 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %55 = call i64 @wb_check_old_data_flush(%struct.bdi_writeback* %54)
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load i32, i32* @BDI_writeback_running, align 4
  %59 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %60 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %59, i32 0, i32 0
  %61 = load %struct.backing_dev_info*, %struct.backing_dev_info** %60, align 8
  %62 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %61, i32 0, i32 0
  %63 = call i32 @clear_bit(i32 %58, i32* %62)
  %64 = load i64, i64* %7, align 8
  ret i64 %64
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.wb_writeback_work* @get_next_work_item(%struct.backing_dev_info*, %struct.bdi_writeback*) #1

declare dso_local i32 @trace_writeback_exec(%struct.backing_dev_info*, %struct.wb_writeback_work*) #1

declare dso_local i64 @wb_writeback(%struct.bdi_writeback*, %struct.wb_writeback_work*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @kfree(%struct.wb_writeback_work*) #1

declare dso_local i32 @trace_mm_background_writeout(i64) #1

declare dso_local i64 @wb_check_old_data_flush(%struct.bdi_writeback*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
