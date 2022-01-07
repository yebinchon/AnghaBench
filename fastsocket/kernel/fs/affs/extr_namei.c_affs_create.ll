; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, %struct.TYPE_5__*, i32*, i32*, i32, %struct.super_block* }
%struct.TYPE_5__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.nameidata = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"AFFS: create(%lu,\22%.*s\22,0%o)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@affs_file_inode_operations = common dso_local global i32 0, align 4
@affs_file_operations = common dso_local global i32 0, align 4
@SF_OFS = common dso_local global i32 0, align 4
@affs_aops_ofs = common dso_local global i32 0, align 4
@affs_aops = common dso_local global i32 0, align 4
@ST_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 6
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23, i32 %27, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call %struct.inode* @affs_new_inode(%struct.inode* %30)
  store %struct.inode* %31, %struct.inode** %11, align 8
  %32 = load %struct.inode*, %struct.inode** %11, align 8
  %33 = icmp ne %struct.inode* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %76

37:                                               ; preds = %4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.inode*, %struct.inode** %11, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = call i32 @mode_to_prot(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %11, align 8
  %44 = call i32 @mark_inode_dirty(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 4
  store i32* @affs_file_inode_operations, i32** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 3
  store i32* @affs_file_operations, i32** %48, align 8
  %49 = load %struct.super_block*, %struct.super_block** %10, align 8
  %50 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SF_OFS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32* @affs_aops_ofs, i32* @affs_aops
  %58 = load %struct.inode*, %struct.inode** %11, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32* %57, i32** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = load i32, i32* @ST_FILE, align 4
  %66 = call i32 @affs_add_entry(%struct.inode* %62, %struct.inode* %63, %struct.dentry* %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %37
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.inode*, %struct.inode** %11, align 8
  %73 = call i32 @iput(%struct.inode* %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %76

75:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %69, %34
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.inode* @affs_new_inode(%struct.inode*) #1

declare dso_local i32 @mode_to_prot(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @affs_add_entry(%struct.inode*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
