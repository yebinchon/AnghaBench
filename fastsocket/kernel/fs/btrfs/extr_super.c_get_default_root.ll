; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_get_default_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_get_default_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { %struct.inode*, i32, %struct.inode* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_path = type { i32, i32* }
%struct.btrfs_key = type { i8*, i32, i8* }

@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i8*)* @get_default_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @get_default_root(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_dir_item*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.btrfs_key, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block* %15)
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %6, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  %20 = bitcast %struct.inode* %19 to %struct.btrfs_root*
  store %struct.btrfs_root* %20, %struct.btrfs_root** %7, align 8
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %27 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %28, align 8
  br label %82

29:                                               ; preds = %2
  %30 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %30, %struct.btrfs_path** %10, align 8
  %31 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %32 = icmp ne %struct.btrfs_path* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.dentry* @ERR_PTR(i32 %35)
  store %struct.dentry* %36, %struct.dentry** %3, align 8
  br label %144

37:                                               ; preds = %29
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %41 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @btrfs_super_root_dir(i32 %42)
  store i8* %43, i8** %13, align 8
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %45 = bitcast %struct.btrfs_root* %44 to %struct.inode*
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = call %struct.inode* @btrfs_lookup_dir_item(i32* null, %struct.inode* %45, %struct.btrfs_path* %46, i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7, i32 0)
  %49 = bitcast %struct.inode* %48 to %struct.btrfs_dir_item*
  store %struct.btrfs_dir_item* %49, %struct.btrfs_dir_item** %9, align 8
  %50 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %9, align 8
  %51 = bitcast %struct.btrfs_dir_item* %50 to %struct.inode*
  %52 = call i64 @IS_ERR(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %37
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %56 = call i32 @btrfs_free_path(%struct.btrfs_path* %55)
  %57 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %9, align 8
  %58 = bitcast %struct.btrfs_dir_item* %57 to %struct.inode*
  %59 = call %struct.dentry* @ERR_CAST(%struct.inode* %58)
  store %struct.dentry* %59, %struct.dentry** %3, align 8
  br label %144

60:                                               ; preds = %37
  %61 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %9, align 8
  %62 = icmp ne %struct.btrfs_dir_item* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %65 = call i32 @btrfs_free_path(%struct.btrfs_path* %64)
  %66 = load i8*, i8** @BTRFS_FIRST_FREE_OBJECTID, align 8
  store i8* %66, i8** %13, align 8
  %67 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %68 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %67, i32 0, i32 0
  %69 = load %struct.inode*, %struct.inode** %68, align 8
  %70 = bitcast %struct.inode* %69 to %struct.btrfs_root*
  store %struct.btrfs_root* %70, %struct.btrfs_root** %8, align 8
  br label %107

71:                                               ; preds = %60
  %72 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %73 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %9, align 8
  %78 = bitcast %struct.btrfs_dir_item* %77 to %struct.inode*
  %79 = call i32 @btrfs_dir_item_key_to_cpu(i32 %76, %struct.inode* %78, %struct.btrfs_key* %11)
  %80 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %81 = call i32 @btrfs_free_path(%struct.btrfs_path* %80)
  br label %82

82:                                               ; preds = %71, %23
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %84 = call %struct.inode* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info* %83, %struct.btrfs_key* %11)
  %85 = bitcast %struct.inode* %84 to %struct.btrfs_root*
  store %struct.btrfs_root* %85, %struct.btrfs_root** %8, align 8
  %86 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %87 = bitcast %struct.btrfs_root* %86 to %struct.inode*
  %88 = call i64 @IS_ERR(%struct.inode* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %92 = bitcast %struct.btrfs_root* %91 to %struct.inode*
  %93 = call %struct.dentry* @ERR_CAST(%struct.inode* %92)
  store %struct.dentry* %93, %struct.dentry** %3, align 8
  br label %144

94:                                               ; preds = %82
  %95 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %96 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %95, i32 0, i32 0
  %97 = call i64 @btrfs_root_refs(i32* %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @ENOENT, align 4
  %101 = sub nsw i32 0, %100
  %102 = call %struct.dentry* @ERR_PTR(i32 %101)
  store %struct.dentry* %102, %struct.dentry** %3, align 8
  br label %144

103:                                              ; preds = %94
  %104 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %105 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %104, i32 0, i32 0
  %106 = call i8* @btrfs_root_dirid(i32* %105)
  store i8* %106, i8** %13, align 8
  br label %107

107:                                              ; preds = %103, %63
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 2
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %111 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  %112 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  store i8* null, i8** %112, align 8
  %113 = load %struct.super_block*, %struct.super_block** %4, align 8
  %114 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %115 = bitcast %struct.btrfs_root* %114 to %struct.inode*
  %116 = call %struct.inode* @btrfs_iget(%struct.super_block* %113, %struct.btrfs_key* %11, %struct.inode* %115, i32* %14)
  store %struct.inode* %116, %struct.inode** %12, align 8
  %117 = load %struct.inode*, %struct.inode** %12, align 8
  %118 = call i64 @IS_ERR(%struct.inode* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %107
  %121 = load %struct.inode*, %struct.inode** %12, align 8
  %122 = call %struct.dentry* @ERR_CAST(%struct.inode* %121)
  store %struct.dentry* %122, %struct.dentry** %3, align 8
  br label %144

123:                                              ; preds = %107
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %141, label %126

126:                                              ; preds = %123
  %127 = load %struct.super_block*, %struct.super_block** %4, align 8
  %128 = getelementptr inbounds %struct.super_block, %struct.super_block* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load %struct.inode*, %struct.inode** %130, align 8
  %132 = load %struct.inode*, %struct.inode** %12, align 8
  %133 = icmp eq %struct.inode* %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load %struct.inode*, %struct.inode** %12, align 8
  %136 = call i32 @iput(%struct.inode* %135)
  %137 = load %struct.super_block*, %struct.super_block** %4, align 8
  %138 = getelementptr inbounds %struct.super_block, %struct.super_block* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = call %struct.dentry* @dget(%struct.TYPE_2__* %139)
  store %struct.dentry* %140, %struct.dentry** %3, align 8
  br label %144

141:                                              ; preds = %126, %123
  %142 = load %struct.inode*, %struct.inode** %12, align 8
  %143 = call %struct.dentry* @d_obtain_alias(%struct.inode* %142)
  store %struct.dentry* %143, %struct.dentry** %3, align 8
  br label %144

144:                                              ; preds = %141, %134, %120, %99, %90, %54, %33
  %145 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %145
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i8* @btrfs_super_root_dir(i32) #1

declare dso_local %struct.inode* @btrfs_lookup_dir_item(i32*, %struct.inode*, %struct.btrfs_path*, i8*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @btrfs_dir_item_key_to_cpu(i32, %struct.inode*, %struct.btrfs_key*) #1

declare dso_local %struct.inode* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info*, %struct.btrfs_key*) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local i8* @btrfs_root_dirid(i32*) #1

declare dso_local %struct.inode* @btrfs_iget(%struct.super_block*, %struct.btrfs_key*, %struct.inode*, i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.dentry* @dget(%struct.TYPE_2__*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
