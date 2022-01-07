; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_cache_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ext4_xattr_header = type { i32 }
%struct.mb_cache_entry = type { i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"looking for cached blocks [%x]\00", align 1
@ext4_xattr_cache = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"inode %lu: block %lu read error\00", align 1
@EXT4_XATTR_REFCOUNT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"block %lu refcount %d>=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, %struct.ext4_xattr_header*, %struct.mb_cache_entry**)* @ext4_xattr_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext4_xattr_cache_find(%struct.inode* %0, %struct.ext4_xattr_header* %1, %struct.mb_cache_entry** %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_xattr_header*, align 8
  %7 = alloca %struct.mb_cache_entry**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mb_cache_entry*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_xattr_header* %1, %struct.ext4_xattr_header** %6, align 8
  store %struct.mb_cache_entry** %2, %struct.mb_cache_entry*** %7, align 8
  %11 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %6, align 8
  %12 = getelementptr inbounds %struct.ext4_xattr_header, %struct.ext4_xattr_header* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le32_to_cpu(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %6, align 8
  %16 = getelementptr inbounds %struct.ext4_xattr_header, %struct.ext4_xattr_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %115

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = call i32 (%struct.inode*, i8*, i64, ...) @ea_idebug(%struct.inode* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %48, %20
  %27 = load i32, i32* @ext4_xattr_cache, align 4
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call %struct.mb_cache_entry* @mb_cache_entry_find_first(i32 %27, i32 0, i32 %32, i64 %33)
  store %struct.mb_cache_entry* %34, %struct.mb_cache_entry** %9, align 8
  br label %35

35:                                               ; preds = %103, %26
  %36 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %37 = icmp ne %struct.mb_cache_entry* %36, null
  br i1 %37, label %38, label %114

38:                                               ; preds = %35
  %39 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %40 = call i64 @IS_ERR(%struct.mb_cache_entry* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %44 = call i32 @PTR_ERR(%struct.mb_cache_entry* %43)
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %26

49:                                               ; preds = %42
  br label %114

50:                                               ; preds = %38
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %55 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.buffer_head* @sb_bread(%struct.TYPE_5__* %53, i64 %56)
  store %struct.buffer_head* %57, %struct.buffer_head** %10, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %59 = icmp ne %struct.buffer_head* %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %50
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %68 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @ext4_error(%struct.TYPE_5__* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66, i64 %69)
  br label %103

71:                                               ; preds = %50
  %72 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %73 = call %struct.TYPE_6__* @BHDR(%struct.buffer_head* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le32_to_cpu(i32 %75)
  %77 = load i64, i64* @EXT4_XATTR_REFCOUNT_MAX, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %71
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %82 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %85 = call %struct.TYPE_6__* @BHDR(%struct.buffer_head* %84)
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  %89 = load i64, i64* @EXT4_XATTR_REFCOUNT_MAX, align 8
  %90 = call i32 (%struct.inode*, i8*, i64, ...) @ea_idebug(%struct.inode* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %83, i64 %88, i64 %89)
  br label %102

91:                                               ; preds = %71
  %92 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %6, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %94 = call %struct.TYPE_6__* @BHDR(%struct.buffer_head* %93)
  %95 = call i64 @ext4_xattr_cmp(%struct.ext4_xattr_header* %92, %struct.TYPE_6__* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %99 = load %struct.mb_cache_entry**, %struct.mb_cache_entry*** %7, align 8
  store %struct.mb_cache_entry* %98, %struct.mb_cache_entry** %99, align 8
  %100 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %100, %struct.buffer_head** %4, align 8
  br label %115

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %79
  br label %103

103:                                              ; preds = %102, %60
  %104 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %105 = call i32 @brelse(%struct.buffer_head* %104)
  %106 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* %8, align 8
  %113 = call %struct.mb_cache_entry* @mb_cache_entry_find_next(%struct.mb_cache_entry* %106, i32 0, i32 %111, i64 %112)
  store %struct.mb_cache_entry* %113, %struct.mb_cache_entry** %9, align 8
  br label %35

114:                                              ; preds = %49, %35
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %115

115:                                              ; preds = %114, %97, %19
  %116 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %116
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i64, ...) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_find_first(i32, i32, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.mb_cache_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.mb_cache_entry*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @ext4_error(%struct.TYPE_5__*, i8*, i32, i64) #1

declare dso_local %struct.TYPE_6__* @BHDR(%struct.buffer_head*) #1

declare dso_local i64 @ext4_xattr_cmp(%struct.ext4_xattr_header*, %struct.TYPE_6__*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_find_next(%struct.mb_cache_entry*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
