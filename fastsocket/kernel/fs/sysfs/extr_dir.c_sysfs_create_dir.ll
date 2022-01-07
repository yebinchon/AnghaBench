; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_create_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i32 }
%struct.kobject = type { %struct.sysfs_dirent*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sysfs_dirent* }

@sysfs_root = common dso_local global %struct.sysfs_dirent zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_create_dir(%struct.kobject* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.sysfs_dirent*, align 8
  %4 = alloca %struct.sysfs_dirent*, align 8
  %5 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.kobject*, %struct.kobject** %2, align 8
  %7 = icmp ne %struct.kobject* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.kobject*, %struct.kobject** %2, align 8
  %12 = getelementptr inbounds %struct.kobject, %struct.kobject* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.kobject*, %struct.kobject** %2, align 8
  %17 = getelementptr inbounds %struct.kobject, %struct.kobject* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %19, align 8
  store %struct.sysfs_dirent* %20, %struct.sysfs_dirent** %3, align 8
  br label %22

21:                                               ; preds = %1
  store %struct.sysfs_dirent* @sysfs_root, %struct.sysfs_dirent** %3, align 8
  br label %22

22:                                               ; preds = %21, %15
  %23 = load %struct.kobject*, %struct.kobject** %2, align 8
  %24 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %25 = load %struct.kobject*, %struct.kobject** %2, align 8
  %26 = call i32 @kobject_name(%struct.kobject* %25)
  %27 = call i32 @create_dir(%struct.kobject* %23, %struct.sysfs_dirent* %24, i32 %26, %struct.sysfs_dirent** %4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %32 = load %struct.kobject*, %struct.kobject** %2, align 8
  %33 = getelementptr inbounds %struct.kobject, %struct.kobject* %32, i32 0, i32 0
  store %struct.sysfs_dirent* %31, %struct.sysfs_dirent** %33, align 8
  br label %34

34:                                               ; preds = %30, %22
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @create_dir(%struct.kobject*, %struct.sysfs_dirent*, i32, %struct.sysfs_dirent**) #1

declare dso_local i32 @kobject_name(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
