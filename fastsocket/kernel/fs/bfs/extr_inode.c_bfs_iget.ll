; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_inode.c_bfs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_inode.c_bfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, %struct.TYPE_9__*, i32*, i32*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { i8* }
%struct.super_block = type { i32 }
%struct.bfs_inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@BFS_ROOT_INO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Bad inode number %s:%08lx\0A\00", align 1
@BFS_INODES_PER_BLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to read inode %s:%08lx\0A\00", align 1
@BFS_VDIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@bfs_dir_inops = common dso_local global i32 0, align 4
@bfs_dir_operations = common dso_local global i32 0, align 4
@BFS_VREG = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@bfs_file_inops = common dso_local global i32 0, align 4
@bfs_file_operations = common dso_local global i32 0, align 4
@bfs_aops = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @bfs_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bfs_inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.inode* @iget_locked(%struct.super_block* %11, i64 %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call i64 @IS_ERR(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.inode* @ERR_PTR(i32 %19)
  store %struct.inode* %20, %struct.inode** %3, align 8
  br label %222

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @I_NEW, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %29, %struct.inode** %3, align 8
  br label %222

30:                                               ; preds = %21
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @BFS_ROOT_INO, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 13
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = call %struct.TYPE_14__* @BFS_SB(%struct.TYPE_13__* %38)
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %35, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %34, %30
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 13
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %48, i64 %49)
  br label %216

51:                                               ; preds = %34
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @BFS_ROOT_INO, align 8
  %54 = sub i64 %52, %53
  %55 = load i64, i64* @BFS_INODES_PER_BLOCK, align 8
  %56 = udiv i64 %54, %55
  %57 = add i64 %56, 1
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 13
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.buffer_head* @sb_bread(%struct.TYPE_13__* %61, i32 %62)
  store %struct.buffer_head* %63, %struct.buffer_head** %8, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %65 = icmp ne %struct.buffer_head* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %51
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 13
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %71, i64 %72)
  br label %216

74:                                               ; preds = %51
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @BFS_ROOT_INO, align 8
  %77 = sub i64 %75, %76
  %78 = load i64, i64* @BFS_INODES_PER_BLOCK, align 8
  %79 = urem i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.bfs_inode*
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %84, i64 %86
  store %struct.bfs_inode* %87, %struct.bfs_inode** %6, align 8
  %88 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %89 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = and i32 65535, %91
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %96 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = load i32, i32* @BFS_VDIR, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %74
  %102 = load i32, i32* @S_IFDIR, align 4
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 12
  store i32* @bfs_dir_inops, i32** %108, align 8
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 11
  store i32* @bfs_dir_operations, i32** %110, align 8
  br label %133

111:                                              ; preds = %74
  %112 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %113 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le32_to_cpu(i32 %114)
  %116 = load i32, i32* @BFS_VREG, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %111
  %119 = load i32, i32* @S_IFREG, align 4
  %120 = load %struct.inode*, %struct.inode** %7, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.inode*, %struct.inode** %7, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 12
  store i32* @bfs_file_inops, i32** %125, align 8
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 11
  store i32* @bfs_file_operations, i32** %127, align 8
  %128 = load %struct.inode*, %struct.inode** %7, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 10
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32* @bfs_aops, i32** %131, align 8
  br label %132

132:                                              ; preds = %118, %111
  br label %133

133:                                              ; preds = %132, %101
  %134 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %135 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le32_to_cpu(i32 %136)
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = call %struct.TYPE_15__* @BFS_I(%struct.inode* %138)
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 4
  %141 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %142 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le32_to_cpu(i32 %143)
  %145 = load %struct.inode*, %struct.inode** %7, align 8
  %146 = call %struct.TYPE_15__* @BFS_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %149 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le16_to_cpu(i32 %150)
  %152 = load %struct.inode*, %struct.inode** %7, align 8
  %153 = call %struct.TYPE_15__* @BFS_I(%struct.inode* %152)
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 4
  %155 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %156 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32_to_cpu(i32 %157)
  %159 = load %struct.inode*, %struct.inode** %7, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %162 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @le32_to_cpu(i32 %163)
  %165 = load %struct.inode*, %struct.inode** %7, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %168 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le32_to_cpu(i32 %169)
  %171 = load %struct.inode*, %struct.inode** %7, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %174 = call i32 @BFS_FILESIZE(%struct.bfs_inode* %173)
  %175 = load %struct.inode*, %struct.inode** %7, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 9
  store i32 %174, i32* %176, align 4
  %177 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %178 = call i32 @BFS_FILEBLOCKS(%struct.bfs_inode* %177)
  %179 = load %struct.inode*, %struct.inode** %7, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 8
  %181 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %182 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @le32_to_cpu(i32 %183)
  %185 = load %struct.inode*, %struct.inode** %7, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 8
  %188 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %189 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @le32_to_cpu(i32 %190)
  %192 = load %struct.inode*, %struct.inode** %7, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  %195 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %196 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @le32_to_cpu(i32 %197)
  %199 = load %struct.inode*, %struct.inode** %7, align 8
  %200 = getelementptr inbounds %struct.inode, %struct.inode* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  store i32 %198, i32* %201, align 8
  %202 = load %struct.inode*, %struct.inode** %7, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  store i64 0, i64* %204, align 8
  %205 = load %struct.inode*, %struct.inode** %7, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  store i64 0, i64* %207, align 8
  %208 = load %struct.inode*, %struct.inode** %7, align 8
  %209 = getelementptr inbounds %struct.inode, %struct.inode* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  store i64 0, i64* %210, align 8
  %211 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %212 = call i32 @brelse(%struct.buffer_head* %211)
  %213 = load %struct.inode*, %struct.inode** %7, align 8
  %214 = call i32 @unlock_new_inode(%struct.inode* %213)
  %215 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %215, %struct.inode** %3, align 8
  br label %222

216:                                              ; preds = %66, %43
  %217 = load %struct.inode*, %struct.inode** %7, align 8
  %218 = call i32 @iget_failed(%struct.inode* %217)
  %219 = load i32, i32* @EIO, align 4
  %220 = sub nsw i32 0, %219
  %221 = call %struct.inode* @ERR_PTR(i32 %220)
  store %struct.inode* %221, %struct.inode** %3, align 8
  br label %222

222:                                              ; preds = %216, %133, %28, %17
  %223 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %223
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_14__* @BFS_SB(%struct.TYPE_13__*) #1

declare dso_local i32 @printf(i8*, i8*, i64) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_15__* @BFS_I(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BFS_FILESIZE(%struct.bfs_inode*) #1

declare dso_local i32 @BFS_FILEBLOCKS(%struct.bfs_inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
