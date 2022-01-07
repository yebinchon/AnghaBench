; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_change_inode_journal_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_change_inode_journal_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@EXT4_INODE_JOURNAL_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_change_inode_journal_flag(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32* @EXT4_JOURNAL(%struct.inode* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @is_journal_aborted(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EROFS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %14
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @jbd2_journal_lock_updates(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @jbd2_journal_flush(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load i32, i32* @EXT4_INODE_JOURNAL_DATA, align 4
  %31 = call i32 @ext4_set_inode_flag(%struct.inode* %29, i32 %30)
  br label %36

32:                                               ; preds = %21
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = load i32, i32* @EXT4_INODE_JOURNAL_DATA, align 4
  %35 = call i32 @ext4_clear_inode_flag(%struct.inode* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @ext4_set_aops(%struct.inode* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @jbd2_journal_unlock_updates(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call i32* @ext4_journal_start(%struct.inode* %41, i32 1)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @IS_ERR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @PTR_ERR(i32* %47)
  store i32 %48, i32* %3, align 4
  br label %63

49:                                               ; preds = %36
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call i32 @ext4_mark_inode_dirty(i32* %50, %struct.inode* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @ext4_handle_sync(i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @ext4_journal_stop(i32* %55)
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ext4_std_error(i32 %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %49, %46, %18, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32* @EXT4_JOURNAL(%struct.inode*) #1

declare dso_local i64 @is_journal_aborted(i32*) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32*) #1

declare dso_local i32 @jbd2_journal_flush(i32*) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_set_aops(%struct.inode*) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
