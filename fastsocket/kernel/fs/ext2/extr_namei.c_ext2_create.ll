; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_namei.c_ext2_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_namei.c_ext2_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }

@ext2_file_inode_operations = common dso_local global i32 0, align 4
@ext2_aops_xip = common dso_local global i32 0, align 4
@ext2_xip_file_operations = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@ext2_nobh_aops = common dso_local global i32 0, align 4
@ext2_file_operations = common dso_local global i32 0, align 4
@ext2_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @ext2_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nameidata* %3, %struct.nameidata** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.inode* @ext2_new_inode(%struct.inode* %11, i32 %12)
  store %struct.inode* %13, %struct.inode** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %9, align 8
  %15 = call i32 @PTR_ERR(%struct.inode* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = call i32 @IS_ERR(%struct.inode* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %4
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  store i32* @ext2_file_inode_operations, i32** %21, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ext2_use_xip(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* @ext2_aops_xip, i32** %31, align 8
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32* @ext2_xip_file_operations, i32** %33, align 8
  br label %56

34:                                               ; preds = %19
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NOBH, align 4
  %39 = call i64 @test_opt(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* @ext2_nobh_aops, i32** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  store i32* @ext2_file_operations, i32** %47, align 8
  br label %55

48:                                               ; preds = %34
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32* @ext2_aops, i32** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  store i32* @ext2_file_operations, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %41
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = call i32 @mark_inode_dirty(%struct.inode* %57)
  %59 = load %struct.dentry*, %struct.dentry** %6, align 8
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = call i32 @ext2_add_nondir(%struct.dentry* %59, %struct.inode* %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %56, %4
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local %struct.inode* @ext2_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @ext2_use_xip(i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ext2_add_nondir(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
