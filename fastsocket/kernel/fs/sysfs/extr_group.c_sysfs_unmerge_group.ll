; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_sysfs_unmerge_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_sysfs_unmerge_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute_group = type { %struct.attribute**, i32 }
%struct.attribute = type { i32 }
%struct.sysfs_dirent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_unmerge_group(%struct.kobject* %0, %struct.attribute_group* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.attribute_group*, align 8
  %5 = alloca %struct.sysfs_dirent*, align 8
  %6 = alloca %struct.attribute**, align 8
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store %struct.attribute_group* %1, %struct.attribute_group** %4, align 8
  %7 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %8 = icmp ne %struct.attribute_group* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.kobject*, %struct.kobject** %3, align 8
  %11 = getelementptr inbounds %struct.kobject, %struct.kobject* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %14 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.sysfs_dirent* @sysfs_get_dirent(i32 %12, i32 %15)
  store %struct.sysfs_dirent* %16, %struct.sysfs_dirent** %5, align 8
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.kobject*, %struct.kobject** %3, align 8
  %19 = getelementptr inbounds %struct.kobject, %struct.kobject* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.sysfs_dirent* @sysfs_get(i32 %20)
  store %struct.sysfs_dirent* %21, %struct.sysfs_dirent** %5, align 8
  br label %22

22:                                               ; preds = %17, %9
  %23 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %24 = icmp ne %struct.sysfs_dirent* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %27 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %26, i32 0, i32 0
  %28 = load %struct.attribute**, %struct.attribute*** %27, align 8
  store %struct.attribute** %28, %struct.attribute*** %6, align 8
  br label %29

29:                                               ; preds = %40, %25
  %30 = load %struct.attribute**, %struct.attribute*** %6, align 8
  %31 = load %struct.attribute*, %struct.attribute** %30, align 8
  %32 = icmp ne %struct.attribute* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %35 = load %struct.attribute**, %struct.attribute*** %6, align 8
  %36 = load %struct.attribute*, %struct.attribute** %35, align 8
  %37 = getelementptr inbounds %struct.attribute, %struct.attribute* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sysfs_hash_and_remove(%struct.sysfs_dirent* %34, i32 %38)
  br label %40

40:                                               ; preds = %33
  %41 = load %struct.attribute**, %struct.attribute*** %6, align 8
  %42 = getelementptr inbounds %struct.attribute*, %struct.attribute** %41, i32 1
  store %struct.attribute** %42, %struct.attribute*** %6, align 8
  br label %29

43:                                               ; preds = %29
  %44 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %45 = call i32 @sysfs_put(%struct.sysfs_dirent* %44)
  br label %46

46:                                               ; preds = %43, %22
  ret void
}

declare dso_local %struct.sysfs_dirent* @sysfs_get_dirent(i32, i32) #1

declare dso_local %struct.sysfs_dirent* @sysfs_get(i32) #1

declare dso_local i32 @sysfs_hash_and_remove(%struct.sysfs_dirent*, i32) #1

declare dso_local i32 @sysfs_put(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
