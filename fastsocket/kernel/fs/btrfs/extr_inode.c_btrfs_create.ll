; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_7__*, i32*, i32* }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.dentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nameidata = type { i32 }
%struct.btrfs_trans_handle = type { i64, %struct.TYPE_7__*, i32*, i32* }
%struct.btrfs_root = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.btrfs_root* }
%struct.TYPE_9__ = type { i32* }

@btrfs_file_operations = common dso_local global i32 0, align 4
@btrfs_file_inode_operations = common dso_local global i32 0, align 4
@btrfs_aops = common dso_local global i32 0, align 4
@btrfs_extent_io_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @btrfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %11, align 8
  store %struct.inode* null, %struct.inode** %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %23 = call %struct.inode* @btrfs_start_transaction(%struct.btrfs_root* %22, i32 5)
  %24 = bitcast %struct.inode* %23 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %24, %struct.btrfs_trans_handle** %10, align 8
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %26 = bitcast %struct.btrfs_trans_handle* %25 to %struct.inode*
  %27 = call i64 @IS_ERR(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %31 = bitcast %struct.btrfs_trans_handle* %30 to %struct.inode*
  %32 = call i32 @PTR_ERR(%struct.inode* %31)
  store i32 %32, i32* %5, align 4
  br label %128

33:                                               ; preds = %4
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %35 = call i32 @btrfs_find_free_ino(%struct.btrfs_root* %34, i32* %16)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %108

39:                                               ; preds = %33
  %40 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %41 = bitcast %struct.btrfs_trans_handle* %40 to %struct.inode*
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dentry*, %struct.dentry** %7, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call i32 @btrfs_ino(%struct.inode* %52)
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call %struct.inode* @btrfs_new_inode(%struct.inode* %41, %struct.btrfs_root* %42, %struct.inode* %43, i32 %47, i32 %51, i32 %53, i32 %54, i32 %55, i32* %17)
  store %struct.inode* %56, %struct.inode** %12, align 8
  %57 = load %struct.inode*, %struct.inode** %12, align 8
  %58 = call i64 @IS_ERR(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %39
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = call i32 @PTR_ERR(%struct.inode* %61)
  store i32 %62, i32* %14, align 4
  br label %108

63:                                               ; preds = %39
  %64 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %65 = bitcast %struct.btrfs_trans_handle* %64 to %struct.inode*
  %66 = load %struct.inode*, %struct.inode** %12, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call i32 @btrfs_init_inode_security(%struct.inode* %65, %struct.inode* %66, %struct.inode* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 1, i32* %13, align 4
  br label %108

72:                                               ; preds = %63
  %73 = load %struct.inode*, %struct.inode** %12, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 3
  store i32* @btrfs_file_operations, i32** %74, align 8
  %75 = load %struct.inode*, %struct.inode** %12, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  store i32* @btrfs_file_inode_operations, i32** %76, align 8
  %77 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %78 = bitcast %struct.btrfs_trans_handle* %77 to %struct.inode*
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = load %struct.dentry*, %struct.dentry** %7, align 8
  %81 = load %struct.inode*, %struct.inode** %12, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @btrfs_add_nondir(%struct.inode* %78, %struct.inode* %79, %struct.dentry* %80, %struct.inode* %81, i32 0, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  store i32 1, i32* %13, align 4
  br label %107

87:                                               ; preds = %72
  %88 = load %struct.inode*, %struct.inode** %12, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32* @btrfs_aops, i32** %91, align 8
  %92 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %93 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.inode*, %struct.inode** %12, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32* %95, i32** %99, align 8
  %100 = load %struct.inode*, %struct.inode** %12, align 8
  %101 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store i32* @btrfs_extent_io_ops, i32** %103, align 8
  %104 = load %struct.dentry*, %struct.dentry** %7, align 8
  %105 = load %struct.inode*, %struct.inode** %12, align 8
  %106 = call i32 @d_instantiate(%struct.dentry* %104, %struct.inode* %105)
  br label %107

107:                                              ; preds = %87, %86
  br label %108

108:                                              ; preds = %107, %71, %60, %38
  %109 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %110 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %15, align 8
  %112 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %113 = bitcast %struct.btrfs_trans_handle* %112 to %struct.inode*
  %114 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %115 = call i32 @btrfs_end_transaction(%struct.inode* %113, %struct.btrfs_root* %114)
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load %struct.inode*, %struct.inode** %12, align 8
  %120 = call i32 @inode_dec_link_count(%struct.inode* %119)
  %121 = load %struct.inode*, %struct.inode** %12, align 8
  %122 = call i32 @iput(%struct.inode* %121)
  br label %123

123:                                              ; preds = %118, %108
  %124 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_root* %124, i64 %125)
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %123, %29
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_10__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_find_free_ino(%struct.btrfs_root*, i32*) #1

declare dso_local %struct.inode* @btrfs_new_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @btrfs_init_inode_security(%struct.inode*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @btrfs_add_nondir(%struct.inode*, %struct.inode*, %struct.dentry*, %struct.inode*, i32, i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.inode*, %struct.btrfs_root*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_root*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
