; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_dentry_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_dentry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__*, %struct.inode* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_4__ = type { %struct.btrfs_root* }

@BTRFS_EMPTY_SUBVOL_DIR_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @btrfs_dentry_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_dentry_delete(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 1
  %8 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %8, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = icmp ne %struct.inode* %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call i32 @IS_ROOT(%struct.dentry* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %5, align 8
  br label %21

21:                                               ; preds = %15, %11, %1
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %27, align 8
  store %struct.btrfs_root* %28, %struct.btrfs_root** %4, align 8
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = call i64 @btrfs_root_refs(i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %42

34:                                               ; preds = %24
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i64 @btrfs_ino(%struct.inode* %35)
  %37 = load i64, i64* @BTRFS_EMPTY_SUBVOL_DIR_OBJECTID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %42

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %21
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %33
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local i64 @btrfs_ino(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
