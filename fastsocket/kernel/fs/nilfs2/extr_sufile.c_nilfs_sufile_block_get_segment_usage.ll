; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_block_get_segment_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_block_get_segment_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_segment_usage = type opaque
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nilfs_segment_usage* (%struct.inode*, i32, %struct.buffer_head*, i8*)* @nilfs_sufile_block_get_segment_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %11 = call i32 @bh_offset(%struct.buffer_head* %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr i8, i8* %9, i64 %12
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @nilfs_sufile_get_offset(%struct.inode* %14, i32 %15)
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %16, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %13, i64 %22
  %24 = bitcast i8* %23 to %struct.nilfs_segment_usage*
  ret %struct.nilfs_segment_usage* %24
}

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_sufile_get_offset(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
