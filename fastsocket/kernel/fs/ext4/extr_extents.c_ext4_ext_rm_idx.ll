; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_rm_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_rm_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"path->p_hdr->eh_entries == 0\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"index is empty, remove it, free block %llu\0A\00", align 1
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*)* @ext4_ext_rm_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_rm_idx(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_ext_path*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %7, align 8
  %12 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %13 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %12, i32 -1
  store %struct.ext4_ext_path* %13, %struct.ext4_ext_path** %7, align 8
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %15 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ext4_idx_pblock(i64 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %19 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i32 @EXT4_ERROR_INODE(%struct.inode* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %106

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %36 = call i32 @ext4_ext_get_access(i32* %33, %struct.inode* %34, %struct.ext4_ext_path* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %106

41:                                               ; preds = %32
  %42 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %43 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %46 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i64 @EXT_LAST_INDEX(%struct.TYPE_2__* %47)
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %41
  %51 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %52 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = call i64 @EXT_LAST_INDEX(%struct.TYPE_2__* %53)
  %55 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %56 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %65 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %68 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @memmove(i64 %66, i64 %70, i32 %71)
  br label %73

73:                                               ; preds = %50, %41
  %74 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %75 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @le16_add_cpu(i64* %77, i32 -1)
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %82 = call i32 @ext4_ext_dirty(i32* %79, %struct.inode* %80, %struct.ext4_ext_path* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %106

87:                                               ; preds = %73
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @ext_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call %struct.buffer_head* @sb_find_get_block(i32 %92, i32 %93)
  store %struct.buffer_head* %94, %struct.buffer_head** %8, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @ext4_forget(i32* %95, i32 1, %struct.inode* %96, %struct.buffer_head* %97, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %104 = call i32 @ext4_free_blocks(i32* %100, %struct.inode* %101, i32 %102, i32 1, i32 %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %87, %85, %39, %27
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @ext4_idx_pblock(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i64 @EXT_LAST_INDEX(%struct.TYPE_2__*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext_debug(i8*, i32) #1

declare dso_local %struct.buffer_head* @sb_find_get_block(i32, i32) #1

declare dso_local i32 @ext4_forget(i32*, i32, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
