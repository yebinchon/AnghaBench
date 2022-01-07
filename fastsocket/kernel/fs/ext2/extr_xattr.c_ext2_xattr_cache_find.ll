; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_cache_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ext2_xattr_header = type { i32 }
%struct.mb_cache_entry = type { i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"looking for cached blocks [%x]\00", align 1
@ext2_xattr_cache = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ext2_xattr_cache_find\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"inode %ld: block %ld read error\00", align 1
@EXT2_XATTR_REFCOUNT_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"block %ld refcount %d>%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"b_count=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, %struct.ext2_xattr_header*)* @ext2_xattr_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext2_xattr_cache_find(%struct.inode* %0, %struct.ext2_xattr_header* %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext2_xattr_header*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mb_cache_entry*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext2_xattr_header* %1, %struct.ext2_xattr_header** %5, align 8
  %9 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %5, align 8
  %10 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @le32_to_cpu(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %5, align 8
  %14 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %122

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = trunc i64 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = call i32 (%struct.inode*, i8*, i64, ...) @ea_idebug(%struct.inode* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %46, %18
  %25 = load i32, i32* @ext2_xattr_cache, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call %struct.mb_cache_entry* @mb_cache_entry_find_first(i32 %25, i32 0, i32 %30, i64 %31)
  store %struct.mb_cache_entry* %32, %struct.mb_cache_entry** %7, align 8
  br label %33

33:                                               ; preds = %112, %24
  %34 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %35 = icmp ne %struct.mb_cache_entry* %34, null
  br i1 %35, label %36, label %121

36:                                               ; preds = %33
  %37 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %38 = call i64 @IS_ERR(%struct.mb_cache_entry* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %42 = call i32 @PTR_ERR(%struct.mb_cache_entry* %41)
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %24

47:                                               ; preds = %40
  br label %121

48:                                               ; preds = %36
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %53 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call %struct.buffer_head* @sb_bread(%struct.TYPE_5__* %51, i64 %54)
  store %struct.buffer_head* %55, %struct.buffer_head** %8, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = icmp ne %struct.buffer_head* %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %48
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %66 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ext2_error(%struct.TYPE_5__* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %64, i64 %67)
  br label %112

69:                                               ; preds = %48
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = call i32 @lock_buffer(%struct.buffer_head* %70)
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = call %struct.TYPE_6__* @HDR(%struct.buffer_head* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le32_to_cpu(i32 %75)
  %77 = load i64, i64* @EXT2_XATTR_REFCOUNT_MAX, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %69
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %82 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %85 = call %struct.TYPE_6__* @HDR(%struct.buffer_head* %84)
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  %89 = load i64, i64* @EXT2_XATTR_REFCOUNT_MAX, align 8
  %90 = call i32 (%struct.inode*, i8*, i64, ...) @ea_idebug(%struct.inode* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %83, i64 %88, i64 %89)
  br label %107

91:                                               ; preds = %69
  %92 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %5, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %94 = call %struct.TYPE_6__* @HDR(%struct.buffer_head* %93)
  %95 = call i32 @ext2_xattr_cmp(%struct.ext2_xattr_header* %92, %struct.TYPE_6__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %91
  %98 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %100 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %99, i32 0, i32 0
  %101 = call i32 @atomic_read(i32* %100)
  %102 = call i32 @ea_bdebug(%struct.buffer_head* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %104 = call i32 @mb_cache_entry_release(%struct.mb_cache_entry* %103)
  %105 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %105, %struct.buffer_head** %3, align 8
  br label %122

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %79
  %108 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %109 = call i32 @unlock_buffer(%struct.buffer_head* %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %111 = call i32 @brelse(%struct.buffer_head* %110)
  br label %112

112:                                              ; preds = %107, %58
  %113 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %6, align 8
  %120 = call %struct.mb_cache_entry* @mb_cache_entry_find_next(%struct.mb_cache_entry* %113, i32 0, i32 %118, i64 %119)
  store %struct.mb_cache_entry* %120, %struct.mb_cache_entry** %7, align 8
  br label %33

121:                                              ; preds = %47, %33
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %122

122:                                              ; preds = %121, %97, %17
  %123 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %123
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i64, ...) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_find_first(i32, i32, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.mb_cache_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.mb_cache_entry*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @ext2_error(%struct.TYPE_5__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_6__* @HDR(%struct.buffer_head*) #1

declare dso_local i32 @ext2_xattr_cmp(%struct.ext2_xattr_header*, %struct.TYPE_6__*) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mb_cache_entry_release(%struct.mb_cache_entry*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_find_next(%struct.mb_cache_entry*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
