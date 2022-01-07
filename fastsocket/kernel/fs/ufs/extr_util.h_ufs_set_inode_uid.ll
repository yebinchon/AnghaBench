; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_set_inode_uid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_set_inode_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_inode = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_12__ = type { i32 }

@UFS_UID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ufs_inode*, i32)* @ufs_set_inode_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_set_inode_uid(%struct.super_block* %0, %struct.ufs_inode* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ufs_inode*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ufs_inode* %1, %struct.ufs_inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.TYPE_12__* @UFS_SB(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UFS_UID_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %40 [
    i32 129, label %13
    i32 128, label %28
  ]

13:                                               ; preds = %3
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @cpu_to_fs32(%struct.super_block* %14, i32 %15)
  %17 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %18 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @cpu_to_fs16(%struct.super_block* %21, i32 %22)
  %24 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %25 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i8* %23, i8** %27, align 8
  br label %48

28:                                               ; preds = %3
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @cpu_to_fs32(%struct.super_block* %29, i32 %30)
  %32 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %33 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 65535
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 65535, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %3, %39
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @cpu_to_fs16(%struct.super_block* %41, i32 %42)
  %44 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %45 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 8
  br label %48

48:                                               ; preds = %40, %13
  ret void
}

declare dso_local %struct.TYPE_12__* @UFS_SB(%struct.super_block*) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_fs16(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
