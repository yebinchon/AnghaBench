; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_reiserfs_prepare_for_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_reiserfs_prepare_for_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }

@journal = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.super_block*, %struct.super_block** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @journal, i32 0, i32 0), align 4
  %10 = call i32 @PROC_INFO_INC(%struct.super_block* %8, i32 %9)
  %11 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %12 = call i32 @trylock_buffer(%struct.buffer_head* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %39

18:                                               ; preds = %14
  %19 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %20 = call i32 @lock_buffer(%struct.buffer_head* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %23 = call i32 @set_buffer_journal_prepared(%struct.buffer_head* %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %25 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %29 = call i64 @buffer_journal_dirty(%struct.buffer_head* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %33 = call i32 @clear_buffer_journal_test(%struct.buffer_head* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %35 = call i32 @set_buffer_journal_restore_dirty(%struct.buffer_head* %34)
  br label %36

36:                                               ; preds = %31, %27, %21
  %37 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %38 = call i32 @unlock_buffer(%struct.buffer_head* %37)
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %17
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @PROC_INFO_INC(%struct.super_block*, i32) #1

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_journal_prepared(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @buffer_journal_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_journal_test(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_journal_restore_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
