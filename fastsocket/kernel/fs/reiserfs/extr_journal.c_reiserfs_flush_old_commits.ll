; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_reiserfs_flush_old_commits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_reiserfs_flush_old_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_journal = type { i64, i64, i64, i32, i32 }

@COMMIT_NOW = common dso_local global i32 0, align 4
@WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_flush_old_commits(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.reiserfs_transaction_handle, align 4
  %6 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %7)
  store %struct.reiserfs_journal* %8, %struct.reiserfs_journal** %6, align 8
  %9 = call i64 (...) @get_seconds()
  store i64 %9, i64* %4, align 8
  %10 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %11 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %10, i32 0, i32 4
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %17 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %16, i32 0, i32 3
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  %21 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %22 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %27 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %33 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %37 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %30
  %41 = load %struct.super_block*, %struct.super_block** %3, align 8
  %42 = call i32 @journal_join(%struct.reiserfs_transaction_handle* %5, %struct.super_block* %41, i32 1)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %40
  %45 = load %struct.super_block*, %struct.super_block** %3, align 8
  %46 = load %struct.super_block*, %struct.super_block** %3, align 8
  %47 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %46)
  %48 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %45, i32 %47, i32 1)
  %49 = load %struct.super_block*, %struct.super_block** %3, align 8
  %50 = load %struct.super_block*, %struct.super_block** %3, align 8
  %51 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %50)
  %52 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %5, %struct.super_block* %49, i32 %51)
  %53 = load %struct.super_block*, %struct.super_block** %3, align 8
  %54 = load i32, i32* @COMMIT_NOW, align 4
  %55 = load i32, i32* @WAIT, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @do_journal_end(%struct.reiserfs_transaction_handle* %5, %struct.super_block* %53, i32 1, i32 %56)
  br label %58

58:                                               ; preds = %44, %40
  br label %59

59:                                               ; preds = %58, %30, %25, %20, %15
  %60 = load %struct.super_block*, %struct.super_block** %3, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @journal_join(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @do_journal_end(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
