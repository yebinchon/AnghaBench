; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32 }
%struct.dentry = type { %struct.inode* }
%struct.TYPE_8__ = type { i32 }

@EXT3_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EXT3_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i64 0, align 8
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ext3_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EXT3_LINK_MAX, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EMLINK, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %97

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %97

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %94, %31
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @EXT3_DATA_TRANS_BLOCKS(i32 %36)
  %38 = load i64, i64* @EXT3_INDEX_EXTRA_TRANS_BLOCKS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call %struct.TYPE_8__* @ext3_journal_start(%struct.inode* %33, i64 %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = call i64 @IS_ERR(%struct.TYPE_8__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.TYPE_8__* %45)
  store i32 %46, i32* %4, align 4
  br label %97

47:                                               ; preds = %32
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i64 @IS_DIRSYNC(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = call i32 @inc_nlink(%struct.inode* %58)
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 2
  %62 = call i32 @atomic_inc(i32* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = call i32 @ext3_add_entry(%struct.TYPE_8__* %63, %struct.dentry* %64, %struct.inode* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %54
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = call i32 @ext3_mark_inode_dirty(%struct.TYPE_8__* %70, %struct.inode* %71)
  %73 = load %struct.dentry*, %struct.dentry** %7, align 8
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = call i32 @d_instantiate(%struct.dentry* %73, %struct.inode* %74)
  br label %81

76:                                               ; preds = %54
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = call i32 @drop_nlink(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = call i32 @iput(%struct.inode* %79)
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = call i32 @ext3_journal_stop(%struct.TYPE_8__* %82)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @ENOSPC, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @ext3_should_retry_alloc(i32 %91, i32* %11)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %32

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %44, %28, %20
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_8__* @ext3_journal_start(%struct.inode*, i64) #1

declare dso_local i64 @EXT3_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ext3_add_entry(%struct.TYPE_8__*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext3_mark_inode_dirty(%struct.TYPE_8__*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(%struct.TYPE_8__*) #1

declare dso_local i64 @ext3_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
