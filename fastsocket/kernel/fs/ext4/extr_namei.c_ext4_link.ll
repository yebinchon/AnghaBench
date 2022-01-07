; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32 }
%struct.dentry = type { %struct.inode* }

@EXT4_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EXT4_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ext4_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32*, align 8
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
  %18 = load i64, i64* @EXT4_LINK_MAX, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EMLINK, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %99

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
  br label %99

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %96, %31
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @EXT4_DATA_TRANS_BLOCKS(i32 %36)
  %38 = load i64, i64* @EXT4_INDEX_EXTRA_TRANS_BLOCKS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32* @ext4_journal_start(%struct.inode* %33, i64 %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @IS_ERR(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @PTR_ERR(i32* %45)
  store i32 %46, i32* %4, align 4
  br label %99

47:                                               ; preds = %32
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i64 @IS_DIRSYNC(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @ext4_handle_sync(i32* %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = call i32 @ext4_current_time(%struct.inode* %55)
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = call i32 @ext4_inc_count(i32* %59, %struct.inode* %60)
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  %64 = call i32 @atomic_inc(i32* %63)
  %65 = load i32*, i32** %8, align 8
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = call i32 @ext4_add_entry(i32* %65, %struct.dentry* %66, %struct.inode* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %54
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.inode*, %struct.inode** %9, align 8
  %74 = call i32 @ext4_mark_inode_dirty(i32* %72, %struct.inode* %73)
  %75 = load %struct.dentry*, %struct.dentry** %7, align 8
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = call i32 @d_instantiate(%struct.dentry* %75, %struct.inode* %76)
  br label %83

78:                                               ; preds = %54
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = call i32 @drop_nlink(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %9, align 8
  %82 = call i32 @iput(%struct.inode* %81)
  br label %83

83:                                               ; preds = %78, %71
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @ext4_journal_stop(i32* %84)
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @ENOSPC, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @ext4_should_retry_alloc(i32 %93, i32* %11)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %32

97:                                               ; preds = %90, %83
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %44, %28, %20
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32* @ext4_journal_start(%struct.inode*, i64) #1

declare dso_local i64 @EXT4_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @ext4_current_time(%struct.inode*) #1

declare dso_local i32 @ext4_inc_count(i32*, %struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ext4_add_entry(i32*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
