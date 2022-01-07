; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_inode.c_configfs_drop_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_inode.c_configfs_drop_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { %struct.dentry* }
%struct.dentry = type { i32, i64 }

@dcache_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @configfs_drop_dentry(%struct.configfs_dirent* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.configfs_dirent*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.configfs_dirent*, %struct.configfs_dirent** %3, align 8
  %7 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %6, i32 0, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %8, %struct.dentry** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = icmp ne %struct.dentry* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = call i32 @spin_lock(i32* @dcache_lock)
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call i64 @d_unhashed(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = call i32 @dget_locked(%struct.dentry* %25)
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = call i32 @__d_drop(%struct.dentry* %27)
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = call i32 @spin_unlock(i32* @dcache_lock)
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = call i32 @simple_unlink(i64 %35, %struct.dentry* %36)
  br label %43

38:                                               ; preds = %19
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = call i32 @spin_unlock(i32* @dcache_lock)
  br label %43

43:                                               ; preds = %38, %24
  br label %44

44:                                               ; preds = %43, %2
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @dget_locked(%struct.dentry*) #1

declare dso_local i32 @__d_drop(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @simple_unlink(i64, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
