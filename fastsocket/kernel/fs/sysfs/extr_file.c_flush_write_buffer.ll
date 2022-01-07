; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_flush_write_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_flush_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kobject* }
%struct.kobject = type { i32 }
%struct.sysfs_buffer = type { i32, %struct.sysfs_ops* }
%struct.sysfs_ops = type { i32 (%struct.kobject.0*, i32, i32, i64)* }
%struct.kobject.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.sysfs_buffer*, i64)* @flush_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_write_buffer(%struct.dentry* %0, %struct.sysfs_buffer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.sysfs_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sysfs_dirent*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.sysfs_ops*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.sysfs_buffer* %1, %struct.sysfs_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %13, align 8
  store %struct.sysfs_dirent* %14, %struct.sysfs_dirent** %8, align 8
  %15 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %16 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.kobject*, %struct.kobject** %19, align 8
  store %struct.kobject* %20, %struct.kobject** %9, align 8
  %21 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %21, i32 0, i32 1
  %23 = load %struct.sysfs_ops*, %struct.sysfs_ops** %22, align 8
  store %struct.sysfs_ops* %23, %struct.sysfs_ops** %10, align 8
  %24 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %25 = call i32 @sysfs_get_active_two(%struct.sysfs_dirent* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %48

30:                                               ; preds = %3
  %31 = load %struct.sysfs_ops*, %struct.sysfs_ops** %10, align 8
  %32 = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.kobject.0*, i32, i32, i64)*, i32 (%struct.kobject.0*, i32, i32, i64)** %32, align 8
  %34 = load %struct.kobject*, %struct.kobject** %9, align 8
  %35 = bitcast %struct.kobject* %34 to %struct.kobject.0*
  %36 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %37 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 %33(%struct.kobject.0* %35, i32 %39, i32 %42, i64 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %46 = call i32 @sysfs_put_active_two(%struct.sysfs_dirent* %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %30, %27
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @sysfs_get_active_two(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_put_active_two(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
