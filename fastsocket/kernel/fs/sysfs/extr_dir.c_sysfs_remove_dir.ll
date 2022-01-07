; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_remove_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_remove_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { i32 }

@sysfs_assoc_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_remove_dir(%struct.kobject* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.sysfs_dirent*, align 8
  store %struct.kobject* %0, %struct.kobject** %2, align 8
  %4 = load %struct.kobject*, %struct.kobject** %2, align 8
  %5 = getelementptr inbounds %struct.kobject, %struct.kobject* %4, i32 0, i32 0
  %6 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  store %struct.sysfs_dirent* %6, %struct.sysfs_dirent** %3, align 8
  %7 = call i32 @spin_lock(i32* @sysfs_assoc_lock)
  %8 = load %struct.kobject*, %struct.kobject** %2, align 8
  %9 = getelementptr inbounds %struct.kobject, %struct.kobject* %8, i32 0, i32 0
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %9, align 8
  %10 = call i32 @spin_unlock(i32* @sysfs_assoc_lock)
  %11 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %12 = call i32 @__sysfs_remove_dir(%struct.sysfs_dirent* %11)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__sysfs_remove_dir(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
