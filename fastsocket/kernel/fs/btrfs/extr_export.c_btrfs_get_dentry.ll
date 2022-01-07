; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_export.c_btrfs_get_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_export.c_btrfs_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, i32*, i32 }
%struct.super_block = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_root = type { i64, i32*, i32 }
%struct.inode = type { i64, i32*, i32 }
%struct.btrfs_key = type { i64, i64 }

@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@ESTALE = common dso_local global i32 0, align 4
@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4
@btrfs_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i64, i64, i64, i32)* @btrfs_get_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @btrfs_get_dentry(%struct.super_block* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.btrfs_root*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.btrfs_key, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = call %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block* %19)
  store %struct.btrfs_fs_info* %20, %struct.btrfs_fs_info** %12, align 8
  store i32 0, i32* %18, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i32, i32* @ESTALE, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.inode* @ERR_PTR(i32 %26)
  %28 = bitcast %struct.inode* %27 to %struct.dentry*
  store %struct.dentry* %28, %struct.dentry** %6, align 8
  br label %114

29:                                               ; preds = %5
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %33 = call i32 @btrfs_set_key_type(%struct.btrfs_key* %16, i32 %32)
  %34 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 0
  store i64 -1, i64* %34, align 8
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 0
  %37 = call i32 @srcu_read_lock(i32* %36)
  store i32 %37, i32* %17, align 4
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %39 = call %struct.inode* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info* %38, %struct.btrfs_key* %16)
  %40 = bitcast %struct.inode* %39 to %struct.btrfs_root*
  store %struct.btrfs_root* %40, %struct.btrfs_root** %13, align 8
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %42 = bitcast %struct.btrfs_root* %41 to %struct.inode*
  %43 = call i64 @IS_ERR(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %47 = bitcast %struct.btrfs_root* %46 to %struct.inode*
  %48 = call i32 @PTR_ERR(%struct.inode* %47)
  store i32 %48, i32* %18, align 4
  br label %106

49:                                               ; preds = %29
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 2
  %52 = call i64 @btrfs_root_refs(i32* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %18, align 4
  br label %106

57:                                               ; preds = %49
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %61 = call i32 @btrfs_set_key_type(%struct.btrfs_key* %16, i32 %60)
  %62 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.super_block*, %struct.super_block** %7, align 8
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %65 = bitcast %struct.btrfs_root* %64 to %struct.inode*
  %66 = call %struct.inode* @btrfs_iget(%struct.super_block* %63, %struct.btrfs_key* %16, %struct.inode* %65, i32* null)
  store %struct.inode* %66, %struct.inode** %15, align 8
  %67 = load %struct.inode*, %struct.inode** %15, align 8
  %68 = call i64 @IS_ERR(%struct.inode* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load %struct.inode*, %struct.inode** %15, align 8
  %72 = call i32 @PTR_ERR(%struct.inode* %71)
  store i32 %72, i32* %18, align 4
  br label %106

73:                                               ; preds = %57
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %75 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %74, i32 0, i32 0
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @srcu_read_unlock(i32* %75, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.inode*, %struct.inode** %15, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.inode*, %struct.inode** %15, align 8
  %88 = call i32 @iput(%struct.inode* %87)
  %89 = load i32, i32* @ESTALE, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.inode* @ERR_PTR(i32 %90)
  %92 = bitcast %struct.inode* %91 to %struct.dentry*
  store %struct.dentry* %92, %struct.dentry** %6, align 8
  br label %114

93:                                               ; preds = %80, %73
  %94 = load %struct.inode*, %struct.inode** %15, align 8
  %95 = call %struct.inode* @d_obtain_alias(%struct.inode* %94)
  %96 = bitcast %struct.inode* %95 to %struct.dentry*
  store %struct.dentry* %96, %struct.dentry** %14, align 8
  %97 = load %struct.dentry*, %struct.dentry** %14, align 8
  %98 = bitcast %struct.dentry* %97 to %struct.inode*
  %99 = call i64 @IS_ERR(%struct.inode* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = load %struct.dentry*, %struct.dentry** %14, align 8
  %103 = getelementptr inbounds %struct.dentry, %struct.dentry* %102, i32 0, i32 1
  store i32* @btrfs_dentry_operations, i32** %103, align 8
  br label %104

104:                                              ; preds = %101, %93
  %105 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %105, %struct.dentry** %6, align 8
  br label %114

106:                                              ; preds = %70, %54, %45
  %107 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %108 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %107, i32 0, i32 0
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @srcu_read_unlock(i32* %108, i32 %109)
  %111 = load i32, i32* %18, align 4
  %112 = call %struct.inode* @ERR_PTR(i32 %111)
  %113 = bitcast %struct.inode* %112 to %struct.dentry*
  store %struct.dentry* %113, %struct.dentry** %6, align 8
  br label %114

114:                                              ; preds = %106, %104, %86, %24
  %115 = load %struct.dentry*, %struct.dentry** %6, align 8
  ret %struct.dentry* %115
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @btrfs_set_key_type(%struct.btrfs_key*, i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.inode* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info*, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local %struct.inode* @btrfs_iget(%struct.super_block*, %struct.btrfs_key*, %struct.inode*, i32*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
