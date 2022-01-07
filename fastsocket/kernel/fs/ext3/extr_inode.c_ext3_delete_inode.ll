; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext3_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 2
  %6 = call i32 @truncate_inode_pages(i32* %5, i32 0)
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call i64 @is_bad_inode(%struct.inode* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i32 @trace_ext3_delete_inode(%struct.inode* %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call %struct.TYPE_9__* @start_transaction(%struct.inode* %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %3, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i64 @IS_ERR(%struct.TYPE_9__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call i32 @ext3_orphan_del(%struct.TYPE_9__* null, %struct.inode* %20)
  br label %61

22:                                               ; preds = %11
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = call i64 @IS_SYNC(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = call i32 @ext3_truncate(%struct.inode* %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = call i32 @ext3_orphan_del(%struct.TYPE_9__* %40, %struct.inode* %41)
  %43 = call i32 (...) @get_seconds()
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call %struct.TYPE_10__* @EXT3_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = call i64 @ext3_mark_inode_dirty(%struct.TYPE_9__* %47, %struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load %struct.inode*, %struct.inode** %2, align 8
  %53 = call i32 @clear_inode(%struct.inode* %52)
  br label %58

54:                                               ; preds = %39
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = call i32 @ext3_free_inode(%struct.TYPE_9__* %55, %struct.inode* %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = call i32 @ext3_journal_stop(%struct.TYPE_9__* %59)
  br label %64

61:                                               ; preds = %19, %10
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  %63 = call i32 @clear_inode(%struct.inode* %62)
  br label %64

64:                                               ; preds = %61, %58
  ret void
}

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @trace_ext3_delete_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @start_transaction(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @ext3_orphan_del(%struct.TYPE_9__*, %struct.inode*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext3_truncate(%struct.inode*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local %struct.TYPE_10__* @EXT3_I(%struct.inode*) #1

declare dso_local i64 @ext3_mark_inode_dirty(%struct.TYPE_9__*, %struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @ext3_free_inode(%struct.TYPE_9__*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
