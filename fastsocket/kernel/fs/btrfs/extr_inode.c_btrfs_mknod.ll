; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32* }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.btrfs_trans_handle = type { i64, i32, i32* }
%struct.btrfs_root = type { i32 }
%struct.TYPE_4__ = type { %struct.btrfs_root* }

@EINVAL = common dso_local global i32 0, align 4
@btrfs_special_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @btrfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %11, align 8
  store %struct.inode* null, %struct.inode** %12, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @new_valid_dev(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %128

28:                                               ; preds = %4
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %30 = call %struct.inode* @btrfs_start_transaction(%struct.btrfs_root* %29, i32 5)
  %31 = bitcast %struct.inode* %30 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %31, %struct.btrfs_trans_handle** %10, align 8
  %32 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %33 = bitcast %struct.btrfs_trans_handle* %32 to %struct.inode*
  %34 = call i64 @IS_ERR(%struct.inode* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %38 = bitcast %struct.btrfs_trans_handle* %37 to %struct.inode*
  %39 = call i32 @PTR_ERR(%struct.inode* %38)
  store i32 %39, i32* %5, align 4
  br label %128

40:                                               ; preds = %28
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %42 = call i32 @btrfs_find_free_ino(%struct.btrfs_root* %41, i32* %15)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %108

46:                                               ; preds = %40
  %47 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %48 = bitcast %struct.btrfs_trans_handle* %47 to %struct.inode*
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dentry*, %struct.dentry** %7, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = call i32 @btrfs_ino(%struct.inode* %59)
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call %struct.inode* @btrfs_new_inode(%struct.inode* %48, %struct.btrfs_root* %49, %struct.inode* %50, i32 %54, i32 %58, i32 %60, i32 %61, i32 %62, i32* %17)
  store %struct.inode* %63, %struct.inode** %12, align 8
  %64 = load %struct.inode*, %struct.inode** %12, align 8
  %65 = call i64 @IS_ERR(%struct.inode* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %46
  %68 = load %struct.inode*, %struct.inode** %12, align 8
  %69 = call i32 @PTR_ERR(%struct.inode* %68)
  store i32 %69, i32* %13, align 4
  br label %108

70:                                               ; preds = %46
  %71 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %72 = bitcast %struct.btrfs_trans_handle* %71 to %struct.inode*
  %73 = load %struct.inode*, %struct.inode** %12, align 8
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = call i32 @btrfs_init_inode_security(%struct.inode* %72, %struct.inode* %73, %struct.inode* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 1, i32* %14, align 4
  br label %108

79:                                               ; preds = %70
  %80 = load %struct.inode*, %struct.inode** %12, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  store i32* @btrfs_special_inode_operations, i32** %81, align 8
  %82 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %83 = bitcast %struct.btrfs_trans_handle* %82 to %struct.inode*
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = load %struct.dentry*, %struct.dentry** %7, align 8
  %86 = load %struct.inode*, %struct.inode** %12, align 8
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @btrfs_add_nondir(%struct.inode* %83, %struct.inode* %84, %struct.dentry* %85, %struct.inode* %86, i32 0, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  store i32 1, i32* %14, align 4
  br label %107

92:                                               ; preds = %79
  %93 = load %struct.inode*, %struct.inode** %12, align 8
  %94 = load %struct.inode*, %struct.inode** %12, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @init_special_inode(%struct.inode* %93, i32 %96, i32 %97)
  %99 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %100 = bitcast %struct.btrfs_trans_handle* %99 to %struct.inode*
  %101 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %102 = load %struct.inode*, %struct.inode** %12, align 8
  %103 = call i32 @btrfs_update_inode(%struct.inode* %100, %struct.btrfs_root* %101, %struct.inode* %102)
  %104 = load %struct.dentry*, %struct.dentry** %7, align 8
  %105 = load %struct.inode*, %struct.inode** %12, align 8
  %106 = call i32 @d_instantiate(%struct.dentry* %104, %struct.inode* %105)
  br label %107

107:                                              ; preds = %92, %91
  br label %108

108:                                              ; preds = %107, %78, %67, %45
  %109 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %110 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %16, align 8
  %112 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %113 = bitcast %struct.btrfs_trans_handle* %112 to %struct.inode*
  %114 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %115 = call i32 @btrfs_end_transaction(%struct.inode* %113, %struct.btrfs_root* %114)
  %116 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %117 = load i64, i64* %16, align 8
  %118 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_root* %116, i64 %117)
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %108
  %122 = load %struct.inode*, %struct.inode** %12, align 8
  %123 = call i32 @inode_dec_link_count(%struct.inode* %122)
  %124 = load %struct.inode*, %struct.inode** %12, align 8
  %125 = call i32 @iput(%struct.inode* %124)
  br label %126

126:                                              ; preds = %121, %108
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %36, %25
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @new_valid_dev(i32) #1

declare dso_local %struct.inode* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_find_free_ino(%struct.btrfs_root*, i32*) #1

declare dso_local %struct.inode* @btrfs_new_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @btrfs_init_inode_security(%struct.inode*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @btrfs_add_nondir(%struct.inode*, %struct.inode*, %struct.dentry*, %struct.inode*, i32, i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.inode*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_root*, i64) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
