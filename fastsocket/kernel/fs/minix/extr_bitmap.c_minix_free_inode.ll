; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_bitmap.c_minix_free_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_bitmap.c_minix_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.minix_sb_info = type { i64, i64, %struct.buffer_head** }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"minix_free_inode: inode 0 or nonexistent inode\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"minix_free_inode: nonexistent imap in superblock\0A\00", align 1
@bitmap_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"minix_free_inode: bit %lu already cleared\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minix_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.minix_sb_info*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  %15 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %14)
  store %struct.minix_sb_info* %15, %struct.minix_sb_info** %4, align 8
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 3
  store i32 %19, i32* %6, align 4
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %23, 1
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.minix_sb_info*, %struct.minix_sb_info** %4, align 8
  %28 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %1
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %74

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = and i64 %34, %38
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i64, i64* %7, align 8
  %42 = zext i32 %40 to i64
  %43 = lshr i64 %41, %42
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.minix_sb_info*, %struct.minix_sb_info** %4, align 8
  %46 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %74

51:                                               ; preds = %33
  %52 = load %struct.inode*, %struct.inode** %2, align 8
  %53 = call i32 @minix_clear_inode(%struct.inode* %52)
  %54 = load %struct.minix_sb_info*, %struct.minix_sb_info** %4, align 8
  %55 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %54, i32 0, i32 2
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %56, i64 %57
  %59 = load %struct.buffer_head*, %struct.buffer_head** %58, align 8
  store %struct.buffer_head* %59, %struct.buffer_head** %5, align 8
  %60 = call i32 @spin_lock(i32* @bitmap_lock)
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @minix_test_and_clear_bit(i64 %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %51
  %68 = load i64, i64* %8, align 8
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %67, %51
  %71 = call i32 @spin_unlock(i32* @bitmap_lock)
  %72 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %73 = call i32 @mark_buffer_dirty(%struct.buffer_head* %72)
  br label %74

74:                                               ; preds = %70, %49, %31
  %75 = load %struct.inode*, %struct.inode** %2, align 8
  %76 = call i32 @clear_inode(%struct.inode* %75)
  ret void
}

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @minix_clear_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @minix_test_and_clear_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
