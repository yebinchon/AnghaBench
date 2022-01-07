; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_reiserfs_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_reiserfs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32*, i64 }
%struct.reiserfs_transaction_handle = type { i64 }
%struct.TYPE_2__ = type { i64, i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"green-2005\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"reserved blocks left %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @reiserfs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reiserfs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_transaction_handle, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = call i32 (...) @lock_kernel()
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call i32 @reiserfs_write_super(%struct.super_block* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MS_RDONLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %13
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %3, %struct.super_block* %21, i32 10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = load %struct.super_block*, %struct.super_block** %2, align 8
  %26 = load %struct.super_block*, %struct.super_block** %2, align 8
  %27 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %26)
  %28 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %25, i32 %27, i32 1)
  %29 = load %struct.super_block*, %struct.super_block** %2, align 8
  %30 = call i32 @SB_DISK_SUPER_BLOCK(%struct.super_block* %29)
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @set_sb_umount_state(i32 %30, i32 %34)
  %36 = load %struct.super_block*, %struct.super_block** %2, align 8
  %37 = load %struct.super_block*, %struct.super_block** %2, align 8
  %38 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %37)
  %39 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %3, %struct.super_block* %36, i32 %38)
  br label %40

40:                                               ; preds = %24, %20
  br label %41

41:                                               ; preds = %40, %13
  %42 = load %struct.super_block*, %struct.super_block** %2, align 8
  %43 = call i32 @journal_release(%struct.reiserfs_transaction_handle* %3, %struct.super_block* %42)
  %44 = load %struct.super_block*, %struct.super_block** %2, align 8
  %45 = call i32 @reiserfs_free_bitmap_cache(%struct.super_block* %44)
  %46 = load %struct.super_block*, %struct.super_block** %2, align 8
  %47 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %46)
  %48 = call i32 @brelse(i32 %47)
  %49 = load %struct.super_block*, %struct.super_block** %2, align 8
  %50 = call i32 @print_statistics(%struct.super_block* %49)
  %51 = load %struct.super_block*, %struct.super_block** %2, align 8
  %52 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = load %struct.super_block*, %struct.super_block** %2, align 8
  %58 = load %struct.super_block*, %struct.super_block** %2, align 8
  %59 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @reiserfs_warning(%struct.super_block* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %56, %41
  %64 = load %struct.super_block*, %struct.super_block** %2, align 8
  %65 = call i32 @reiserfs_proc_info_done(%struct.super_block* %64)
  %66 = load %struct.super_block*, %struct.super_block** %2, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load %struct.super_block*, %struct.super_block** %2, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @reiserfs_write_super(%struct.super_block*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @set_sb_umount_state(i32, i32) #1

declare dso_local i32 @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @journal_release(%struct.reiserfs_transaction_handle*, %struct.super_block*) #1

declare dso_local i32 @reiserfs_free_bitmap_cache(%struct.super_block*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @print_statistics(%struct.super_block*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local i32 @reiserfs_proc_info_done(%struct.super_block*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
