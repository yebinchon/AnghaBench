; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i64 }
%struct.file_operations = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32, i8*, %struct.file_operations*)* @debugfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3, i8* %4, %struct.file_operations* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.file_operations*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.file_operations* %5, %struct.file_operations** %13, align 8
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load %struct.dentry*, %struct.dentry** %9, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %44

25:                                               ; preds = %6
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.file_operations*, %struct.file_operations** %13, align 8
  %33 = call %struct.inode* @debugfs_get_inode(i32 %28, i32 %29, i32 %30, i8* %31, %struct.file_operations* %32)
  store %struct.inode* %33, %struct.inode** %14, align 8
  %34 = load %struct.inode*, %struct.inode** %14, align 8
  %35 = icmp ne %struct.inode* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.dentry*, %struct.dentry** %9, align 8
  %38 = load %struct.inode*, %struct.inode** %14, align 8
  %39 = call i32 @d_instantiate(%struct.dentry* %37, %struct.inode* %38)
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = call i32 @dget(%struct.dentry* %40)
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %36, %25
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %22
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.inode* @debugfs_get_inode(i32, i32, i32, i8*, %struct.file_operations*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
