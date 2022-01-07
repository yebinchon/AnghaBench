; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_get_inode_uid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_get_inode_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_inode = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@UFS_UID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ufs_inode*)* @ufs_get_inode_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_get_inode_uid(%struct.super_block* %0, %struct.ufs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ufs_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ufs_inode* %1, %struct.ufs_inode** %5, align 8
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = call %struct.TYPE_12__* @UFS_SB(%struct.super_block* %6)
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UFS_UID_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %36 [
    i32 129, label %12
    i32 128, label %20
  ]

12:                                               ; preds = %2
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %15 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fs32_to_cpu(%struct.super_block* %13, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %22 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 65535
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %30 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fs32_to_cpu(%struct.super_block* %28, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %2, %35
  %37 = load %struct.super_block*, %struct.super_block** %4, align 8
  %38 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %39 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fs16_to_cpu(%struct.super_block* %37, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %27, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_12__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @fs16_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
