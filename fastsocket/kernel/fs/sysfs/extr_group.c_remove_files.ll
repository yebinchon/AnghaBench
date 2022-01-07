; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_remove_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i32 }
%struct.kobject = type { i32 }
%struct.attribute_group = type { %struct.attribute** }
%struct.attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysfs_dirent*, %struct.kobject*, %struct.attribute_group*)* @remove_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_files(%struct.sysfs_dirent* %0, %struct.kobject* %1, %struct.attribute_group* %2) #0 {
  %4 = alloca %struct.sysfs_dirent*, align 8
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute_group*, align 8
  %7 = alloca %struct.attribute**, align 8
  %8 = alloca i32, align 4
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %4, align 8
  store %struct.kobject* %1, %struct.kobject** %5, align 8
  store %struct.attribute_group* %2, %struct.attribute_group** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %10 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %9, i32 0, i32 0
  %11 = load %struct.attribute**, %struct.attribute*** %10, align 8
  store %struct.attribute** %11, %struct.attribute*** %7, align 8
  br label %12

12:                                               ; preds = %23, %3
  %13 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %14 = load %struct.attribute*, %struct.attribute** %13, align 8
  %15 = icmp ne %struct.attribute* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %18 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %19 = load %struct.attribute*, %struct.attribute** %18, align 8
  %20 = getelementptr inbounds %struct.attribute, %struct.attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sysfs_hash_and_remove(%struct.sysfs_dirent* %17, i32 %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %27 = getelementptr inbounds %struct.attribute*, %struct.attribute** %26, i32 1
  store %struct.attribute** %27, %struct.attribute*** %7, align 8
  br label %12

28:                                               ; preds = %12
  ret void
}

declare dso_local i32 @sysfs_hash_and_remove(%struct.sysfs_dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
