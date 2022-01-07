; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }

@EMLINK = common dso_local global i32 0, align 4
@UFS_LINK_MAX = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@ufs_dir_inode_operations = common dso_local global i32 0, align 4
@ufs_dir_operations = common dso_local global i32 0, align 4
@ufs_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ufs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EMLINK, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UFS_LINK_MAX, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %61

17:                                               ; preds = %3
  %18 = call i32 (...) @lock_kernel()
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i32 @inode_inc_link_count(%struct.inode* %19)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = load i32, i32* @S_IFDIR, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.inode* @ufs_new_inode(%struct.inode* %21, i32 %24)
  store %struct.inode* %25, %struct.inode** %7, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i32 @PTR_ERR(%struct.inode* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = call i64 @IS_ERR(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %70

32:                                               ; preds = %17
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 3
  store i32* @ufs_dir_inode_operations, i32** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  store i32* @ufs_dir_operations, i32** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* @ufs_aops, i32** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = call i32 @inode_inc_link_count(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = call i32 @ufs_make_empty(%struct.inode* %43, %struct.inode* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %63

49:                                               ; preds = %32
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call i32 @ufs_add_link(%struct.dentry* %50, %struct.inode* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %63

56:                                               ; preds = %49
  %57 = call i32 (...) @unlock_kernel()
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = call i32 @d_instantiate(%struct.dentry* %58, %struct.inode* %59)
  br label %61

61:                                               ; preds = %70, %56, %16
  %62 = load i32, i32* %8, align 4
  ret i32 %62

63:                                               ; preds = %55, %48
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = call i32 @inode_dec_link_count(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call i32 @inode_dec_link_count(%struct.inode* %66)
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = call i32 @iput(%struct.inode* %68)
  br label %70

70:                                               ; preds = %63, %31
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = call i32 @inode_dec_link_count(%struct.inode* %71)
  %73 = call i32 (...) @unlock_kernel()
  br label %61
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local %struct.inode* @ufs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ufs_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ufs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
