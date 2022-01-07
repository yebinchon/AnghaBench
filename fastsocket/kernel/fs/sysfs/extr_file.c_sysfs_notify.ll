; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { i32 }

@sysfs_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_notify(%struct.kobject* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sysfs_dirent*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.kobject*, %struct.kobject** %4, align 8
  %9 = getelementptr inbounds %struct.kobject, %struct.kobject* %8, i32 0, i32 0
  %10 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  store %struct.sysfs_dirent* %10, %struct.sysfs_dirent** %7, align 8
  %11 = call i32 @mutex_lock(i32* @sysfs_mutex)
  %12 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %13 = icmp ne %struct.sysfs_dirent* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.sysfs_dirent* @sysfs_find_dirent(%struct.sysfs_dirent* %18, i8* %19)
  store %struct.sysfs_dirent* %20, %struct.sysfs_dirent** %7, align 8
  br label %21

21:                                               ; preds = %17, %14, %3
  %22 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %23 = icmp ne %struct.sysfs_dirent* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call %struct.sysfs_dirent* @sysfs_find_dirent(%struct.sysfs_dirent* %28, i8* %29)
  store %struct.sysfs_dirent* %30, %struct.sysfs_dirent** %7, align 8
  br label %31

31:                                               ; preds = %27, %24, %21
  %32 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %33 = icmp ne %struct.sysfs_dirent* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %36 = call i32 @sysfs_notify_dirent(%struct.sysfs_dirent* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sysfs_dirent* @sysfs_find_dirent(%struct.sysfs_dirent*, i8*) #1

declare dso_local i32 @sysfs_notify_dirent(%struct.sysfs_dirent*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
