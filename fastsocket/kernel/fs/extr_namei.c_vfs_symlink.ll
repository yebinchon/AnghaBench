; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.dentry = type { i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = call i32 @may_create(%struct.inode* %9, %struct.dentry* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %57

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.inode*, %struct.dentry*, i8*)**
  %22 = load i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i8*)** %21, align 8
  %23 = icmp ne i32 (%struct.inode*, %struct.dentry*, i8*)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %16
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @security_inode_symlink(%struct.inode* %28, %struct.dentry* %29, i8* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %57

36:                                               ; preds = %27
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @vfs_dq_init(%struct.inode* %37)
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.inode*, %struct.dentry*, i8*)**
  %44 = load i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i8*)** %43, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 %44(%struct.inode* %45, %struct.dentry* %46, i8* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %36
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = call i32 @fsnotify_create(%struct.inode* %52, %struct.dentry* %53)
  br label %55

55:                                               ; preds = %51, %36
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %34, %24, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @may_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @security_inode_symlink(%struct.inode*, %struct.dentry*, i8*) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @fsnotify_create(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
