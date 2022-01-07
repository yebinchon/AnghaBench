; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_namei.c_nilfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_namei.c_nilfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@nilfs_file_inode_operations = common dso_local global i32 0, align 4
@nilfs_file_operations = common dso_local global i32 0, align 4
@nilfs_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @nilfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nilfs_transaction_info, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @nilfs_transaction_begin(i32 %15, %struct.nilfs_transaction_info* %11, i32 1)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %59

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.inode* @nilfs_new_inode(%struct.inode* %22, i32 %23)
  store %struct.inode* %24, %struct.inode** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call i32 @PTR_ERR(%struct.inode* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call i32 @IS_ERR(%struct.inode* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %21
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 3
  store i32* @nilfs_file_inode_operations, i32** %32, align 8
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  store i32* @nilfs_file_operations, i32** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* @nilfs_aops, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = call i32 @mark_inode_dirty(%struct.inode* %39)
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call i32 @nilfs_add_nondir(%struct.dentry* %41, %struct.inode* %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %30, %21
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @nilfs_transaction_commit(i32 %50)
  store i32 %51, i32* %12, align 4
  br label %57

52:                                               ; preds = %44
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @nilfs_transaction_abort(i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @nilfs_transaction_begin(i32, %struct.nilfs_transaction_info*, i32) #1

declare dso_local %struct.inode* @nilfs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @nilfs_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @nilfs_transaction_commit(i32) #1

declare dso_local i32 @nilfs_transaction_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
