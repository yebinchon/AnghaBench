; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32, i32, i32 }
%struct.mb_cache_entry = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"ext2_xattr_delete_inode\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"inode %ld: block %d read error\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"b_count=%d\00", align 1
@EXT2_XATTR_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"inode %ld: bad block %d\00", align 1
@ext2_xattr_cache = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"refcount now=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_xattr_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.mb_cache_entry*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @down_write(i32* %7)
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %141

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.buffer_head* @sb_bread(i32 %18, i64 %22)
  store %struct.buffer_head* %23, %struct.buffer_head** %3, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %25 = icmp ne %struct.buffer_head* %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %15
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  %34 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ext2_error(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32, i64 %36)
  br label %141

38:                                               ; preds = %15
  %39 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 2
  %42 = call i32 @atomic_read(i32* %41)
  %43 = call i32 @ea_bdebug(%struct.buffer_head* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %45 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @EXT2_XATTR_MAGIC, align 4
  %49 = call i64 @cpu_to_le32(i32 %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %38
  %52 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %53 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @cpu_to_le32(i32 1)
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %51, %38
  %59 = load %struct.inode*, %struct.inode** %2, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.inode*, %struct.inode** %2, align 8
  %66 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ext2_error(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %64, i64 %68)
  br label %141

70:                                               ; preds = %51
  %71 = load i32, i32* @ext2_xattr_cache, align 4
  %72 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.mb_cache_entry* @mb_cache_entry_get(i32 %71, i32 %74, i32 %77)
  store %struct.mb_cache_entry* %78, %struct.mb_cache_entry** %4, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %80 = call i32 @lock_buffer(%struct.buffer_head* %79)
  %81 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %82 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %81)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @cpu_to_le32(i32 1)
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %70
  %88 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %4, align 8
  %89 = icmp ne %struct.mb_cache_entry* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %4, align 8
  %92 = call i32 @mb_cache_entry_free(%struct.mb_cache_entry* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.inode*, %struct.inode** %2, align 8
  %95 = load %struct.inode*, %struct.inode** %2, align 8
  %96 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @ext2_free_blocks(%struct.inode* %94, i64 %98, i32 1)
  %100 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %101 = call i32 @get_bh(%struct.buffer_head* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %103 = call i32 @bforget(%struct.buffer_head* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %105 = call i32 @unlock_buffer(%struct.buffer_head* %104)
  br label %137

106:                                              ; preds = %70
  %107 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %108 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %107)
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = call i32 @le32_add_cpu(i64* %109, i32 -1)
  %111 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %4, align 8
  %112 = icmp ne %struct.mb_cache_entry* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %4, align 8
  %115 = call i32 @mb_cache_entry_release(%struct.mb_cache_entry* %114)
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %119 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %118)
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @le32_to_cpu(i64 %121)
  %123 = call i32 @ea_bdebug(%struct.buffer_head* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  %124 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %125 = call i32 @unlock_buffer(%struct.buffer_head* %124)
  %126 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %127 = call i32 @mark_buffer_dirty(%struct.buffer_head* %126)
  %128 = load %struct.inode*, %struct.inode** %2, align 8
  %129 = call i64 @IS_SYNC(%struct.inode* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %116
  %132 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %133 = call i32 @sync_dirty_buffer(%struct.buffer_head* %132)
  br label %134

134:                                              ; preds = %131, %116
  %135 = load %struct.inode*, %struct.inode** %2, align 8
  %136 = call i32 @vfs_dq_free_block(%struct.inode* %135, i32 1)
  br label %137

137:                                              ; preds = %134, %93
  %138 = load %struct.inode*, %struct.inode** %2, align 8
  %139 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %138)
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %137, %58, %26, %14
  %142 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %143 = call i32 @brelse(%struct.buffer_head* %142)
  %144 = load %struct.inode*, %struct.inode** %2, align 8
  %145 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %144)
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = call i32 @up_write(i32* %146)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i32 @ext2_error(i32, i8*, i8*, i32, i64) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_3__* @HDR(%struct.buffer_head*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_get(i32, i32, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mb_cache_entry_free(%struct.mb_cache_entry*) #1

declare dso_local i32 @ext2_free_blocks(%struct.inode*, i64, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @le32_add_cpu(i64*, i32) #1

declare dso_local i32 @mb_cache_entry_release(%struct.mb_cache_entry*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @vfs_dq_free_block(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
