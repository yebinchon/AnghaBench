; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_bin.c_bin_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_bin.c_bin_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.file* }
%struct.file = type { %struct.TYPE_5__, %struct.bin_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { i32 }
%struct.bin_buffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }
%struct.vm_fault = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @bin_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bin_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.bin_buffer*, align 8
  %8 = alloca %struct.sysfs_dirent*, align 8
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load %struct.file*, %struct.file** %11, align 8
  store %struct.file* %12, %struct.file** %6, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load %struct.bin_buffer*, %struct.bin_buffer** %14, align 8
  store %struct.bin_buffer* %15, %struct.bin_buffer** %7, align 8
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %20, align 8
  store %struct.sysfs_dirent* %21, %struct.sysfs_dirent** %8, align 8
  %22 = load %struct.bin_buffer*, %struct.bin_buffer** %7, align 8
  %23 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.bin_buffer*, %struct.bin_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.vm_area_struct*, %struct.vm_fault*)**
  %32 = load i32 (%struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_area_struct*, %struct.vm_fault*)** %31, align 8
  %33 = icmp ne i32 (%struct.vm_area_struct*, %struct.vm_fault*)* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %26, %2
  %35 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %26
  %37 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %38 = call i32 @sysfs_get_active_two(%struct.sysfs_dirent* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %36
  %43 = load %struct.bin_buffer*, %struct.bin_buffer** %7, align 8
  %44 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.vm_area_struct*, %struct.vm_fault*)**
  %48 = load i32 (%struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_area_struct*, %struct.vm_fault*)** %47, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %50 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %51 = call i32 %48(%struct.vm_area_struct* %49, %struct.vm_fault* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %53 = call i32 @sysfs_put_active_two(%struct.sysfs_dirent* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %42, %40, %34
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @sysfs_get_active_two(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_put_active_two(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
