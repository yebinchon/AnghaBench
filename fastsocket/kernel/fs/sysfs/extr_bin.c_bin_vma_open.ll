; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_bin.c_bin_vma_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_bin.c_bin_vma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.file* }
%struct.file = type { %struct.TYPE_5__, %struct.bin_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { i32 }
%struct.bin_buffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.vm_area_struct*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @bin_vma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bin_vma_open(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.bin_buffer*, align 8
  %5 = alloca %struct.sysfs_dirent*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  %8 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %8, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load %struct.bin_buffer*, %struct.bin_buffer** %10, align 8
  store %struct.bin_buffer* %11, %struct.bin_buffer** %4, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %16, align 8
  store %struct.sysfs_dirent* %17, %struct.sysfs_dirent** %5, align 8
  %18 = load %struct.bin_buffer*, %struct.bin_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.bin_buffer*, %struct.bin_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %26, align 8
  %28 = icmp ne i32 (%struct.vm_area_struct*)* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %1
  br label %45

30:                                               ; preds = %22
  %31 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %32 = call i32 @sysfs_get_active_two(%struct.sysfs_dirent* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %45

35:                                               ; preds = %30
  %36 = load %struct.bin_buffer*, %struct.bin_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %39, align 8
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %42 = call i32 %40(%struct.vm_area_struct* %41)
  %43 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %44 = call i32 @sysfs_put_active_two(%struct.sysfs_dirent* %43)
  br label %45

45:                                               ; preds = %35, %34, %29
  ret void
}

declare dso_local i32 @sysfs_get_active_two(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_put_active_two(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
