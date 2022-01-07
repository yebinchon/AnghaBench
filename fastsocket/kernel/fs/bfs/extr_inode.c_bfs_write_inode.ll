; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_inode.c_bfs_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_inode.c_bfs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i64, i64, i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i8* }
%struct.writeback_control = type { i64 }
%struct.bfs_sb_info = type { i32, i32 }
%struct.bfs_inode = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.buffer_head = type { i64 }
%struct.TYPE_11__ = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"ino=%08x\0A\00", align 1
@BFS_ROOT_INO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Bad inode number %s:%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BFS_INODES_PER_BLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to read inode %s:%08x\0A\00", align 1
@BFS_VDIR = common dso_local global i64 0, align 8
@BFS_VREG = common dso_local global i64 0, align 8
@BFS_BSIZE = common dso_local global i64 0, align 8
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.writeback_control*)* @bfs_write_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.bfs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bfs_inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = call %struct.bfs_sb_info* @BFS_SB(%struct.TYPE_10__* %16)
  store %struct.bfs_sb_info* %17, %struct.bfs_sb_info** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @BFS_ROOT_INO, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = call %struct.bfs_sb_info* @BFS_SB(%struct.TYPE_10__* %30)
  %32 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ugt i32 %27, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %26, %2
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %205

45:                                               ; preds = %26
  %46 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %6, align 8
  %47 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %46, i32 0, i32 1
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @BFS_ROOT_INO, align 4
  %51 = sub i32 %49, %50
  %52 = load i32, i32* @BFS_INODES_PER_BLOCK, align 4
  %53 = udiv i32 %51, %52
  %54 = add i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.buffer_head* @sb_bread(%struct.TYPE_10__* %57, i32 %58)
  store %struct.buffer_head* %59, %struct.buffer_head** %10, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %61 = icmp ne %struct.buffer_head* %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %45
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %67, i32 %68)
  %70 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %6, align 8
  %71 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %205

75:                                               ; preds = %45
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @BFS_ROOT_INO, align 4
  %78 = sub i32 %76, %77
  %79 = load i32, i32* @BFS_INODES_PER_BLOCK, align 4
  %80 = urem i32 %78, %79
  store i32 %80, i32* %12, align 4
  %81 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.bfs_inode*
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %84, i64 %86
  store %struct.bfs_inode* %87, %struct.bfs_inode** %9, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @BFS_ROOT_INO, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %75
  %92 = load i64, i64* @BFS_VDIR, align 8
  %93 = call i8* @cpu_to_le32(i64 %92)
  %94 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %95 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %94, i32 0, i32 11
  store i8* %93, i8** %95, align 8
  br label %101

96:                                               ; preds = %75
  %97 = load i64, i64* @BFS_VREG, align 8
  %98 = call i8* @cpu_to_le32(i64 %97)
  %99 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %100 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %99, i32 0, i32 11
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @cpu_to_le16(i32 %102)
  %104 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %105 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @cpu_to_le32(i64 %108)
  %110 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %111 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %110, i32 0, i32 9
  store i8* %109, i8** %111, align 8
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @cpu_to_le32(i64 %114)
  %116 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %117 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %116, i32 0, i32 8
  store i8* %115, i8** %117, align 8
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i8* @cpu_to_le32(i64 %120)
  %122 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %123 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %122, i32 0, i32 7
  store i8* %121, i8** %123, align 8
  %124 = load %struct.inode*, %struct.inode** %4, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @cpu_to_le32(i64 %126)
  %128 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %129 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %128, i32 0, i32 6
  store i8* %127, i8** %129, align 8
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i8* @cpu_to_le32(i64 %133)
  %135 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %136 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load %struct.inode*, %struct.inode** %4, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i8* @cpu_to_le32(i64 %140)
  %142 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %143 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  %144 = load %struct.inode*, %struct.inode** %4, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i8* @cpu_to_le32(i64 %147)
  %149 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %150 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %149, i32 0, i32 3
  store i8* %148, i8** %150, align 8
  %151 = load %struct.inode*, %struct.inode** %4, align 8
  %152 = call %struct.TYPE_11__* @BFS_I(%struct.inode* %151)
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %8, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call i8* @cpu_to_le32(i64 %155)
  %157 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %158 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load %struct.inode*, %struct.inode** %4, align 8
  %160 = call %struct.TYPE_11__* @BFS_I(%struct.inode* %159)
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i8* @cpu_to_le32(i64 %162)
  %164 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %165 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load i64, i64* %8, align 8
  %167 = load i64, i64* @BFS_BSIZE, align 8
  %168 = mul i64 %166, %167
  %169 = load %struct.inode*, %struct.inode** %4, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %168, %171
  %173 = sub i64 %172, 1
  %174 = call i8* @cpu_to_le32(i64 %173)
  %175 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %176 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %178 = call i32 @mark_buffer_dirty(%struct.buffer_head* %177)
  %179 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %180 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @WB_SYNC_ALL, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %101
  %185 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %186 = call i32 @sync_dirty_buffer(%struct.buffer_head* %185)
  %187 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %188 = call i64 @buffer_req(%struct.buffer_head* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %192 = call i32 @buffer_uptodate(%struct.buffer_head* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* @EIO, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %194, %190, %184
  br label %198

198:                                              ; preds = %197, %101
  %199 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %200 = call i32 @brelse(%struct.buffer_head* %199)
  %201 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %6, align 8
  %202 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %201, i32 0, i32 1
  %203 = call i32 @mutex_unlock(i32* %202)
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %198, %62, %35
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.TYPE_10__*) #1

declare dso_local i32 @dprintf(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_11__* @BFS_I(%struct.inode*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
