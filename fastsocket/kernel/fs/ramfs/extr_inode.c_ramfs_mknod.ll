; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_inode.c_ramfs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_inode.c_ramfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ramfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.inode* @ramfs_get_inode(i32 %13, i32 %14, i32 %15)
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load i32, i32* @ENOSPC, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %21, label %55

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @S_ISGID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* @S_ISGID, align 4
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %28
  br label %44

44:                                               ; preds = %43, %21
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = call i32 @d_instantiate(%struct.dentry* %45, %struct.inode* %46)
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = call i32 @dget(%struct.dentry* %48)
  store i32 0, i32* %10, align 4
  %50 = load i32, i32* @CURRENT_TIME, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %4
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local %struct.inode* @ramfs_get_inode(i32, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
