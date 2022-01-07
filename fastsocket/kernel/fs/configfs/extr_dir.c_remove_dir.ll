; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_remove_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_remove_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_2__, i64, %struct.configfs_dirent*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.configfs_dirent = type { i32 }

@configfs_dirent_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c" o %s removing done (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @remove_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_dir(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.configfs_dirent*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.dentry* @dget(i32 %7)
  store %struct.dentry* %8, %struct.dentry** %3, align 8
  %9 = load %struct.dentry*, %struct.dentry** %2, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 3
  %11 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  store %struct.configfs_dirent* %11, %struct.configfs_dirent** %4, align 8
  %12 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %13 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %14 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %13, i32 0, i32 0
  %15 = call i32 @list_del_init(i32* %14)
  %16 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %17 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %18 = call i32 @configfs_put(%struct.configfs_dirent* %17)
  %19 = load %struct.dentry*, %struct.dentry** %2, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dentry*, %struct.dentry** %2, align 8
  %28 = call i32 @simple_rmdir(i64 %26, %struct.dentry* %27)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.dentry*, %struct.dentry** %2, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dentry*, %struct.dentry** %2, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = call i32 @atomic_read(i32* %35)
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.dentry*, %struct.dentry** %3, align 8
  %39 = call i32 @dput(%struct.dentry* %38)
  ret void
}

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @configfs_put(%struct.configfs_dirent*) #1

declare dso_local i32 @simple_rmdir(i64, %struct.dentry*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
