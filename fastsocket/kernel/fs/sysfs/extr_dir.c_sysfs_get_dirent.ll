; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_get_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_get_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i32 }

@sysfs_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sysfs_dirent* @sysfs_get_dirent(%struct.sysfs_dirent* %0, i8* %1) #0 {
  %3 = alloca %struct.sysfs_dirent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sysfs_dirent*, align 8
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @mutex_lock(i32* @sysfs_mutex)
  %7 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.sysfs_dirent* @sysfs_find_dirent(%struct.sysfs_dirent* %7, i8* %8)
  store %struct.sysfs_dirent* %9, %struct.sysfs_dirent** %5, align 8
  %10 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %11 = call i32 @sysfs_get(%struct.sysfs_dirent* %10)
  %12 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  %13 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  ret %struct.sysfs_dirent* %13
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sysfs_dirent* @sysfs_find_dirent(%struct.sysfs_dirent*, i8*) #1

declare dso_local i32 @sysfs_get(%struct.sysfs_dirent*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
