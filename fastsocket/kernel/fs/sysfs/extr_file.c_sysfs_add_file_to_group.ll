; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_add_file_to_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_add_file_to_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.sysfs_dirent = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SYSFS_KOBJ_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_add_file_to_group(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sysfs_dirent*, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.kobject*, %struct.kobject** %5, align 8
  %14 = getelementptr inbounds %struct.kobject, %struct.kobject* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.sysfs_dirent* @sysfs_get_dirent(i32 %15, i8* %16)
  store %struct.sysfs_dirent* %17, %struct.sysfs_dirent** %8, align 8
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.kobject*, %struct.kobject** %5, align 8
  %20 = getelementptr inbounds %struct.kobject, %struct.kobject* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sysfs_dirent* @sysfs_get(i32 %21)
  store %struct.sysfs_dirent* %22, %struct.sysfs_dirent** %8, align 8
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %25 = icmp ne %struct.sysfs_dirent* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %37

29:                                               ; preds = %23
  %30 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %31 = load %struct.attribute*, %struct.attribute** %6, align 8
  %32 = load i32, i32* @SYSFS_KOBJ_ATTR, align 4
  %33 = call i32 @sysfs_add_file(%struct.sysfs_dirent* %30, %struct.attribute* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %35 = call i32 @sysfs_put(%struct.sysfs_dirent* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %26
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.sysfs_dirent* @sysfs_get_dirent(i32, i8*) #1

declare dso_local %struct.sysfs_dirent* @sysfs_get(i32) #1

declare dso_local i32 @sysfs_add_file(%struct.sysfs_dirent*, %struct.attribute*, i32) #1

declare dso_local i32 @sysfs_put(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
