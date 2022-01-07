; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_ext2_free_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_ext2_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext2_super_block = type { i32 }
%struct.TYPE_3__ = type { %struct.ext2_super_block* }

@.str = private unnamed_addr constant [19 x i8] c"freeing inode %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ext2_free_inode\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"reserved or nonexistent inode %lu\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"bit already cleared for inode %lu\00", align 1
@MS_SYNCHRONOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ext2_super_block*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %3, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ext2_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call i32 @is_bad_inode(%struct.inode* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call i32 @ext2_xattr_delete_inode(%struct.inode* %22)
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call i32 @vfs_dq_free_inode(%struct.inode* %24)
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @vfs_dq_drop(%struct.inode* %26)
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = call %struct.TYPE_3__* @EXT2_SB(%struct.super_block* %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.ext2_super_block*, %struct.ext2_super_block** %31, align 8
  store %struct.ext2_super_block* %32, %struct.ext2_super_block** %9, align 8
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @S_ISDIR(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = call i32 @clear_inode(%struct.inode* %37)
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.super_block*, %struct.super_block** %3, align 8
  %41 = call i64 @EXT2_FIRST_INO(%struct.super_block* %40)
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %28
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.ext2_super_block*, %struct.ext2_super_block** %9, align 8
  %46 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  %49 = icmp ugt i64 %44, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43, %28
  %51 = load %struct.super_block*, %struct.super_block** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @ext2_error(%struct.super_block* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  br label %107

54:                                               ; preds = %43
  %55 = load i64, i64* %5, align 8
  %56 = sub i64 %55, 1
  %57 = load %struct.super_block*, %struct.super_block** %3, align 8
  %58 = call i64 @EXT2_INODES_PER_GROUP(%struct.super_block* %57)
  %59 = udiv i64 %56, %58
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %5, align 8
  %61 = sub i64 %60, 1
  %62 = load %struct.super_block*, %struct.super_block** %3, align 8
  %63 = call i64 @EXT2_INODES_PER_GROUP(%struct.super_block* %62)
  %64 = urem i64 %61, %63
  store i64 %64, i64* %8, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %66 = call i32 @brelse(%struct.buffer_head* %65)
  %67 = load %struct.super_block*, %struct.super_block** %3, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call %struct.buffer_head* @read_inode_bitmap(%struct.super_block* %67, i64 %68)
  store %struct.buffer_head* %69, %struct.buffer_head** %6, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %71 = icmp ne %struct.buffer_head* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %54
  br label %107

73:                                               ; preds = %54
  %74 = load %struct.super_block*, %struct.super_block** %3, align 8
  %75 = call %struct.TYPE_3__* @EXT2_SB(%struct.super_block* %74)
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @sb_bgl_lock(%struct.TYPE_3__* %75, i64 %76)
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @ext2_clear_bit_atomic(i32 %77, i64 %78, i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %73
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @ext2_error(%struct.super_block* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  br label %94

89:                                               ; preds = %73
  %90 = load %struct.super_block*, %struct.super_block** %3, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @ext2_release_inode(%struct.super_block* %90, i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %85
  %95 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %96 = call i32 @mark_buffer_dirty(%struct.buffer_head* %95)
  %97 = load %struct.super_block*, %struct.super_block** %3, align 8
  %98 = getelementptr inbounds %struct.super_block, %struct.super_block* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MS_SYNCHRONOUS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %105 = call i32 @sync_dirty_buffer(%struct.buffer_head* %104)
  br label %106

106:                                              ; preds = %103, %94
  br label %107

107:                                              ; preds = %106, %72, %50
  %108 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %109 = call i32 @brelse(%struct.buffer_head* %108)
  ret void
}

declare dso_local i32 @ext2_debug(i8*, i64) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @ext2_xattr_delete_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_drop(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i64 @EXT2_FIRST_INO(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext2_error(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local i64 @EXT2_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @read_inode_bitmap(%struct.super_block*, i64) #1

declare dso_local i32 @ext2_clear_bit_atomic(i32, i64, i8*) #1

declare dso_local i32 @sb_bgl_lock(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @ext2_release_inode(%struct.super_block*, i64, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
