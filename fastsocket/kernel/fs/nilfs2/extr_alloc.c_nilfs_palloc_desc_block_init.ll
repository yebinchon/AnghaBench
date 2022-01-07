; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_alloc.c_nilfs_palloc_desc_block_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_alloc.c_nilfs_palloc_desc_block_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_palloc_group_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.buffer_head*, i8*)* @nilfs_palloc_desc_block_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_palloc_desc_block_init(%struct.inode* %0, %struct.buffer_head* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nilfs_palloc_group_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %12 = call i32 @bh_offset(%struct.buffer_head* %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %10, i64 %13
  %15 = bitcast i8* %14 to %struct.nilfs_palloc_group_desc*
  store %struct.nilfs_palloc_group_desc* %15, %struct.nilfs_palloc_group_desc** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i64 @nilfs_palloc_groups_per_desc_block(%struct.inode* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @nilfs_palloc_entries_per_group(%struct.inode* %18)
  %20 = call i32 @cpu_to_le32(i32 %19)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %25, %3
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %8, align 8
  %24 = icmp ugt i64 %22, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.nilfs_palloc_group_desc*, %struct.nilfs_palloc_group_desc** %7, align 8
  %28 = getelementptr inbounds %struct.nilfs_palloc_group_desc, %struct.nilfs_palloc_group_desc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.nilfs_palloc_group_desc*, %struct.nilfs_palloc_group_desc** %7, align 8
  %30 = getelementptr inbounds %struct.nilfs_palloc_group_desc, %struct.nilfs_palloc_group_desc* %29, i32 1
  store %struct.nilfs_palloc_group_desc* %30, %struct.nilfs_palloc_group_desc** %7, align 8
  br label %21

31:                                               ; preds = %21
  ret void
}

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i64 @nilfs_palloc_groups_per_desc_block(%struct.inode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @nilfs_palloc_entries_per_group(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
