; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_export.c_btrfs_fh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_export.c_btrfs_fh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32 }
%struct.btrfs_fid = type { i32, i32, i32 }

@FILEID_BTRFS_WITH_PARENT = common dso_local global i32 0, align 4
@BTRFS_FID_SIZE_CONNECTABLE = common dso_local global i32 0, align 4
@FILEID_BTRFS_WITH_PARENT_ROOT = common dso_local global i32 0, align 4
@BTRFS_FID_SIZE_CONNECTABLE_ROOT = common dso_local global i32 0, align 4
@FILEID_BTRFS_WITHOUT_PARENT = common dso_local global i32 0, align 4
@BTRFS_FID_SIZE_NON_CONNECTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @btrfs_fh_to_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @btrfs_fh_to_dentry(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.fid*, %struct.fid** %7, align 8
  %15 = bitcast %struct.fid* %14 to %struct.btrfs_fid*
  store %struct.btrfs_fid* %15, %struct.btrfs_fid** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @FILEID_BTRFS_WITH_PARENT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @FILEID_BTRFS_WITH_PARENT_ROOT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE_ROOT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @FILEID_BTRFS_WITHOUT_PARENT, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @BTRFS_FID_SIZE_NON_CONNECTABLE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %55

40:                                               ; preds = %35, %27, %19
  %41 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %42 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %45 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %48 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.super_block*, %struct.super_block** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call %struct.dentry* @btrfs_get_dentry(%struct.super_block* %50, i32 %51, i32 %52, i32 %53, i32 1)
  store %struct.dentry* %54, %struct.dentry** %5, align 8
  br label %55

55:                                               ; preds = %40, %39
  %56 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %56
}

declare dso_local %struct.dentry* @btrfs_get_dentry(%struct.super_block*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
