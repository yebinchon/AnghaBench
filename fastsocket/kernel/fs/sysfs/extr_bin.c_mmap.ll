; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_bin.c_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_bin.c_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_7__, %struct.bin_buffer* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.kobject* }
%struct.kobject = type { i32 }
%struct.TYPE_8__ = type { %struct.bin_attribute* }
%struct.bin_attribute = type { i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.bin_buffer = type { i32, i64, i32 }
%struct.vm_area_struct = type { i64, %struct.file* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bin_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.bin_buffer*, align 8
  %6 = alloca %struct.sysfs_dirent*, align 8
  %7 = alloca %struct.bin_attribute*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.bin_buffer*, %struct.bin_buffer** %11, align 8
  store %struct.bin_buffer* %12, %struct.bin_buffer** %5, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %17, align 8
  store %struct.sysfs_dirent* %18, %struct.sysfs_dirent** %6, align 8
  %19 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %20 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.bin_attribute*, %struct.bin_attribute** %21, align 8
  store %struct.bin_attribute* %22, %struct.bin_attribute** %7, align 8
  %23 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %24 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.kobject*, %struct.kobject** %27, align 8
  store %struct.kobject* %28, %struct.kobject** %8, align 8
  %29 = load %struct.bin_buffer*, %struct.bin_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %35 = call i32 @sysfs_get_active_two(%struct.sysfs_dirent* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  br label %94

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.bin_attribute*, %struct.bin_attribute** %7, align 8
  %42 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %41, i32 0, i32 0
  %43 = load i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)** %42, align 8
  %44 = icmp ne i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %91

46:                                               ; preds = %38
  %47 = load %struct.bin_attribute*, %struct.bin_attribute** %7, align 8
  %48 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %47, i32 0, i32 0
  %49 = load i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)** %48, align 8
  %50 = load %struct.file*, %struct.file** %3, align 8
  %51 = load %struct.kobject*, %struct.kobject** %8, align 8
  %52 = load %struct.bin_attribute*, %struct.bin_attribute** %7, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %54 = call i32 %49(%struct.file* %50, %struct.kobject* %51, %struct.bin_attribute* %52, %struct.vm_area_struct* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %91

58:                                               ; preds = %46
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 1
  %61 = load %struct.file*, %struct.file** %60, align 8
  %62 = load %struct.file*, %struct.file** %3, align 8
  %63 = icmp ne %struct.file* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %91

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.bin_buffer*, %struct.bin_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.bin_buffer*, %struct.bin_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %91

81:                                               ; preds = %72, %65
  store i32 0, i32* %9, align 4
  %82 = load %struct.bin_buffer*, %struct.bin_buffer** %5, align 8
  %83 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.bin_buffer*, %struct.bin_buffer** %5, align 8
  %88 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 0
  store i64 ptrtoint (i32* @bin_vm_ops to i64), i64* %90, align 8
  br label %91

91:                                               ; preds = %81, %80, %64, %57, %45
  %92 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %93 = call i32 @sysfs_put_active_two(%struct.sysfs_dirent* %92)
  br label %94

94:                                               ; preds = %91, %37
  %95 = load %struct.bin_buffer*, %struct.bin_buffer** %5, align 8
  %96 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %95, i32 0, i32 2
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sysfs_get_active_two(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_put_active_two(%struct.sysfs_dirent*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
