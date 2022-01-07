; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_block_get_snapshot_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_block_get_snapshot_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_snapshot_list = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { %struct.nilfs_snapshot_list }
%struct.nilfs_checkpoint = type { %struct.nilfs_snapshot_list }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nilfs_snapshot_list* (%struct.inode*, i64, %struct.buffer_head*, i8*)* @nilfs_cpfile_block_get_snapshot_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nilfs_cpfile_header*, align 8
  %10 = alloca %struct.nilfs_checkpoint*, align 8
  %11 = alloca %struct.nilfs_snapshot_list*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %15, i64 %16, %struct.buffer_head* %17, i8* %18)
  store %struct.nilfs_checkpoint* %19, %struct.nilfs_checkpoint** %10, align 8
  %20 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %10, align 8
  %21 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %20, i32 0, i32 0
  store %struct.nilfs_snapshot_list* %21, %struct.nilfs_snapshot_list** %11, align 8
  br label %29

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %23, %struct.buffer_head* %24, i8* %25)
  store %struct.nilfs_cpfile_header* %26, %struct.nilfs_cpfile_header** %9, align 8
  %27 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %9, align 8
  %28 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %27, i32 0, i32 0
  store %struct.nilfs_snapshot_list* %28, %struct.nilfs_snapshot_list** %11, align 8
  br label %29

29:                                               ; preds = %22, %14
  %30 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %11, align 8
  ret %struct.nilfs_snapshot_list* %30
}

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
