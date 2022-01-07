; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_block_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_block_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_checkpoint = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.buffer_head*, i8*)* @nilfs_cpfile_block_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_cpfile_block_init(%struct.inode* %0, %struct.buffer_head* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nilfs_checkpoint*, align 8
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
  %15 = bitcast i8* %14 to %struct.nilfs_checkpoint*
  store %struct.nilfs_checkpoint* %15, %struct.nilfs_checkpoint** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @nilfs_cpfile_checkpoints_per_block(%struct.inode* %20)
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %26, %3
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %9, align 4
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %28 = call i32 @nilfs_checkpoint_set_invalid(%struct.nilfs_checkpoint* %27)
  %29 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %30 = bitcast %struct.nilfs_checkpoint* %29 to i8*
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr i8, i8* %30, i64 %31
  %33 = bitcast i8* %32 to %struct.nilfs_checkpoint*
  store %struct.nilfs_checkpoint* %33, %struct.nilfs_checkpoint** %7, align 8
  br label %22

34:                                               ; preds = %22
  ret void
}

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_checkpoints_per_block(%struct.inode*) #1

declare dso_local i32 @nilfs_checkpoint_set_invalid(%struct.nilfs_checkpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
