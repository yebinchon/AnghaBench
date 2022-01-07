; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_setsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.iattr = type { i64, i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.btrfs_root* }

@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@BTRFS_INODE_ORDERED_DATA_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.iattr*)* @btrfs_setsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_setsize(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  store %struct.btrfs_root* %15, %struct.btrfs_root** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i64 @i_size_read(%struct.inode* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.iattr*, %struct.iattr** %5, align 8
  %19 = getelementptr inbounds %struct.iattr, %struct.iattr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.iattr*, %struct.iattr** %5, align 8
  %22 = getelementptr inbounds %struct.iattr, %struct.iattr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

28:                                               ; preds = %2
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ATTR_CTIME, align 4
  %35 = load i32, i32* @ATTR_MTIME, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @current_fs_time(i32 %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %32, %28
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @truncate_pagecache(%struct.inode* %53, i64 %54, i64 %55)
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @btrfs_cont_expand(%struct.inode* %57, i64 %58, i64 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %106

65:                                               ; preds = %52
  %66 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %67 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %66, i32 1)
  store %struct.btrfs_trans_handle* %67, %struct.btrfs_trans_handle** %7, align 8
  %68 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %69 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %73 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %72)
  store i32 %73, i32* %3, align 4
  br label %106

74:                                               ; preds = %65
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @i_size_write(%struct.inode* %75, i64 %76)
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = call i64 @i_size_read(%struct.inode* %79)
  %81 = call i32 @btrfs_ordered_update_i_size(%struct.inode* %78, i64 %80, i32* null)
  %82 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %82, %struct.btrfs_root* %83, %struct.inode* %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %87 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %88 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %86, %struct.btrfs_root* %87)
  br label %104

89:                                               ; preds = %48
  %90 = load i64, i64* %9, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* @BTRFS_INODE_ORDERED_DATA_CLOSE, align 4
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %94)
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = call i32 @set_bit(i32 %93, i32* %96)
  br label %98

98:                                               ; preds = %92, %89
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @truncate_setsize(%struct.inode* %99, i64 %100)
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = call i32 @btrfs_truncate(%struct.inode* %102)
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %98, %74
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %71, %63, %27
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @current_fs_time(i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i64, i64) #1

declare dso_local i32 @btrfs_cont_expand(%struct.inode*, i64, i64) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @btrfs_ordered_update_i_size(%struct.inode*, i64, i32*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @btrfs_truncate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
