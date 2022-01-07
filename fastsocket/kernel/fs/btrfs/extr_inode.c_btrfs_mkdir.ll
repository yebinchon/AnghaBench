; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32*, i32* }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.btrfs_trans_handle = type { i64, i32*, i32* }
%struct.btrfs_root = type { i32 }
%struct.TYPE_4__ = type { %struct.btrfs_root* }

@S_IFDIR = common dso_local global i32 0, align 4
@btrfs_dir_inode_operations = common dso_local global i32 0, align 4
@btrfs_dir_file_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @btrfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  store %struct.btrfs_root* %19, %struct.btrfs_root** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 1, i64* %15, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %21 = call %struct.inode* @btrfs_start_transaction(%struct.btrfs_root* %20, i32 5)
  %22 = bitcast %struct.inode* %21 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %22, %struct.btrfs_trans_handle** %9, align 8
  %23 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %24 = bitcast %struct.btrfs_trans_handle* %23 to %struct.inode*
  %25 = call i64 @IS_ERR(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %29 = bitcast %struct.btrfs_trans_handle* %28 to %struct.inode*
  %30 = call i32 @PTR_ERR(%struct.inode* %29)
  store i32 %30, i32* %4, align 4
  br label %127

31:                                               ; preds = %3
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %33 = call i32 @btrfs_find_free_ino(%struct.btrfs_root* %32, i32* %13)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %109

37:                                               ; preds = %31
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %39 = bitcast %struct.btrfs_trans_handle* %38 to %struct.inode*
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call i32 @btrfs_ino(%struct.inode* %50)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @S_IFDIR, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.inode* @btrfs_new_inode(%struct.inode* %39, %struct.btrfs_root* %40, %struct.inode* %41, i32 %45, i32 %49, i32 %51, i32 %52, i32 %55, i32* %14)
  store %struct.inode* %56, %struct.inode** %8, align 8
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i64 @IS_ERR(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %37
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call i32 @PTR_ERR(%struct.inode* %61)
  store i32 %62, i32* %11, align 4
  br label %109

63:                                               ; preds = %37
  store i32 1, i32* %12, align 4
  %64 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %65 = bitcast %struct.btrfs_trans_handle* %64 to %struct.inode*
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call i32 @btrfs_init_inode_security(%struct.inode* %65, %struct.inode* %66, %struct.inode* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %109

72:                                               ; preds = %63
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 2
  store i32* @btrfs_dir_inode_operations, i32** %74, align 8
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  store i32* @btrfs_dir_file_operations, i32** %76, align 8
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = call i32 @btrfs_i_size_write(%struct.inode* %77, i32 0)
  %79 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %80 = bitcast %struct.btrfs_trans_handle* %79 to %struct.inode*
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = call i32 @btrfs_update_inode(%struct.inode* %80, %struct.btrfs_root* %81, %struct.inode* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  br label %109

87:                                               ; preds = %72
  %88 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %89 = bitcast %struct.btrfs_trans_handle* %88 to %struct.inode*
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = load %struct.dentry*, %struct.dentry** %6, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dentry*, %struct.dentry** %6, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @btrfs_add_link(%struct.inode* %89, %struct.inode* %90, %struct.inode* %91, i32 %95, i32 %99, i32 0, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %87
  br label %109

105:                                              ; preds = %87
  %106 = load %struct.dentry*, %struct.dentry** %6, align 8
  %107 = load %struct.inode*, %struct.inode** %8, align 8
  %108 = call i32 @d_instantiate(%struct.dentry* %106, %struct.inode* %107)
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %105, %104, %86, %71, %60, %36
  %110 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %111 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %15, align 8
  %113 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %114 = bitcast %struct.btrfs_trans_handle* %113 to %struct.inode*
  %115 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %116 = call i32 @btrfs_end_transaction(%struct.inode* %114, %struct.btrfs_root* %115)
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load %struct.inode*, %struct.inode** %8, align 8
  %121 = call i32 @iput(%struct.inode* %120)
  br label %122

122:                                              ; preds = %119, %109
  %123 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %124 = load i64, i64* %15, align 8
  %125 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_root* %123, i64 %124)
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %122, %27
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_find_free_ino(%struct.btrfs_root*, i32*) #1

declare dso_local %struct.inode* @btrfs_new_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @btrfs_init_inode_security(%struct.inode*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @btrfs_i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_add_link(%struct.inode*, %struct.inode*, %struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.inode*, %struct.btrfs_root*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_root*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
