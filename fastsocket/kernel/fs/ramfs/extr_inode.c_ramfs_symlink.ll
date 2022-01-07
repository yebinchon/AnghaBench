; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_inode.c_ramfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_inode.c_ramfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ramfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @ENOSPC, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @S_IFLNK, align 4
  %16 = load i32, i32* @S_IRWXUGO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.inode* @ramfs_get_inode(i32 %14, i32 %17, i32 0)
  store %struct.inode* %18, %struct.inode** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %21, label %59

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @page_symlink(%struct.inode* %25, i8* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %21
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S_ISGID, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call i32 @d_instantiate(%struct.dentry* %45, %struct.inode* %46)
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = call i32 @dget(%struct.dentry* %48)
  %50 = load i32, i32* @CURRENT_TIME, align 4
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 4
  br label %58

55:                                               ; preds = %21
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call i32 @iput(%struct.inode* %56)
  br label %58

58:                                               ; preds = %55, %44
  br label %59

59:                                               ; preds = %58, %3
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local %struct.inode* @ramfs_get_inode(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
