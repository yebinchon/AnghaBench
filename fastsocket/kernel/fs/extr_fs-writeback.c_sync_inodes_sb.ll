; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_sync_inodes_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_sync_inodes_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.wb_writeback_work = type { i32*, i32, i32, i32, %struct.super_block* }

@done = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sync_inodes_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.wb_writeback_work, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load i32, i32* @done, align 4
  %5 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %4)
  %6 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %3, i32 0, i32 0
  store i32* @done, i32** %6, align 8
  %7 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %3, i32 0, i32 1
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %3, i32 0, i32 2
  %9 = load i32, i32* @LONG_MAX, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %3, i32 0, i32 3
  %11 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %3, i32 0, i32 4
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  store %struct.super_block* %13, %struct.super_block** %12, align 8
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 1
  %16 = call i32 @rwsem_is_locked(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bdi_queue_work(i32 %23, %struct.wb_writeback_work* %3)
  %25 = call i32 @wait_for_completion(i32* @done)
  %26 = load %struct.super_block*, %struct.super_block** %2, align 8
  %27 = call i32 @wait_sb_inodes(%struct.super_block* %26)
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local i32 @bdi_queue_work(i32, %struct.wb_writeback_work*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @wait_sb_inodes(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
