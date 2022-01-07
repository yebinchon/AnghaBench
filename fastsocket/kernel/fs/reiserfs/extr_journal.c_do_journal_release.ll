; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_do_journal_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_do_journal_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@FLUSH_ALL = common dso_local global i32 0, align 4
@reiserfs_mounted_fs_count = common dso_local global i32 0, align 4
@commit_wq = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_transaction_handle*, %struct.super_block*, i32)* @do_journal_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_journal_release(%struct.reiserfs_transaction_handle* %0, %struct.super_block* %1, i32 %2) #0 {
  %4 = alloca %struct.reiserfs_transaction_handle*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_transaction_handle, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.reiserfs_journal*, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %10)
  store %struct.reiserfs_journal* %11, %struct.reiserfs_journal** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %3
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MS_RDONLY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %14
  %22 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %23 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = load i32, i32* @FLUSH_ALL, align 4
  %32 = call i32 @do_journal_end(%struct.reiserfs_transaction_handle* %29, %struct.super_block* %30, i32 10, i32 %31)
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = call i32 @journal_join(%struct.reiserfs_transaction_handle* %7, %struct.super_block* %33, i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %21
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %38)
  %40 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %37, i32 %39, i32 1)
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %42)
  %44 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %7, %struct.super_block* %41, i32 %43)
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = load i32, i32* @FLUSH_ALL, align 4
  %47 = call i32 @do_journal_end(%struct.reiserfs_transaction_handle* %7, %struct.super_block* %45, i32 1, i32 %46)
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %36, %21
  br label %49

49:                                               ; preds = %48, %14, %3
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  %53 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %54 = call i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = call i32 @memset(%struct.reiserfs_transaction_handle* %7, i32 0, i32 4)
  %58 = load %struct.super_block*, %struct.super_block** %5, align 8
  %59 = call i32 @journal_join_abort(%struct.reiserfs_transaction_handle* %7, %struct.super_block* %58, i32 1)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.super_block*, %struct.super_block** %5, align 8
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %63)
  %65 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %62, i32 %64, i32 1)
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %67)
  %69 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %7, %struct.super_block* %66, i32 %68)
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = load i32, i32* @FLUSH_ALL, align 4
  %72 = call i32 @do_journal_end(%struct.reiserfs_transaction_handle* %7, %struct.super_block* %70, i32 1, i32 %71)
  br label %73

73:                                               ; preds = %61, %56
  br label %74

74:                                               ; preds = %73, %52, %49
  %75 = load i32, i32* @reiserfs_mounted_fs_count, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* @reiserfs_mounted_fs_count, align 4
  %77 = load %struct.super_block*, %struct.super_block** %5, align 8
  %78 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %77)
  %79 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %78, i32 0, i32 0
  %80 = call i32 @cancel_delayed_work(i32* %79)
  %81 = load i32*, i32** @commit_wq, align 8
  %82 = call i32 @flush_workqueue(i32* %81)
  %83 = load i32, i32* @reiserfs_mounted_fs_count, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = load i32*, i32** @commit_wq, align 8
  %87 = call i32 @destroy_workqueue(i32* %86)
  store i32* null, i32** @commit_wq, align 8
  br label %88

88:                                               ; preds = %85, %74
  %89 = load %struct.super_block*, %struct.super_block** %5, align 8
  %90 = call i32 @free_journal_ram(%struct.super_block* %89)
  ret i32 0
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @do_journal_end(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32, i32) #1

declare dso_local i32 @journal_join(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal*) #1

declare dso_local i32 @memset(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @journal_join_abort(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @free_journal_ram(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
