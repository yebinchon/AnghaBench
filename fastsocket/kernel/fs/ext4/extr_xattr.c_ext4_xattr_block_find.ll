; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_block_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_block_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext4_xattr_info = type { i32, i32, i64, i32 }
%struct.ext4_xattr_block_find = type { %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"name=%d.%s, value=%p, value_len=%ld\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"b_count=%d, refcount=%d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"inode %lu: bad block %llu\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_block_find*)* @ext4_xattr_block_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_block_find(%struct.inode* %0, %struct.ext4_xattr_info* %1, %struct.ext4_xattr_block_find* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_xattr_info*, align 8
  %6 = alloca %struct.ext4_xattr_block_find*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_xattr_info* %1, %struct.ext4_xattr_info** %5, align 8
  store %struct.ext4_xattr_block_find* %2, %struct.ext4_xattr_block_find** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %5, align 8
  %14 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %5, align 8
  %17 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %5, align 8
  %20 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %5, align 8
  %23 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ea_idebug(%struct.inode* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i64 %24)
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call %struct.TYPE_11__* @EXT4_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %145

31:                                               ; preds = %3
  %32 = load %struct.super_block*, %struct.super_block** %7, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call %struct.TYPE_11__* @EXT4_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.TYPE_10__* @sb_bread(%struct.super_block* %32, i64 %36)
  %38 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %39 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %38, i32 0, i32 1
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %39, align 8
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %43 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %31
  br label %146

47:                                               ; preds = %31
  %48 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %49 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %52 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = call i32 @atomic_read(i32* %54)
  %56 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %57 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = call %struct.TYPE_12__* @BHDR(%struct.TYPE_10__* %58)
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = call i32 @ea_bdebug(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %62)
  %64 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %65 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = call i64 @ext4_xattr_check_block(%struct.TYPE_10__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %47
  %70 = load %struct.super_block*, %struct.super_block** %7, align 8
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = call %struct.TYPE_11__* @EXT4_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ext4_error(%struct.super_block* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %73, i64 %77)
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %146

81:                                               ; preds = %47
  %82 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %83 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = call %struct.TYPE_12__* @BHDR(%struct.TYPE_10__* %84)
  %86 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %87 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %88, align 8
  %89 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %90 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = call i32 @BFIRST(%struct.TYPE_10__* %91)
  %93 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %94 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %97 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %102 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %100, %105
  %107 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %108 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  store i64 %106, i64* %109, align 8
  %110 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %111 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %115 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %118 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %5, align 8
  %121 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %5, align 8
  %124 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %127 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @ext4_xattr_find_entry(i32* %119, i32 %122, i32 %125, i64 %130, i32 1)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %81
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @ENODATA, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %146

140:                                              ; preds = %134, %81
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.ext4_xattr_block_find*, %struct.ext4_xattr_block_find** %6, align 8
  %143 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  br label %145

145:                                              ; preds = %140, %3
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %145, %139, %69, %46
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i32, i32, i32, i64) #1

declare dso_local %struct.TYPE_11__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.TYPE_10__* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i32 @ea_bdebug(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_12__* @BHDR(%struct.TYPE_10__*) #1

declare dso_local i64 @ext4_xattr_check_block(%struct.TYPE_10__*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i64) #1

declare dso_local i32 @BFIRST(%struct.TYPE_10__*) #1

declare dso_local i32 @ext4_xattr_find_entry(i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
