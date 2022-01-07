; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_queue_log_writer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_queue_log_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i32, i32 }

@J_WRITERS_QUEUED = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @queue_log_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_log_writer(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %5)
  store %struct.reiserfs_journal* %6, %struct.reiserfs_journal** %4, align 8
  %7 = load i32, i32* @J_WRITERS_QUEUED, align 4
  %8 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %9 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %8, i32 0, i32 1
  %10 = call i32 @set_bit(i32 %7, i32* %9)
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @init_waitqueue_entry(i32* %3, i32 %11)
  %13 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %14 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %13, i32 0, i32 0
  %15 = call i32 @add_wait_queue(i32* %14, i32* %3)
  %16 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %17 = call i32 @set_current_state(i32 %16)
  %18 = load i32, i32* @J_WRITERS_QUEUED, align 4
  %19 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %20 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 (...) @schedule()
  br label %25

25:                                               ; preds = %23, %1
  %26 = load i32, i32* @TASK_RUNNING, align 4
  %27 = call i32 @__set_current_state(i32 %26)
  %28 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %29 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %28, i32 0, i32 0
  %30 = call i32 @remove_wait_queue(i32* %29, i32* %3)
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
