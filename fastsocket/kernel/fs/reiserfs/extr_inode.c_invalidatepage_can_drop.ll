; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_invalidatepage_can_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_invalidatepage_can_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { %struct.reiserfs_jh* }
%struct.reiserfs_jh = type { %struct.reiserfs_journal_list* }
%struct.reiserfs_journal_list = type { i32 }
%struct.reiserfs_journal = type { i32, %struct.reiserfs_journal_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @invalidatepage_can_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidatepage_can_drop(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_journal*, align 8
  %7 = alloca %struct.reiserfs_journal_list*, align 8
  %8 = alloca %struct.reiserfs_jh*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.reiserfs_journal* @SB_JOURNAL(i32 %11)
  store %struct.reiserfs_journal* %12, %struct.reiserfs_journal** %6, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %14 = call i32 @lock_buffer(%struct.buffer_head* %13)
  %15 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %16 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %19 = call i32 @buffer_mapped(%struct.buffer_head* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %64

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i64 @reiserfs_file_data_log(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %28 = call i64 @buffer_journaled(%struct.buffer_head* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %32 = call i64 @buffer_journal_dirty(%struct.buffer_head* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %30
  br label %63

36:                                               ; preds = %22
  %37 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %38 = call i64 @buffer_dirty(%struct.buffer_head* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 0
  %43 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %42, align 8
  store %struct.reiserfs_jh* %43, %struct.reiserfs_jh** %8, align 8
  %44 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %8, align 8
  %45 = icmp ne %struct.reiserfs_jh* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %8, align 8
  %48 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %47, i32 0, i32 0
  %49 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %48, align 8
  store %struct.reiserfs_journal_list* %49, %struct.reiserfs_journal_list** %7, align 8
  %50 = icmp ne %struct.reiserfs_journal_list* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.reiserfs_journal* @SB_JOURNAL(i32 %55)
  %57 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %56, i32 0, i32 1
  %58 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %57, align 8
  %59 = icmp ne %struct.reiserfs_journal_list* %52, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %51, %46, %40
  br label %62

62:                                               ; preds = %61, %36
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %21
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 0
  %70 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %69, align 8
  %71 = icmp ne %struct.reiserfs_jh* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %74 = call i32 @reiserfs_free_jh(%struct.buffer_head* %73)
  br label %75

75:                                               ; preds = %72, %67, %64
  %76 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %77 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %80 = call i32 @unlock_buffer(%struct.buffer_head* %79)
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i64 @reiserfs_file_data_log(%struct.inode*) #1

declare dso_local i64 @buffer_journaled(%struct.buffer_head*) #1

declare dso_local i64 @buffer_journal_dirty(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_free_jh(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
