; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diInitInode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diInitInode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.iag = type { i32, i32* }
%struct.jfs_sb_info = type { i32 }
%struct.jfs_inode_info = type { i32, i32, i32 }

@L2INOSPERIAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32, i32, %struct.iag*)* @diInitInode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diInitInode(%struct.inode* %0, i32 %1, i32 %2, i32 %3, %struct.iag* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iag*, align 8
  %11 = alloca %struct.jfs_sb_info*, align 8
  %12 = alloca %struct.jfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.iag* %4, %struct.iag** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.jfs_sb_info* @JFS_SBI(i32 %15)
  store %struct.jfs_sb_info* %16, %struct.jfs_sb_info** %11, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %17)
  store %struct.jfs_inode_info* %18, %struct.jfs_inode_info** %12, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @L2INOSPERIAG, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iag*, %struct.iag** %10, align 8
  %27 = getelementptr inbounds %struct.iag, %struct.iag* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %12, align 8
  %34 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.iag*, %struct.iag** %10, align 8
  %36 = getelementptr inbounds %struct.iag, %struct.iag* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le64_to_cpu(i32 %37)
  %39 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %11, align 8
  %40 = call i32 @BLKTOAG(i32 %38, %struct.jfs_sb_info* %39)
  %41 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %12, align 8
  %42 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %12, align 8
  %44 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 4
  ret void
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @BLKTOAG(i32, %struct.jfs_sb_info*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
