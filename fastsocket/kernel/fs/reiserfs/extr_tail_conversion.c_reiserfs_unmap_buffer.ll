; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_tail_conversion.c_reiserfs_unmap_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_tail_conversion.c_reiserfs_unmap_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32*, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.reiserfs_journal = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_unmap_buffer(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.reiserfs_journal*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %6 = call i32 @lock_buffer(%struct.buffer_head* %5)
  %7 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %8 = call i64 @buffer_journaled(%struct.buffer_head* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %12 = call i64 @buffer_journal_dirty(%struct.buffer_head* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = call i32 (...) @BUG()
  br label %16

16:                                               ; preds = %14, %10
  %17 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %18 = call i32 @clear_buffer_dirty(%struct.buffer_head* %17)
  %19 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 1
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %23, %16
  %29 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.inode*, %struct.inode** %39, align 8
  store %struct.inode* %40, %struct.inode** %3, align 8
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.reiserfs_journal* @SB_JOURNAL(i32 %43)
  store %struct.reiserfs_journal* %44, %struct.reiserfs_journal** %4, align 8
  %45 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %46 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 1
  %50 = call i32 @list_del_init(i32* %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %52 = call i32 @reiserfs_free_jh(%struct.buffer_head* %51)
  %53 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %54 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  br label %56

56:                                               ; preds = %33, %28, %23
  %57 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %58 = call i32 @clear_buffer_mapped(%struct.buffer_head* %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %60 = call i32 @clear_buffer_req(%struct.buffer_head* %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %62 = call i32 @clear_buffer_new(%struct.buffer_head* %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %66 = call i32 @unlock_buffer(%struct.buffer_head* %65)
  ret void
}

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_journaled(%struct.buffer_head*) #1

declare dso_local i64 @buffer_journal_dirty(%struct.buffer_head*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @reiserfs_free_jh(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
