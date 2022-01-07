; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.bfs_dirent = type { i64, i32 }
%struct.bfs_sb_info = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BFS_DIRENT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Bad f_pos=%08lx for %s:%08lx\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@BFS_BSIZE = common dso_local global i32 0, align 4
@BFS_BSIZE_BITS = common dso_local global i32 0, align 4
@BFS_NAMELEN = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64 (i8*, i32, i32, i32, i32, i32)*)* @bfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_readdir(%struct.file* %0, i8* %1, i64 (i8*, i32, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i8*, i32, i32, i32, i32, i32)*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.bfs_dirent*, align 8
  %11 = alloca %struct.bfs_sb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 (i8*, i32, i32, i32, i32, i32)* %2, i64 (i8*, i32, i32, i32, i32, i32)** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = call %struct.bfs_sb_info* @BFS_SB(%struct.TYPE_8__* %23)
  store %struct.bfs_sb_info* %24, %struct.bfs_sb_info** %11, align 8
  %25 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %11, align 8
  %26 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BFS_DIRENT_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %3
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %44, i32 %47)
  %49 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %11, align 8
  %50 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* @EBADF, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %167

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %160, %87, %54
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %163

63:                                               ; preds = %55
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BFS_BSIZE, align 4
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %66, %68
  store i32 %69, i32* %12, align 4
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = call %struct.TYPE_9__* @BFS_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BFS_BSIZE_BITS, align 4
  %78 = ashr i32 %76, %77
  %79 = add nsw i32 %73, %78
  store i32 %79, i32* %13, align 4
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call %struct.buffer_head* @sb_bread(%struct.TYPE_8__* %82, i32 %83)
  store %struct.buffer_head* %84, %struct.buffer_head** %9, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %86 = icmp ne %struct.buffer_head* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %63
  %88 = load i32, i32* @BFS_BSIZE, align 4
  %89 = load i32, i32* %12, align 4
  %90 = sub i32 %88, %89
  %91 = load %struct.file*, %struct.file** %5, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %55

95:                                               ; preds = %63
  br label %96

96:                                               ; preds = %158, %95
  %97 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = inttoptr i64 %102 to %struct.bfs_dirent*
  store %struct.bfs_dirent* %103, %struct.bfs_dirent** %10, align 8
  %104 = load %struct.bfs_dirent*, %struct.bfs_dirent** %10, align 8
  %105 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %96
  %109 = load %struct.bfs_dirent*, %struct.bfs_dirent** %10, align 8
  %110 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BFS_NAMELEN, align 4
  %113 = call i32 @strnlen(i32 %111, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i64 (i8*, i32, i32, i32, i32, i32)*, i64 (i8*, i32, i32, i32, i32, i32)** %7, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load %struct.bfs_dirent*, %struct.bfs_dirent** %10, align 8
  %117 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.file*, %struct.file** %5, align 8
  %121 = getelementptr inbounds %struct.file, %struct.file* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.bfs_dirent*, %struct.bfs_dirent** %10, align 8
  %124 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @le16_to_cpu(i64 %125)
  %127 = load i32, i32* @DT_UNKNOWN, align 4
  %128 = call i64 %114(i8* %115, i32 %118, i32 %119, i32 %122, i32 %126, i32 %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %108
  %131 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %132 = call i32 @brelse(%struct.buffer_head* %131)
  %133 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %11, align 8
  %134 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  store i32 0, i32* %4, align 4
  br label %167

136:                                              ; preds = %108
  br label %137

137:                                              ; preds = %136, %96
  %138 = load i32, i32* @BFS_DIRENT_SIZE, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add i32 %139, %138
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* @BFS_DIRENT_SIZE, align 4
  %142 = load %struct.file*, %struct.file** %5, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %137
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @BFS_BSIZE, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = load %struct.file*, %struct.file** %5, align 8
  %152 = getelementptr inbounds %struct.file, %struct.file* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.inode*, %struct.inode** %8, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br label %158

158:                                              ; preds = %150, %146
  %159 = phi i1 [ false, %146 ], [ %157, %150 ]
  br i1 %159, label %96, label %160

160:                                              ; preds = %158
  %161 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %162 = call i32 @brelse(%struct.buffer_head* %161)
  br label %55

163:                                              ; preds = %55
  %164 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %11, align 8
  %165 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %164, i32 0, i32 0
  %166 = call i32 @mutex_unlock(i32* %165)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %163, %130, %35
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @printf(i8*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_9__* @BFS_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
