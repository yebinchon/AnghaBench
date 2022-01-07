; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_inode.c_bfs_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_inode.c_bfs_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block*, i32, i32, i32, i64, i32 }
%struct.super_block = type { i8* }
%struct.bfs_inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.bfs_sb_info = type { i64, i64, i32, %struct.buffer_head*, i32, i32, i32 }
%struct.bfs_inode_info = type { i64, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"ino=%08lx\0A\00", align 1
@BFS_ROOT_INO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid ino=%08lx\0A\00", align 1
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@BFS_INODES_PER_BLOCK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to read inode %s:%08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"delete_inode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @bfs_delete_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfs_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bfs_inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.bfs_sb_info*, align 8
  %10 = alloca %struct.bfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %8, align 8
  %17 = load %struct.super_block*, %struct.super_block** %8, align 8
  %18 = call %struct.bfs_sb_info* @BFS_SB(%struct.super_block* %17)
  store %struct.bfs_sb_info* %18, %struct.bfs_sb_info** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call %struct.bfs_inode_info* @BFS_I(%struct.inode* %19)
  store %struct.bfs_inode_info* %20, %struct.bfs_inode_info** %10, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 6
  %25 = call i32 @truncate_inode_pages(i32* %24, i32 0)
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @BFS_ROOT_INO, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %32 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %1
  %36 = load i64, i64* %3, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %158

38:                                               ; preds = %29
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  store i32 %41, i32* %45, align 4
  %46 = load %struct.inode*, %struct.inode** %2, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 4
  store i32 %41, i32* %47, align 8
  %48 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %49 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %48, i32 0, i32 2
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = call i32 @mark_inode_dirty(%struct.inode* %51)
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @BFS_ROOT_INO, align 8
  %55 = sub i64 %53, %54
  %56 = load i64, i64* @BFS_INODES_PER_BLOCK, align 8
  %57 = udiv i64 %55, %56
  %58 = add i64 %57, 1
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load %struct.super_block*, %struct.super_block** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call %struct.buffer_head* @sb_bread(%struct.super_block* %60, i32 %61)
  store %struct.buffer_head* %62, %struct.buffer_head** %5, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %64 = icmp ne %struct.buffer_head* %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %38
  %66 = load %struct.inode*, %struct.inode** %2, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load %struct.super_block*, %struct.super_block** %67, align 8
  %69 = getelementptr inbounds %struct.super_block, %struct.super_block* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %3, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %70, i64 %71)
  %73 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %74 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  br label %158

76:                                               ; preds = %38
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @BFS_ROOT_INO, align 8
  %79 = sub i64 %77, %78
  %80 = load i64, i64* @BFS_INODES_PER_BLOCK, align 8
  %81 = urem i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %7, align 4
  %83 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.bfs_inode*
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %86, i64 %88
  store %struct.bfs_inode* %89, %struct.bfs_inode** %4, align 8
  %90 = load %struct.bfs_inode*, %struct.bfs_inode** %4, align 8
  %91 = bitcast %struct.bfs_inode* %90 to i8*
  %92 = call i32 @memset(i8* %91, i32 0, i32 4)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %94 = call i32 @mark_buffer_dirty(%struct.buffer_head* %93)
  %95 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %96 = call i32 @brelse(%struct.buffer_head* %95)
  %97 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %10, align 8
  %98 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %133

101:                                              ; preds = %76
  %102 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %10, align 8
  %103 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %10, align 8
  %108 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  %111 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %10, align 8
  %112 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  %115 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %116 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 8
  br label %121

121:                                              ; preds = %106, %101
  %122 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %123 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load i64, i64* %3, align 8
  %127 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %128 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @clear_bit(i64 %126, i32 %129)
  %131 = load %struct.super_block*, %struct.super_block** %8, align 8
  %132 = call i32 @dump_imap(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.super_block* %131)
  br label %133

133:                                              ; preds = %121, %76
  %134 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %135 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %10, align 8
  %138 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %133
  %142 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %10, align 8
  %143 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, 1
  %146 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %147 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %149 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %148, i32 0, i32 3
  %150 = load %struct.buffer_head*, %struct.buffer_head** %149, align 8
  %151 = call i32 @mark_buffer_dirty(%struct.buffer_head* %150)
  br label %152

152:                                              ; preds = %141, %133
  %153 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %154 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %153, i32 0, i32 2
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load %struct.inode*, %struct.inode** %2, align 8
  %157 = call i32 @clear_inode(%struct.inode* %156)
  br label %158

158:                                              ; preds = %152, %65, %35
  ret void
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.super_block*) #1

declare dso_local %struct.bfs_inode_info* @BFS_I(%struct.inode*) #1

declare dso_local i32 @dprintf(i8*, i64) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @dump_imap(i8*, %struct.super_block*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
