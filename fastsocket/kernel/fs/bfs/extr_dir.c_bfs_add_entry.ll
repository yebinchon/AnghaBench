; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i8*, i32 }
%struct.buffer_head = type { i64 }
%struct.bfs_dirent = type { i8*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"name=%s, namelen=%d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BFS_NAMELEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@BFS_BSIZE = common dso_local global i32 0, align 4
@BFS_DIRENT_SIZE = common dso_local global i64 0, align 8
@CURRENT_TIME_SEC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, i32)* @bfs_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_add_entry(%struct.inode* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.bfs_dirent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %159

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @BFS_NAMELEN, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ENAMETOOLONG, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %159

33:                                               ; preds = %26
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call %struct.TYPE_2__* @BFS_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call %struct.TYPE_2__* @BFS_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %153, %33
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %156

47:                                               ; preds = %43
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call %struct.buffer_head* @sb_bread(i32 %50, i32 %51)
  store %struct.buffer_head* %52, %struct.buffer_head** %10, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %54 = icmp ne %struct.buffer_head* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOSPC, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %159

58:                                               ; preds = %47
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %144, %58
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @BFS_BSIZE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %150

63:                                               ; preds = %59
  %64 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = inttoptr i64 %69 to %struct.bfs_dirent*
  store %struct.bfs_dirent* %70, %struct.bfs_dirent** %11, align 8
  %71 = load %struct.bfs_dirent*, %struct.bfs_dirent** %11, align 8
  %72 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %143, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* @BFS_BSIZE, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %75
  %89 = load i64, i64* @BFS_DIRENT_SIZE, align 8
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 8
  %96 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %88, %75
  %100 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = call i32 @mark_inode_dirty(%struct.inode* %103)
  %105 = load i32, i32* %9, align 4
  %106 = call i64 @cpu_to_le16(i32 %105)
  %107 = load %struct.bfs_dirent*, %struct.bfs_dirent** %11, align 8
  %108 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  store i32 0, i32* %17, align 4
  br label %109

109:                                              ; preds = %134, %99
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* @BFS_NAMELEN, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %109
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  br label %125

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %117
  %126 = phi i32 [ %123, %117 ], [ 0, %124 ]
  %127 = trunc i32 %126 to i8
  %128 = load %struct.bfs_dirent*, %struct.bfs_dirent** %11, align 8
  %129 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8 %127, i8* %133, align 1
  br label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %17, align 4
  br label %109

137:                                              ; preds = %109
  %138 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %138, %struct.inode* %139)
  %141 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %142 = call i32 @brelse(%struct.buffer_head* %141)
  store i32 0, i32* %5, align 4
  br label %159

143:                                              ; preds = %63
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* @BFS_DIRENT_SIZE, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %15, align 4
  br label %59

150:                                              ; preds = %59
  %151 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %152 = call i32 @brelse(%struct.buffer_head* %151)
  br label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %43

156:                                              ; preds = %43
  %157 = load i32, i32* @ENOSPC, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %156, %137, %55, %30, %23
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @dprintf(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @BFS_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
