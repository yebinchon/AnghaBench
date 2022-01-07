; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_inode_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_inode_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.btrfs_key = type { i64 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_path = type { i32* }
%struct.btrfs_root = type { i32 }
%struct.TYPE_4__ = type { %struct.btrfs_root* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.btrfs_key*)* @btrfs_inode_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_inode_by_name(%struct.inode* %0, %struct.dentry* %1, %struct.btrfs_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.btrfs_key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_dir_item*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %24, align 8
  store %struct.btrfs_root* %25, %struct.btrfs_root** %12, align 8
  store i32 0, i32* %13, align 4
  %26 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %26, %struct.btrfs_path** %11, align 8
  %27 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %28 = icmp ne %struct.btrfs_path* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %67

32:                                               ; preds = %3
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i32 @btrfs_ino(%struct.inode* %35)
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32* null, %struct.btrfs_root* %33, %struct.btrfs_path* %34, i32 %36, i8* %37, i32 %38, i32 0)
  store %struct.btrfs_dir_item* %39, %struct.btrfs_dir_item** %10, align 8
  %40 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %41 = call i64 @IS_ERR(%struct.btrfs_dir_item* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %45 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %43, %32
  %47 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %48 = call i64 @IS_ERR_OR_NULL(%struct.btrfs_dir_item* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %64

51:                                               ; preds = %46
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %53 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %58 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %59 = call i32 @btrfs_dir_item_key_to_cpu(i32 %56, %struct.btrfs_dir_item* %57, %struct.btrfs_key* %58)
  br label %60

60:                                               ; preds = %64, %51
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %62 = call i32 @btrfs_free_path(%struct.btrfs_path* %61)
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %4, align 4
  br label %67

64:                                               ; preds = %50
  %65 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %66 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %60

67:                                               ; preds = %60, %29
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i8*, i32, i32) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_dir_item_key_to_cpu(i32, %struct.btrfs_dir_item*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
