; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_file_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_file_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nameidata = type { i32 }
%struct.hfs_find_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.hfs_iget_data = type { i32*, i32* }
%struct.TYPE_8__ = type { %struct.inode*, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"rsrc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @hfs_file_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @hfs_file_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfs_find_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfs_iget_data, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i64 @HFS_IS_RSRC(%struct.inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strcmp(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %3
  br label %96

24:                                               ; preds = %16
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call %struct.TYPE_8__* @HFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %8, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = icmp ne %struct.inode* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %96

32:                                               ; preds = %24
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.inode* @new_inode(i32 %35)
  store %struct.inode* %36, %struct.inode** %8, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.dentry* @ERR_PTR(i32 %41)
  store %struct.dentry* %42, %struct.dentry** %4, align 8
  br label %100

43:                                               ; preds = %32
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_7__* @HFS_SB(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hfs_find_init(i32 %49, %struct.hfs_find_data* %10)
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call %struct.TYPE_8__* @HFS_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = call i32 @hfs_brec_read(%struct.hfs_find_data* %10, i32* %9, i32 4)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %12, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %12, i32 0, i32 1
  store i32* %9, i32** %63, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = call i32 @hfs_read_inode(%struct.inode* %64, %struct.hfs_iget_data* %12)
  br label %66

66:                                               ; preds = %61, %43
  %67 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = call i32 @iput(%struct.inode* %71)
  %73 = load i32, i32* %11, align 4
  %74 = call %struct.dentry* @ERR_PTR(i32 %73)
  store %struct.dentry* %74, %struct.dentry** %4, align 8
  br label %100

75:                                               ; preds = %66
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = call %struct.TYPE_8__* @HFS_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store %struct.inode* %76, %struct.inode** %79, align 8
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = call %struct.TYPE_8__* @HFS_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store %struct.inode* %80, %struct.inode** %83, align 8
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = call i32 @igrab(%struct.inode* %84)
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.TYPE_7__* @HFS_SB(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = call i32 @hlist_add_head(i32* %87, i32* %92)
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = call i32 @mark_inode_dirty(%struct.inode* %94)
  br label %96

96:                                               ; preds = %75, %31, %23
  %97 = load %struct.dentry*, %struct.dentry** %6, align 8
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = call i32 @d_add(%struct.dentry* %97, %struct.inode* %98)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %100

100:                                              ; preds = %96, %70, %39
  %101 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %101
}

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @HFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_7__* @HFS_SB(i32) #1

declare dso_local i32 @hfs_brec_read(%struct.hfs_find_data*, i32*, i32) #1

declare dso_local i32 @hfs_read_inode(%struct.inode*, %struct.hfs_iget_data*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
