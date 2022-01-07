; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_get_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { %struct.TYPE_3__*, %struct.sysfs_dirent* }
%struct.TYPE_3__ = type { i32 }
%struct.sysfs_dirent = type { i32, %struct.sysfs_dirent* }

@sysfs_sb = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @sysfs_get_dentry(%struct.sysfs_dirent* %0) #0 {
  %2 = alloca %struct.sysfs_dirent*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.sysfs_dirent*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sysfs_sb, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.dentry* @dget(i32 %8)
  store %struct.dentry* %9, %struct.dentry** %3, align 8
  br label %10

10:                                               ; preds = %53, %1
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %14 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %15 = icmp ne %struct.sysfs_dirent* %13, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %10
  %17 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  store %struct.sysfs_dirent* %17, %struct.sysfs_dirent** %4, align 8
  br label %18

18:                                               ; preds = %26, %16
  %19 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %20 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %19, i32 0, i32 1
  %21 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %20, align 8
  %22 = load %struct.dentry*, %struct.dentry** %3, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %23, align 8
  %25 = icmp ne %struct.sysfs_dirent* %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %28 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %27, i32 0, i32 1
  %29 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %28, align 8
  store %struct.sysfs_dirent* %29, %struct.sysfs_dirent** %4, align 8
  br label %18

30:                                               ; preds = %18
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  store %struct.dentry* %31, %struct.dentry** %5, align 8
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %38 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = call %struct.dentry* @lookup_one_noperm(i32 %39, %struct.dentry* %40)
  store %struct.dentry* %41, %struct.dentry** %3, align 8
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.dentry*, %struct.dentry** %5, align 8
  %48 = call i32 @dput(%struct.dentry* %47)
  %49 = load %struct.dentry*, %struct.dentry** %3, align 8
  %50 = call i64 @IS_ERR(%struct.dentry* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  br label %54

53:                                               ; preds = %30
  br label %10

54:                                               ; preds = %52, %10
  %55 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %55
}

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @lookup_one_noperm(i32, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
