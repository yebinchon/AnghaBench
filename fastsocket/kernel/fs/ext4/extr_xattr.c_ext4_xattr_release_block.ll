; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_release_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_release_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i32 }
%struct.mb_cache_entry = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ext4_xattr_cache = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"refcount now=0; freeing\00", align 1
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"refcount now=%d; releasing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.buffer_head*)* @ext4_xattr_release_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_xattr_release_block(i32* %0, %struct.inode* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.mb_cache_entry*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  store %struct.mb_cache_entry* null, %struct.mb_cache_entry** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @ext4_xattr_cache, align 4
  %10 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mb_cache_entry* @mb_cache_entry_get(i32 %9, i32 %12, i32 %15)
  store %struct.mb_cache_entry* %16, %struct.mb_cache_entry** %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %19 = call i32 @ext4_journal_get_write_access(i32* %17, %struct.buffer_head* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %91

23:                                               ; preds = %3
  %24 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %25 = call i32 @lock_buffer(%struct.buffer_head* %24)
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @cpu_to_le32(i32 1)
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %23
  %33 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %34 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %36 = icmp ne %struct.mb_cache_entry* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %39 = call i32 @mb_cache_entry_free(%struct.mb_cache_entry* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %47 = call i32 @ext4_free_blocks(i32* %41, %struct.inode* %42, i32 %45, i32 1, i32 %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %49 = call i32 @get_bh(%struct.buffer_head* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ext4_forget(i32* %50, i32 1, %struct.inode* %51, %struct.buffer_head* %52, i32 %55)
  br label %88

57:                                               ; preds = %23
  %58 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %59 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @le32_add_cpu(i64* %60, i32 -1)
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %65 = call i32 @ext4_handle_dirty_metadata(i32* %62, %struct.inode* %63, %struct.buffer_head* %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = call i64 @IS_SYNC(%struct.inode* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @ext4_handle_sync(i32* %70)
  br label %72

72:                                               ; preds = %69, %57
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = call i32 @vfs_dq_free_block(%struct.inode* %73, i32 1)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %77 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @le32_to_cpu(i64 %79)
  %81 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %83 = icmp ne %struct.mb_cache_entry* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %86 = call i32 @mb_cache_entry_release(%struct.mb_cache_entry* %85)
  br label %87

87:                                               ; preds = %84, %72
  br label %88

88:                                               ; preds = %87, %40
  %89 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %90 = call i32 @unlock_buffer(%struct.buffer_head* %89)
  br label %91

91:                                               ; preds = %88, %22
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @ext4_std_error(i32 %94, i32 %95)
  ret void
}

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_get(i32, i32, i32) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_2__* @BHDR(%struct.buffer_head*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, ...) #1

declare dso_local i32 @mb_cache_entry_free(%struct.mb_cache_entry*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ext4_forget(i32*, i32, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @le32_add_cpu(i64*, i32) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @vfs_dq_free_block(%struct.inode*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @mb_cache_entry_release(%struct.mb_cache_entry*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
