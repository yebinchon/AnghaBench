; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32*, i32*, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"AFFS: mkdir(%lu,\22%.*s\22,0%o)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@affs_dir_inode_operations = common dso_local global i32 0, align 4
@affs_dir_operations = common dso_local global i32 0, align 4
@ST_USERDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17, i32 %21, i32 %22)
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = call %struct.inode* @affs_new_inode(%struct.inode* %24)
  store %struct.inode* %25, %struct.inode** %8, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = icmp ne %struct.inode* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %59

31:                                               ; preds = %3
  %32 = load i32, i32* @S_IFDIR, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call i32 @mode_to_prot(%struct.inode* %37)
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 3
  store i32* @affs_dir_inode_operations, i32** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 2
  store i32* @affs_dir_operations, i32** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = load i32, i32* @ST_USERDIR, align 4
  %47 = call i32 @affs_add_entry(%struct.inode* %43, %struct.inode* %44, %struct.dentry* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %31
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = call i32 @mark_inode_dirty(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = call i32 @iput(%struct.inode* %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %50, %28
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.inode* @affs_new_inode(%struct.inode*) #1

declare dso_local i32 @mode_to_prot(%struct.inode*) #1

declare dso_local i32 @affs_add_entry(%struct.inode*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
