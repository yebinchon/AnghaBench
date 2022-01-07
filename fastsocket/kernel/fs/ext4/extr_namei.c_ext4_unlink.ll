; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i8*, i8*, i32 }
%struct.dentry = type { %struct.inode*, i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Deleting nonexistent file (%lu), %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ext4_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ext4_dir_entry_2*, align 8
  %10 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  %14 = call i32 @vfs_dq_init(%struct.inode* %13)
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @EXT4_DELETE_TRANS_BLOCKS(i32 %18)
  %20 = call i32* @ext4_journal_start(%struct.inode* %15, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @PTR_ERR(i32* %25)
  store i32 %26, i32* %3, align 4
  br label %122

27:                                               ; preds = %2
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i64 @IS_DIRSYNC(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @ext4_handle_sync(i32* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 1
  %40 = call %struct.buffer_head* @ext4_find_entry(%struct.inode* %37, i32* %39, %struct.ext4_dir_entry_2** %9)
  store %struct.buffer_head* %40, %struct.buffer_head** %8, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = icmp ne %struct.buffer_head* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %116

44:                                               ; preds = %34
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.inode*, %struct.inode** %46, align 8
  store %struct.inode* %47, %struct.inode** %7, align 8
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  %50 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %51 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le32_to_cpu(i32 %52)
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %116

59:                                               ; preds = %44
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ext4_warning(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %70, i32 %73)
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %64, %59
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %82 = call i32 @ext4_delete_entry(i32* %78, %struct.inode* %79, %struct.ext4_dir_entry_2* %80, %struct.buffer_head* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %116

86:                                               ; preds = %77
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call i8* @ext4_current_time(%struct.inode* %87)
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 2
  store i8* %88, i8** %92, align 8
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = call i32 @ext4_update_dx_flag(%struct.inode* %93)
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = call i32 @ext4_mark_inode_dirty(i32* %95, %struct.inode* %96)
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = call i32 @drop_nlink(%struct.inode* %98)
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %86
  %105 = load i32*, i32** %10, align 8
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = call i32 @ext4_orphan_add(i32* %105, %struct.inode* %106)
  br label %108

108:                                              ; preds = %104, %86
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = call i8* @ext4_current_time(%struct.inode* %109)
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = call i32 @ext4_mark_inode_dirty(i32* %113, %struct.inode* %114)
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %108, %85, %58, %43
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @ext4_journal_stop(i32* %117)
  %119 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %120 = call i32 @brelse(%struct.buffer_head* %119)
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %116, %24
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_DELETE_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local %struct.buffer_head* @ext4_find_entry(%struct.inode*, i32*, %struct.ext4_dir_entry_2**) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_warning(i32, i8*, i64, i32) #1

declare dso_local i32 @ext4_delete_entry(i32*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*) #1

declare dso_local i8* @ext4_current_time(%struct.inode*) #1

declare dso_local i32 @ext4_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
