; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_read_inode_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_read_inode_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }
%struct.ext2_group_desc = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"read_inode_bitmap\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Cannot read inode bitmap - block_group = %lu, inode_bitmap = %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.super_block*, i64)* @read_inode_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @read_inode_bitmap(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ext2_group_desc*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %7, i64 %8, i32* null)
  store %struct.ext2_group_desc* %9, %struct.ext2_group_desc** %5, align 8
  %10 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %5, align 8
  %11 = icmp ne %struct.ext2_group_desc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %5, align 8
  %16 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = call %struct.buffer_head* @sb_bread(%struct.super_block* %14, i32 %18)
  store %struct.buffer_head* %19, %struct.buffer_head** %6, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %21 = icmp ne %struct.buffer_head* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %13
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %5, align 8
  %26 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = call i32 @ext2_error(%struct.super_block* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %24, i32 %28)
  br label %30

30:                                               ; preds = %22, %13
  br label %31

31:                                               ; preds = %30, %12
  %32 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %32
}

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext2_error(%struct.super_block*, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
