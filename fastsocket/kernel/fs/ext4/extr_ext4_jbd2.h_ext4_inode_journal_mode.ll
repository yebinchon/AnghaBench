; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ext4_jbd2.h_ext4_inode_journal_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ext4_jbd2.h_ext4_inode_journal_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }

@EXT4_INODE_WRITEBACK_DATA_MODE = common dso_local global i32 0, align 4
@DATA_FLAGS = common dso_local global i32 0, align 4
@EXT4_MOUNT_JOURNAL_DATA = common dso_local global i64 0, align 8
@EXT4_INODE_JOURNAL_DATA = common dso_local global i32 0, align 4
@DELALLOC = common dso_local global i32 0, align 4
@EXT4_INODE_JOURNAL_DATA_MODE = common dso_local global i32 0, align 4
@EXT4_MOUNT_ORDERED_DATA = common dso_local global i64 0, align 8
@EXT4_INODE_ORDER_DATA_MODE = common dso_local global i32 0, align 4
@EXT4_MOUNT_WRITEBACK_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ext4_inode_journal_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_inode_journal_mode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %4 = load %struct.inode*, %struct.inode** %3, align 8
  %5 = call i32* @EXT4_JOURNAL(%struct.inode* %4)
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EXT4_INODE_WRITEBACK_DATA_MODE, align 4
  store i32 %8, i32* %2, align 4
  br label %59

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @S_ISREG(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DATA_FLAGS, align 4
  %20 = call i64 @test_opt(i32 %18, i32 %19)
  %21 = load i64, i64* @EXT4_MOUNT_JOURNAL_DATA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %15
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load i32, i32* @EXT4_INODE_JOURNAL_DATA, align 4
  %26 = call i64 @ext4_test_inode_flag(%struct.inode* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DELALLOC, align 4
  %33 = call i64 @test_opt(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28, %15, %9
  %36 = load i32, i32* @EXT4_INODE_JOURNAL_DATA_MODE, align 4
  store i32 %36, i32* %2, align 4
  br label %59

37:                                               ; preds = %28, %23
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DATA_FLAGS, align 4
  %42 = call i64 @test_opt(i32 %40, i32 %41)
  %43 = load i64, i64* @EXT4_MOUNT_ORDERED_DATA, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @EXT4_INODE_ORDER_DATA_MODE, align 4
  store i32 %46, i32* %2, align 4
  br label %59

47:                                               ; preds = %37
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DATA_FLAGS, align 4
  %52 = call i64 @test_opt(i32 %50, i32 %51)
  %53 = load i64, i64* @EXT4_MOUNT_WRITEBACK_DATA, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @EXT4_INODE_WRITEBACK_DATA_MODE, align 4
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %47
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %7, %35, %45, %55, %57
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32* @EXT4_JOURNAL(%struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
