; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.dentry*, %struct.inode* }
%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { i64 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@EXDEV = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @btrfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  store %struct.btrfs_root* %19, %struct.btrfs_root** %9, align 8
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %24 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %28, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EXDEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %117

36:                                               ; preds = %3
  %37 = load %struct.inode*, %struct.inode** %10, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EMLINK, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %117

44:                                               ; preds = %36
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i32 @btrfs_set_inode_index(%struct.inode* %45, i32* %11)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %104

50:                                               ; preds = %44
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %52 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %51, i32 5)
  store %struct.btrfs_trans_handle* %52, %struct.btrfs_trans_handle** %8, align 8
  %53 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %54 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %58 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %57)
  store i32 %58, i32* %13, align 4
  br label %104

59:                                               ; preds = %50
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = call i32 @btrfs_inc_nlink(%struct.inode* %60)
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = call i32 @inode_inc_iversion(%struct.inode* %62)
  %64 = load i32, i32* @CURRENT_TIME, align 4
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = call i32 @ihold(%struct.inode* %67)
  %69 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @btrfs_add_nondir(%struct.btrfs_trans_handle* %69, %struct.inode* %70, %struct.dentry* %71, %struct.inode* %72, i32 1, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %59
  store i32 1, i32* %14, align 4
  br label %97

78:                                               ; preds = %59
  %79 = load %struct.dentry*, %struct.dentry** %7, align 8
  %80 = getelementptr inbounds %struct.dentry, %struct.dentry* %79, i32 0, i32 0
  %81 = load %struct.dentry*, %struct.dentry** %80, align 8
  store %struct.dentry* %81, %struct.dentry** %15, align 8
  %82 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %82, %struct.btrfs_root* %83, %struct.inode* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %104

89:                                               ; preds = %78
  %90 = load %struct.dentry*, %struct.dentry** %7, align 8
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = call i32 @d_instantiate(%struct.dentry* %90, %struct.inode* %91)
  %93 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %94 = load %struct.inode*, %struct.inode** %10, align 8
  %95 = load %struct.dentry*, %struct.dentry** %15, align 8
  %96 = call i32 @btrfs_log_new_name(%struct.btrfs_trans_handle* %93, %struct.inode* %94, i32* null, %struct.dentry* %95)
  br label %97

97:                                               ; preds = %89, %77
  %98 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %99 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %12, align 8
  %101 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %103 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %101, %struct.btrfs_root* %102)
  br label %104

104:                                              ; preds = %97, %88, %56, %49
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = call i32 @inode_dec_link_count(%struct.inode* %108)
  %110 = load %struct.inode*, %struct.inode** %10, align 8
  %111 = call i32 @iput(%struct.inode* %110)
  br label %112

112:                                              ; preds = %107, %104
  %113 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_root* %113, i64 %114)
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %41, %33
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_set_inode_index(%struct.inode*, i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_inc_nlink(%struct.inode*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @btrfs_add_nondir(%struct.btrfs_trans_handle*, %struct.inode*, %struct.dentry*, %struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @btrfs_log_new_name(%struct.btrfs_trans_handle*, %struct.inode*, i32*, %struct.dentry*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_root*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
