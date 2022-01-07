; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_inode_ag_iterator_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_inode_ag_iterator_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_inode = type opaque
%struct.xfs_perag = type { i64 }
%struct.xfs_inode.0 = type opaque

@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_inode_ag_iterator_tag(%struct.xfs_mount* %0, i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_perag*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)* %1, i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %45, %5
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %17 = load i64, i64* %14, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call %struct.xfs_perag* @xfs_perag_get_tag(%struct.xfs_mount* %16, i64 %17, i32 %18)
  store %struct.xfs_perag* %19, %struct.xfs_perag** %11, align 8
  %20 = icmp ne %struct.xfs_perag* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load %struct.xfs_perag*, %struct.xfs_perag** %11, align 8
  %23 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %14, align 8
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %27 = load %struct.xfs_perag*, %struct.xfs_perag** %11, align 8
  %28 = load i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)*, i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)** %7, align 8
  %29 = bitcast i32 (%struct.xfs_inode*, %struct.xfs_perag*, i32, i8*)* %28 to i32 (%struct.xfs_inode.0*, %struct.xfs_perag*, i32, i8*)*
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @xfs_inode_ag_walk(%struct.xfs_mount* %26, %struct.xfs_perag* %27, i32 (%struct.xfs_inode.0*, %struct.xfs_perag*, i32, i8*)* %29, i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.xfs_perag*, %struct.xfs_perag** %11, align 8
  %35 = call i32 @xfs_perag_put(%struct.xfs_perag* %34)
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %21
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @EFSCORRUPTED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %46

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %21
  br label %15

46:                                               ; preds = %43, %15
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @XFS_ERROR(i32 %47)
  ret i32 %48
}

declare dso_local %struct.xfs_perag* @xfs_perag_get_tag(%struct.xfs_mount*, i64, i32) #1

declare dso_local i32 @xfs_inode_ag_walk(%struct.xfs_mount*, %struct.xfs_perag*, i32 (%struct.xfs_inode.0*, %struct.xfs_perag*, i32, i8*)*, i32, i8*, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
