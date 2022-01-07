; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hppfs/extr_hppfs.c_get_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hppfs/extr_hppfs.c_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@hppfs_dir_iops = common dso_local global i32 0, align 4
@hppfs_dir_fops = common dso_local global i32 0, align 4
@hppfs_link_iops = common dso_local global i32 0, align 4
@hppfs_file_fops = common dso_local global i32 0, align 4
@hppfs_file_iops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.dentry*)* @get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @get_inode(%struct.super_block* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.inode* @new_inode(%struct.super_block* %11)
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = icmp ne %struct.inode* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.inode* @ERR_PTR(i32 %17)
  store %struct.inode* %18, %struct.inode** %3, align 8
  br label %108

19:                                               ; preds = %2
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISDIR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 11
  store i32* @hppfs_dir_iops, i32** %29, align 8
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 10
  store i32* @hppfs_dir_fops, i32** %31, align 8
  br label %51

32:                                               ; preds = %19
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load %struct.inode*, %struct.inode** %34, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @S_ISLNK(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 11
  store i32* @hppfs_link_iops, i32** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 10
  store i32* @hppfs_file_fops, i32** %44, align 8
  br label %50

45:                                               ; preds = %32
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 11
  store i32* @hppfs_file_iops, i32** %47, align 8
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 10
  store i32* @hppfs_file_fops, i32** %49, align 8
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = call i32 @dget(%struct.dentry* %52)
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = call %struct.TYPE_2__* @HPPFS_I(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %107, %struct.inode** %3, align 8
  br label %108

108:                                              ; preds = %51, %15
  %109 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %109
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @HPPFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
