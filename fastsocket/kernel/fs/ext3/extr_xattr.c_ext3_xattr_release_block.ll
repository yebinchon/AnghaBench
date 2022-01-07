; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_release_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_release_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i32 }
%struct.mb_cache_entry = type { i32 }
%struct.TYPE_9__ = type { i64 }

@ext3_xattr_cache = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"refcount now=0; freeing\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"refcount now=%d; releasing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.inode*, %struct.buffer_head*)* @ext3_xattr_release_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext3_xattr_release_block(%struct.TYPE_8__* %0, %struct.inode* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.mb_cache_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  store %struct.mb_cache_entry* null, %struct.mb_cache_entry** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @ext3_xattr_cache, align 4
  %10 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mb_cache_entry* @mb_cache_entry_get(i32 %9, i32 %12, i32 %15)
  store %struct.mb_cache_entry* %16, %struct.mb_cache_entry** %7, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %19 = call i32 @ext3_journal_get_write_access(%struct.TYPE_8__* %17, %struct.buffer_head* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %89

23:                                               ; preds = %3
  %24 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %25 = call i32 @lock_buffer(%struct.buffer_head* %24)
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = call %struct.TYPE_9__* @BHDR(%struct.buffer_head* %26)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @cpu_to_le32(i32 1)
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %56

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
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ext3_free_blocks(%struct.TYPE_8__* %41, %struct.inode* %42, i32 %45, i32 1)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %48 = call i32 @get_bh(%struct.buffer_head* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ext3_forget(%struct.TYPE_8__* %49, i32 1, %struct.inode* %50, %struct.buffer_head* %51, i32 %54)
  br label %86

56:                                               ; preds = %23
  %57 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %58 = call %struct.TYPE_9__* @BHDR(%struct.buffer_head* %57)
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = call i32 @le32_add_cpu(i64* %59, i32 -1)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %63 = call i32 @ext3_journal_dirty_metadata(%struct.TYPE_8__* %61, %struct.buffer_head* %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call i64 @IS_SYNC(%struct.inode* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %56
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call i32 @vfs_dq_free_block(%struct.inode* %71, i32 1)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %75 = call %struct.TYPE_9__* @BHDR(%struct.buffer_head* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @le32_to_cpu(i64 %77)
  %79 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %81 = icmp ne %struct.mb_cache_entry* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %84 = call i32 @mb_cache_entry_release(%struct.mb_cache_entry* %83)
  br label %85

85:                                               ; preds = %82, %70
  br label %86

86:                                               ; preds = %85, %40
  %87 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %88 = call i32 @unlock_buffer(%struct.buffer_head* %87)
  br label %89

89:                                               ; preds = %86, %22
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @ext3_std_error(i32 %92, i32 %93)
  ret void
}

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_get(i32, i32, i32) #1

declare dso_local i32 @ext3_journal_get_write_access(%struct.TYPE_8__*, %struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_9__* @BHDR(%struct.buffer_head*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, ...) #1

declare dso_local i32 @mb_cache_entry_free(%struct.mb_cache_entry*) #1

declare dso_local i32 @ext3_free_blocks(%struct.TYPE_8__*, %struct.inode*, i32, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ext3_forget(%struct.TYPE_8__*, i32, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @le32_add_cpu(i64*, i32) #1

declare dso_local i32 @ext3_journal_dirty_metadata(%struct.TYPE_8__*, %struct.buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @vfs_dq_free_block(%struct.inode*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @mb_cache_entry_release(%struct.mb_cache_entry*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext3_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
