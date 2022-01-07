; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_xattr.c___btrfs_setxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_xattr.c___btrfs_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__btrfs_setxattr(%struct.btrfs_trans_handle* %0, %struct.inode* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_root*, align 8
  %15 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  store %struct.btrfs_root* %19, %struct.btrfs_root** %14, align 8
  %20 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %21 = icmp ne %struct.btrfs_trans_handle* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @do_setxattr(%struct.btrfs_trans_handle* %23, %struct.inode* %24, i8* %25, i8* %26, i64 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %67

30:                                               ; preds = %6
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %32 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %31, i32 2)
  store %struct.btrfs_trans_handle* %32, %struct.btrfs_trans_handle** %8, align 8
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %34 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %38 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %37)
  store i32 %38, i32* %7, align 4
  br label %67

39:                                               ; preds = %30
  %40 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @do_setxattr(%struct.btrfs_trans_handle* %40, %struct.inode* %41, i8* %42, i8* %43, i64 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %62

50:                                               ; preds = %39
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = call i32 @inode_inc_iversion(%struct.inode* %51)
  %53 = load i32, i32* @CURRENT_TIME, align 4
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %56, %struct.btrfs_root* %57, %struct.inode* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @BUG_ON(i32 %60)
  br label %62

62:                                               ; preds = %50, %49
  %63 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %65 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %63, %struct.btrfs_root* %64)
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %62, %36, %22
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @do_setxattr(%struct.btrfs_trans_handle*, %struct.inode*, i8*, i8*, i64, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
