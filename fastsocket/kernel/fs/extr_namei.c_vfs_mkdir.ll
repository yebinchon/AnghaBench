; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.dentry = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
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
  br label %62

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.inode*, %struct.dentry*, i32)**
  %22 = load i32 (%struct.inode*, %struct.dentry*, i32)*, i32 (%struct.inode*, %struct.dentry*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.inode*, %struct.dentry*, i32)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %16
  %28 = load i32, i32* @S_IRWXUGO, align 4
  %29 = load i32, i32* @S_ISVTX, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @security_inode_mkdir(%struct.inode* %33, %struct.dentry* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %62

41:                                               ; preds = %27
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call i32 @vfs_dq_init(%struct.inode* %42)
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to i32 (%struct.inode*, %struct.dentry*, i32)**
  %49 = load i32 (%struct.inode*, %struct.dentry*, i32)*, i32 (%struct.inode*, %struct.dentry*, i32)** %48, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 %49(%struct.inode* %50, %struct.dentry* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %41
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = call i32 @fsnotify_mkdir(%struct.inode* %57, %struct.dentry* %58)
  br label %60

60:                                               ; preds = %56, %41
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %39, %24, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @may_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @security_inode_mkdir(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @fsnotify_mkdir(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
