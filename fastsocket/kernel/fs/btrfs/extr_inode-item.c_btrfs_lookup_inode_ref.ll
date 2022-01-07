; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-item.c_btrfs_lookup_inode_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-item.c_btrfs_lookup_inode_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode_ref = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i8*, i32, i8* }

@BTRFS_INODE_REF_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_inode_ref* @btrfs_lookup_inode_ref(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i8* %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.btrfs_inode_ref*, align 8
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.btrfs_key, align 8
  %19 = alloca %struct.btrfs_inode_ref*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %10, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 -1, i32 0
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %21, align 4
  %30 = load i8*, i8** %15, align 8
  %31 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* @BTRFS_INODE_REF_KEY, align 4
  %33 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* %21, align 4
  %41 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %36, %struct.btrfs_root* %37, %struct.btrfs_key* %18, %struct.btrfs_path* %38, i32 %39, i32 %40)
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %22, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %8
  %45 = load i32, i32* %22, align 4
  %46 = call %struct.btrfs_inode_ref* @ERR_PTR(i32 %45)
  store %struct.btrfs_inode_ref* %46, %struct.btrfs_inode_ref** %9, align 8
  br label %60

47:                                               ; preds = %8
  %48 = load i32, i32* %22, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store %struct.btrfs_inode_ref* null, %struct.btrfs_inode_ref** %9, align 8
  br label %60

51:                                               ; preds = %47
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @find_name_in_backref(%struct.btrfs_path* %52, i8* %53, i32 %54, %struct.btrfs_inode_ref** %19)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store %struct.btrfs_inode_ref* null, %struct.btrfs_inode_ref** %9, align 8
  br label %60

58:                                               ; preds = %51
  %59 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %19, align 8
  store %struct.btrfs_inode_ref* %59, %struct.btrfs_inode_ref** %9, align 8
  br label %60

60:                                               ; preds = %58, %57, %50, %44
  %61 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %9, align 8
  ret %struct.btrfs_inode_ref* %61
}

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.btrfs_inode_ref* @ERR_PTR(i32) #1

declare dso_local i32 @find_name_in_backref(%struct.btrfs_path*, i8*, i32, %struct.btrfs_inode_ref**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
