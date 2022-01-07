; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_follow_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_follow_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { i32, %struct.vfsmount* }
%struct.dentry = type { i32 }

@vfsmount_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @follow_up(%struct.path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %6 = call i32 @spin_lock(i32* @vfsmount_lock)
  %7 = load %struct.path*, %struct.path** %3, align 8
  %8 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %9 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %10 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %9, i32 0, i32 1
  %11 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  store %struct.vfsmount* %11, %struct.vfsmount** %4, align 8
  %12 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %13 = load %struct.path*, %struct.path** %3, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load %struct.vfsmount*, %struct.vfsmount** %14, align 8
  %16 = icmp eq %struct.vfsmount* %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @spin_unlock(i32* @vfsmount_lock)
  store i32 0, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %21 = call i32 @mntget(%struct.vfsmount* %20)
  %22 = load %struct.path*, %struct.path** %3, align 8
  %23 = getelementptr inbounds %struct.path, %struct.path* %22, i32 0, i32 0
  %24 = load %struct.vfsmount*, %struct.vfsmount** %23, align 8
  %25 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.dentry* @dget(i32 %26)
  store %struct.dentry* %27, %struct.dentry** %5, align 8
  %28 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %29 = load %struct.path*, %struct.path** %3, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %29, i32 0, i32 1
  %31 = load %struct.dentry*, %struct.dentry** %30, align 8
  %32 = call i32 @dput(%struct.dentry* %31)
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = load %struct.path*, %struct.path** %3, align 8
  %35 = getelementptr inbounds %struct.path, %struct.path* %34, i32 0, i32 1
  store %struct.dentry* %33, %struct.dentry** %35, align 8
  %36 = load %struct.path*, %struct.path** %3, align 8
  %37 = getelementptr inbounds %struct.path, %struct.path* %36, i32 0, i32 0
  %38 = load %struct.vfsmount*, %struct.vfsmount** %37, align 8
  %39 = call i32 @mntput(%struct.vfsmount* %38)
  %40 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %41 = load %struct.path*, %struct.path** %3, align 8
  %42 = getelementptr inbounds %struct.path, %struct.path* %41, i32 0, i32 0
  store %struct.vfsmount* %40, %struct.vfsmount** %42, align 8
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %19, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
