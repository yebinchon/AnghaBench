; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_flush_old_journal_lists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_flush_old_journal_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.reiserfs_journal_list = type { i32, i32 }

@JOURNAL_MAX_TRANS_AGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @flush_old_journal_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_old_journal_lists(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_journal*, align 8
  %4 = alloca %struct.reiserfs_journal_list*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %7)
  store %struct.reiserfs_journal* %8, %struct.reiserfs_journal** %3, align 8
  %9 = call i32 (...) @get_seconds()
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %46, %1
  %11 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %3, align 8
  %12 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %11, i32 0, i32 0
  %13 = call i32 @list_empty(%struct.TYPE_2__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %3, align 8
  %18 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.list_head*, %struct.list_head** %19, align 8
  store %struct.list_head* %20, %struct.list_head** %5, align 8
  %21 = load %struct.list_head*, %struct.list_head** %5, align 8
  %22 = call %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head* %21)
  store %struct.reiserfs_journal_list* %22, %struct.reiserfs_journal_list** %4, align 8
  %23 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %24 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @JOURNAL_MAX_TRANS_AGE, align 4
  %28 = mul nsw i32 %27, 4
  %29 = sub nsw i32 %26, %28
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %16
  %32 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %33 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %32, i32 0, i32 1
  %34 = call i64 @atomic_read(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.super_block*, %struct.super_block** %2, align 8
  %38 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %39 = call i64 @test_transaction(%struct.super_block* %37, %struct.reiserfs_journal_list* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.super_block*, %struct.super_block** %2, align 8
  %43 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %44 = call i32 @flush_used_journal_lists(%struct.super_block* %42, %struct.reiserfs_journal_list* %43)
  br label %46

45:                                               ; preds = %36, %31, %16
  br label %47

46:                                               ; preds = %41
  br label %10

47:                                               ; preds = %45, %10
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_transaction(%struct.super_block*, %struct.reiserfs_journal_list*) #1

declare dso_local i32 @flush_used_journal_lists(%struct.super_block*, %struct.reiserfs_journal_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
