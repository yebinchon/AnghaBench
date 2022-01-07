; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_lookup_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_lookup_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.dentry = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.btrfs_root = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.btrfs_key = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.btrfs_root* }

@btrfs_dentry_operations = common dso_local global i32 0, align 4
@BTRFS_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_ROOT_ITEM_KEY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @btrfs_lookup_dentry(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  store %struct.btrfs_root* %15, %struct.btrfs_root** %7, align 8
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_root* %16, %struct.btrfs_root** %8, align 8
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  store i32* @btrfs_dentry_operations, i32** %18, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BTRFS_NAME_LEN, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @ENAMETOOLONG, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.inode* @ERR_PTR(i32 %27)
  store %struct.inode* %28, %struct.inode** %3, align 8
  br label %139

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = call i32 @btrfs_inode_by_name(%struct.inode* %30, %struct.dentry* %31, %struct.btrfs_key* %9)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.inode* @ERR_PTR(i32 %36)
  store %struct.inode* %37, %struct.inode** %3, align 8
  br label %139

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %139

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BTRFS_INODE_ITEM_KEY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %53 = call %struct.inode* @btrfs_iget(%struct.TYPE_8__* %51, %struct.btrfs_key* %9, %struct.btrfs_root* %52, i32* null)
  store %struct.inode* %53, %struct.inode** %6, align 8
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %54, %struct.inode** %3, align 8
  br label %139

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BTRFS_ROOT_ITEM_KEY, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %63 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = call i32 @srcu_read_lock(i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = call i32 @fixup_tree_root_location(%struct.btrfs_root* %67, %struct.inode* %68, %struct.dentry* %69, %struct.btrfs_key* %9, %struct.btrfs_root** %8)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %55
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = call %struct.inode* @ERR_PTR(i32 %79)
  store %struct.inode* %80, %struct.inode** %6, align 8
  br label %87

81:                                               ; preds = %73
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %86 = call %struct.inode* @new_simple_dir(%struct.TYPE_8__* %84, %struct.btrfs_key* %9, %struct.btrfs_root* %85)
  store %struct.inode* %86, %struct.inode** %6, align 8
  br label %87

87:                                               ; preds = %81, %78
  br label %94

88:                                               ; preds = %55
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %93 = call %struct.inode* @btrfs_iget(%struct.TYPE_8__* %91, %struct.btrfs_key* %9, %struct.btrfs_root* %92, i32* null)
  store %struct.inode* %93, %struct.inode** %6, align 8
  br label %94

94:                                               ; preds = %88, %87
  %95 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %96 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @srcu_read_unlock(i32* %98, i32 %99)
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = call i32 @IS_ERR(%struct.inode* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %137, label %104

104:                                              ; preds = %94
  %105 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %107 = icmp ne %struct.btrfs_root* %105, %106
  br i1 %107, label %108, label %137

108:                                              ; preds = %104
  %109 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %110 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = call i32 @down_read(i32* %112)
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MS_RDONLY, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %108
  %123 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %124 = call i32 @btrfs_orphan_cleanup(%struct.btrfs_root* %123)
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %122, %108
  %126 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %127 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = call i32 @up_read(i32* %129)
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* %11, align 4
  %135 = call %struct.inode* @ERR_PTR(i32 %134)
  store %struct.inode* %135, %struct.inode** %6, align 8
  br label %136

136:                                              ; preds = %133, %125
  br label %137

137:                                              ; preds = %136, %104, %94
  %138 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %138, %struct.inode** %3, align 8
  br label %139

139:                                              ; preds = %137, %48, %42, %35, %25
  %140 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %140
}

declare dso_local %struct.TYPE_9__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @btrfs_inode_by_name(%struct.inode*, %struct.dentry*, %struct.btrfs_key*) #1

declare dso_local %struct.inode* @btrfs_iget(%struct.TYPE_8__*, %struct.btrfs_key*, %struct.btrfs_root*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @fixup_tree_root_location(%struct.btrfs_root*, %struct.inode*, %struct.dentry*, %struct.btrfs_key*, %struct.btrfs_root**) #1

declare dso_local %struct.inode* @new_simple_dir(%struct.TYPE_8__*, %struct.btrfs_key*, %struct.btrfs_root*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @btrfs_orphan_cleanup(%struct.btrfs_root*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
