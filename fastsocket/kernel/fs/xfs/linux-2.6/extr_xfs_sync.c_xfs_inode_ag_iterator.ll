; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_inode_ag_iterator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_inode_ag_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_inode = type opaque
%struct.xfs_perag = type { i64 }
%struct.xfs_inode.0 = type opaque

@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_inode_ag_iterator(%struct.xfs_mount* %0, i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.xfs_perag*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)* %1, i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %41, %4
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %15 = load i64, i64* %12, align 8
  %16 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %14, i64 %15)
  store %struct.xfs_perag* %16, %struct.xfs_perag** %9, align 8
  %17 = icmp ne %struct.xfs_perag* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = load %struct.xfs_perag*, %struct.xfs_perag** %9, align 8
  %20 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %12, align 8
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %24 = load %struct.xfs_perag*, %struct.xfs_perag** %9, align 8
  %25 = load i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)*, i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)** %6, align 8
  %26 = bitcast i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)* %25 to i32 (%struct.xfs_inode.0*, %struct.xfs_perag*, i32, i8*)*
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @xfs_inode_ag_walk(%struct.xfs_mount* %23, %struct.xfs_perag* %24, i32 (%struct.xfs_inode.0*, %struct.xfs_perag*, i32, i8*)* %26, i32 %27, i8* %28, i32 -1)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.xfs_perag*, %struct.xfs_perag** %9, align 8
  %31 = call i32 @xfs_perag_put(%struct.xfs_perag* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %18
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @EFSCORRUPTED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %42

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %18
  br label %13

42:                                               ; preds = %39, %13
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @XFS_ERROR(i32 %43)
  ret i32 %44
}

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_inode_ag_walk(%struct.xfs_mount*, %struct.xfs_perag*, i32 (%struct.xfs_inode.0*, %struct.xfs_perag*, i32, i8*)*, i32, i8*, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
