; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i64, i32, i32, i32 }
%struct.dentry = type { %struct.inode*, i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"empty directory has too many links (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ext4_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
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
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 6
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
  br label %124

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 1
  %33 = call %struct.buffer_head* @ext4_find_entry(%struct.inode* %30, i32* %32, %struct.ext4_dir_entry_2** %9)
  store %struct.buffer_head* %33, %struct.buffer_head** %8, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = icmp ne %struct.buffer_head* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %118

37:                                               ; preds = %27
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call i64 @IS_DIRSYNC(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @ext4_handle_sync(i32* %42)
  br label %44

44:                                               ; preds = %41, %37
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
  br label %118

59:                                               ; preds = %44
  %60 = load i32, i32* @ENOTEMPTY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call i32 @empty_dir(%struct.inode* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %118

66:                                               ; preds = %59
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = call i32 @ext4_delete_entry(i32* %67, %struct.inode* %68, %struct.ext4_dir_entry_2* %69, %struct.buffer_head* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %118

75:                                               ; preds = %66
  %76 = load %struct.inode*, %struct.inode** %7, align 8
  %77 = call i32 @EXT4_DIR_LINK_EMPTY(%struct.inode* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ext4_warning(i32 %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %79, %75
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = call i32 @clear_nlink(%struct.inode* %92)
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = call i32 @ext4_orphan_add(i32* %96, %struct.inode* %97)
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = call i32 @ext4_current_time(%struct.inode* %99)
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 2
  store i32 %100, i32* %104, align 4
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 2
  store i32 %100, i32* %106, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = call i32 @ext4_mark_inode_dirty(i32* %107, %struct.inode* %108)
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = call i32 @ext4_dec_count(i32* %110, %struct.inode* %111)
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = call i32 @ext4_update_dx_flag(%struct.inode* %113)
  %115 = load i32*, i32** %10, align 8
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = call i32 @ext4_mark_inode_dirty(i32* %115, %struct.inode* %116)
  br label %118

118:                                              ; preds = %87, %74, %65, %58, %36
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @ext4_journal_stop(i32* %119)
  %121 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %122 = call i32 @brelse(%struct.buffer_head* %121)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %118, %24
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_DELETE_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.buffer_head* @ext4_find_entry(%struct.inode*, i32*, %struct.ext4_dir_entry_2**) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @empty_dir(%struct.inode*) #1

declare dso_local i32 @ext4_delete_entry(i32*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*) #1

declare dso_local i32 @EXT4_DIR_LINK_EMPTY(%struct.inode*) #1

declare dso_local i32 @ext4_warning(i32, i8*, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_current_time(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_dec_count(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
