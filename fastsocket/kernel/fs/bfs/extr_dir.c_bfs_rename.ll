; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i8*, i8*, i32, i32 }
%struct.dentry = type { %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.bfs_dirent = type { i64 }
%struct.bfs_sb_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @bfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.bfs_dirent*, align 8
  %15 = alloca %struct.bfs_dirent*, align 8
  %16 = alloca %struct.bfs_sb_info*, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %17, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %10, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISDIR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %137

31:                                               ; preds = %4
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.bfs_sb_info* @BFS_SB(i32 %34)
  store %struct.bfs_sb_info* %35, %struct.bfs_sb_info** %16, align 8
  %36 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %16, align 8
  %37 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.buffer_head* @bfs_find_entry(%struct.inode* %39, i32 %43, i32 %47, %struct.bfs_dirent** %14)
  store %struct.buffer_head* %48, %struct.buffer_head** %12, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %50 = icmp ne %struct.buffer_head* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %31
  %52 = load %struct.bfs_dirent*, %struct.bfs_dirent** %14, align 8
  %53 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @le16_to_cpu(i64 %54)
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51, %31
  br label %128

61:                                               ; preds = %51
  %62 = load i32, i32* @EPERM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %17, align 4
  %64 = load %struct.dentry*, %struct.dentry** %9, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 1
  %66 = load %struct.inode*, %struct.inode** %65, align 8
  store %struct.inode* %66, %struct.inode** %11, align 8
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = load %struct.dentry*, %struct.dentry** %9, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dentry*, %struct.dentry** %9, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.buffer_head* @bfs_find_entry(%struct.inode* %67, i32 %71, i32 %75, %struct.bfs_dirent** %15)
  store %struct.buffer_head* %76, %struct.buffer_head** %13, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %78 = icmp ne %struct.buffer_head* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %61
  %80 = load %struct.inode*, %struct.inode** %11, align 8
  %81 = icmp ne %struct.inode* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %84 = call i32 @brelse(%struct.buffer_head* %83)
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  br label %85

85:                                               ; preds = %82, %79, %61
  %86 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %87 = icmp ne %struct.buffer_head* %86, null
  br i1 %87, label %106, label %88

88:                                               ; preds = %85
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = load %struct.dentry*, %struct.dentry** %9, align 8
  %91 = getelementptr inbounds %struct.dentry, %struct.dentry* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dentry*, %struct.dentry** %9, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @bfs_add_entry(%struct.inode* %89, i32 %93, i32 %97, i64 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %88
  br label %128

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105, %85
  %107 = load %struct.bfs_dirent*, %struct.bfs_dirent** %14, align 8
  %108 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %110 = load %struct.inode*, %struct.inode** %6, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  store i8* %109, i8** %113, align 8
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = call i32 @mark_inode_dirty(%struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %11, align 8
  %117 = icmp ne %struct.inode* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %106
  %119 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %120 = load %struct.inode*, %struct.inode** %11, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.inode*, %struct.inode** %11, align 8
  %123 = call i32 @inode_dec_link_count(%struct.inode* %122)
  br label %124

124:                                              ; preds = %118, %106
  %125 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %125, %struct.inode* %126)
  store i32 0, i32* %17, align 4
  br label %128

128:                                              ; preds = %124, %104, %60
  %129 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %16, align 8
  %130 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %133 = call i32 @brelse(%struct.buffer_head* %132)
  %134 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %135 = call i32 @brelse(%struct.buffer_head* %134)
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %128, %28
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.bfs_sb_info* @BFS_SB(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.buffer_head* @bfs_find_entry(%struct.inode*, i32, i32, %struct.bfs_dirent**) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @bfs_add_entry(%struct.inode*, i32, i32, i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
