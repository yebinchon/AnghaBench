; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_block_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_block_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64, i32, i32 }
%struct.ext4_xattr_entry = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"name=%d.%s, buffer=%p, buffer_size=%ld\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"reading block %u\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"b_count=%d, refcount=%d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"inode %lu: bad block %llu\00", align 1
@EIO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i8*, i64)* @ext4_xattr_block_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_block_get(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext4_xattr_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 (%struct.inode*, i8*, i32, ...) @ea_idebug(%struct.inode* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %17, i8* %18, i64 %19)
  %21 = load i32, i32* @ENODATA, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %14, align 4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  br label %125

29:                                               ; preds = %5
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.inode*, i8*, i32, ...) @ea_idebug(%struct.inode* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.buffer_head* @sb_bread(i32 %38, i32 %42)
  store %struct.buffer_head* %43, %struct.buffer_head** %11, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %45 = icmp ne %struct.buffer_head* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %29
  br label %125

47:                                               ; preds = %29
  %48 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 2
  %51 = call i32 @atomic_read(i32* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %53 = call %struct.TYPE_4__* @BHDR(%struct.buffer_head* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = call i32 @ea_bdebug(%struct.buffer_head* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %51, i64 %56)
  %58 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %59 = call i64 @ext4_xattr_check_block(%struct.buffer_head* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %91, %61
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ext4_error(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %72)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %14, align 4
  br label %125

76:                                               ; preds = %47
  %77 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %78 = call i32 @ext4_xattr_cache_insert(%struct.buffer_head* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %80 = call %struct.ext4_xattr_entry* @BFIRST(%struct.buffer_head* %79)
  store %struct.ext4_xattr_entry* %80, %struct.ext4_xattr_entry** %12, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ext4_xattr_find_entry(%struct.ext4_xattr_entry** %12, i32 %81, i8* %82, i32 %85, i32 1)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %62

92:                                               ; preds = %76
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %125

96:                                               ; preds = %92
  %97 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %98 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le32_to_cpu(i32 %99)
  store i64 %100, i64* %13, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %122

103:                                              ; preds = %96
  %104 = load i32, i32* @ERANGE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %14, align 4
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %125

110:                                              ; preds = %103
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %113 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %116 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @le16_to_cpu(i32 %117)
  %119 = add nsw i64 %114, %118
  %120 = load i64, i64* %13, align 8
  %121 = call i32 @memcpy(i8* %111, i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %110, %96
  %123 = load i64, i64* %13, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %122, %109, %95, %62, %46, %28
  %126 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %127 = call i32 @brelse(%struct.buffer_head* %126)
  %128 = load i32, i32* %14, align 4
  ret i32 %128
}

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_3__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @BHDR(%struct.buffer_head*) #1

declare dso_local i64 @ext4_xattr_check_block(%struct.buffer_head*) #1

declare dso_local i32 @ext4_error(i32, i8*, i32, i32) #1

declare dso_local i32 @ext4_xattr_cache_insert(%struct.buffer_head*) #1

declare dso_local %struct.ext4_xattr_entry* @BFIRST(%struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_find_entry(%struct.ext4_xattr_entry**, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
