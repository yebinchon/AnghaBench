; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_block_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_block_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"buffer=%p, buffer_size=%ld\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"reading block %u\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"b_count=%d, refcount=%d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"inode %lu: bad block %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i64)* @ext4_xattr_block_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_block_list(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 (%struct.inode*, i8*, i8*, ...) @ea_idebug(%struct.inode* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %10, i64 %11)
  store i32 0, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %78

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 (%struct.inode*, i8*, i8*, ...) @ea_idebug(%struct.inode* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.buffer_head* @sb_bread(i32 %30, i32 %34)
  store %struct.buffer_head* %35, %struct.buffer_head** %7, align 8
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %39 = icmp ne %struct.buffer_head* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %19
  br label %78

41:                                               ; preds = %19
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = call i32 @atomic_read(i32* %44)
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = call %struct.TYPE_4__* @BHDR(%struct.buffer_head* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = call i32 @ea_bdebug(%struct.buffer_head* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = call i64 @ext4_xattr_check_block(%struct.buffer_head* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %41
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ext4_error(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %78

69:                                               ; preds = %41
  %70 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %71 = call i32 @ext4_xattr_cache_insert(%struct.buffer_head* %70)
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %74 = call i32 @BFIRST(%struct.buffer_head* %73)
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @ext4_xattr_list_entries(%struct.inode* %72, i32 %74, i8* %75, i64 %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %69, %55, %40, %18
  %79 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_3__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @BHDR(%struct.buffer_head*) #1

declare dso_local i64 @ext4_xattr_check_block(%struct.buffer_head*) #1

declare dso_local i32 @ext4_error(i32, i8*, i32, i32) #1

declare dso_local i32 @ext4_xattr_cache_insert(%struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_list_entries(%struct.inode*, i32, i8*, i64) #1

declare dso_local i32 @BFIRST(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
