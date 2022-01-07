; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_fill_in_file_bmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_fill_in_file_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_inode_info = type { %struct.TYPE_2__, i32, %struct.buffer_head*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_inode = type { i32 }

@NILFS_I_BMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nilfs_inode_info*)* @nilfs_fill_in_file_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_fill_in_file_bmap(%struct.inode* %0, %struct.nilfs_inode_info* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_inode_info*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_inode_info* %1, %struct.nilfs_inode_info** %4, align 8
  %7 = load i32, i32* @NILFS_I_BMAP, align 4
  %8 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %9 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %8, i32 0, i32 3
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %14 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %13, i32 0, i32 2
  %15 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %15, %struct.buffer_head** %5, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = icmp ne %struct.buffer_head* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %23 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %27 = call %struct.nilfs_inode* @nilfs_ifile_map_inode(%struct.inode* %21, i32 %25, %struct.buffer_head* %26)
  store %struct.nilfs_inode* %27, %struct.nilfs_inode** %6, align 8
  %28 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %29 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nilfs_inode*, %struct.nilfs_inode** %6, align 8
  %32 = call i32 @nilfs_bmap_write(i32 %30, %struct.nilfs_inode* %31)
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %35 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %39 = call i32 @nilfs_ifile_unmap_inode(%struct.inode* %33, i32 %37, %struct.buffer_head* %38)
  br label %40

40:                                               ; preds = %12, %2
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.nilfs_inode* @nilfs_ifile_map_inode(%struct.inode*, i32, %struct.buffer_head*) #1

declare dso_local i32 @nilfs_bmap_write(i32, %struct.nilfs_inode*) #1

declare dso_local i32 @nilfs_ifile_unmap_inode(%struct.inode*, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
