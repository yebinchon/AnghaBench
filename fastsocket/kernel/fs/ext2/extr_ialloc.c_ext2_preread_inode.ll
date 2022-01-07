; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_ext2_preread_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_ext2_preread_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }
%struct.ext2_group_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ext2_preread_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_preread_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext2_group_desc*, align 8
  %7 = alloca %struct.backing_dev_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.backing_dev_info*, %struct.backing_dev_info** %11, align 8
  store %struct.backing_dev_info* %12, %struct.backing_dev_info** %7, align 8
  %13 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %14 = call i64 @bdi_read_congested(%struct.backing_dev_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %73

17:                                               ; preds = %1
  %18 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %19 = call i64 @bdi_write_congested(%struct.backing_dev_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %73

22:                                               ; preds = %17
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @EXT2_INODES_PER_GROUP(i32 %29)
  %31 = sdiv i32 %26, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %3, align 8
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call %struct.ext2_group_desc* @ext2_get_group_desc(i32 %35, i64 %36, i32* null)
  store %struct.ext2_group_desc* %37, %struct.ext2_group_desc** %6, align 8
  %38 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %39 = icmp eq %struct.ext2_group_desc* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %73

41:                                               ; preds = %22
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.inode*, %struct.inode** %2, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @EXT2_INODES_PER_GROUP(i32 %48)
  %50 = srem i32 %45, %49
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @EXT2_INODE_SIZE(i32 %53)
  %55 = mul nsw i32 %50, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %4, align 8
  %57 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %58 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le32_to_cpu(i32 %59)
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @EXT2_BLOCK_SIZE_BITS(i32 %64)
  %66 = lshr i64 %61, %65
  %67 = add i64 %60, %66
  store i64 %67, i64* %5, align 8
  %68 = load %struct.inode*, %struct.inode** %2, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @sb_breadahead(i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %41, %40, %21, %16
  ret void
}

declare dso_local i64 @bdi_read_congested(%struct.backing_dev_info*) #1

declare dso_local i64 @bdi_write_congested(%struct.backing_dev_info*) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(i32) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(i32, i64, i32*) #1

declare dso_local i32 @EXT2_INODE_SIZE(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @EXT2_BLOCK_SIZE_BITS(i32) #1

declare dso_local i32 @sb_breadahead(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
