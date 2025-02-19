; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_stat.c_vfs_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_stat.c_vfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.kstat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.kstat* %2, %struct.kstat** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = call i32 @security_inode_getattr(%struct.vfsmount* %13, %struct.dentry* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)**
  %26 = load i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)*, i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)** %25, align 8
  %27 = icmp ne i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)**
  %34 = load i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)*, i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)** %33, align 8
  %35 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = load %struct.kstat*, %struct.kstat** %7, align 8
  %38 = call i32 %34(%struct.vfsmount* %35, %struct.dentry* %36, %struct.kstat* %37)
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %20
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = load %struct.kstat*, %struct.kstat** %7, align 8
  %42 = call i32 @generic_fillattr(%struct.inode* %40, %struct.kstat* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %28, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @security_inode_getattr(%struct.vfsmount*, %struct.dentry*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
