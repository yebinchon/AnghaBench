; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = call i32 @may_create(%struct.inode* %11, %struct.dentry* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %66

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)**
  %24 = load i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)*, i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)** %23, align 8
  %25 = icmp ne i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %66

29:                                               ; preds = %18
  %30 = load i32, i32* @S_IALLUGO, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @S_IFREG, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @security_inode_create(%struct.inode* %36, %struct.dentry* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %66

44:                                               ; preds = %29
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i32 @vfs_dq_init(%struct.inode* %45)
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = bitcast {}** %50 to i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)**
  %52 = load i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)*, i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)** %51, align 8
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %57 = call i32 %52(%struct.inode* %53, %struct.dentry* %54, i32 %55, %struct.nameidata* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %44
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = call i32 @fsnotify_create(%struct.inode* %61, %struct.dentry* %62)
  br label %64

64:                                               ; preds = %60, %44
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %42, %26, %16
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @may_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @security_inode_create(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @fsnotify_create(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
