; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_symlink.c_sysfs_getlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_symlink.c_sysfs_getlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { %struct.TYPE_2__, %struct.sysfs_dirent* }
%struct.TYPE_2__ = type { %struct.sysfs_dirent* }

@sysfs_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*)* @sysfs_getlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_getlink(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sysfs_dirent*, align 8
  %6 = alloca %struct.sysfs_dirent*, align 8
  %7 = alloca %struct.sysfs_dirent*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %10, align 8
  store %struct.sysfs_dirent* %11, %struct.sysfs_dirent** %5, align 8
  %12 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %13 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %12, i32 0, i32 1
  %14 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %13, align 8
  store %struct.sysfs_dirent* %14, %struct.sysfs_dirent** %6, align 8
  %15 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %16 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %17, align 8
  store %struct.sysfs_dirent* %18, %struct.sysfs_dirent** %7, align 8
  %19 = call i32 @mutex_lock(i32* @sysfs_mutex)
  %20 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %21 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @sysfs_get_target_path(%struct.sysfs_dirent* %20, %struct.sysfs_dirent* %21, i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sysfs_get_target_path(%struct.sysfs_dirent*, %struct.sysfs_dirent*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
