; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_bin.c_bin_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_bin.c_bin_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.file* }
%struct.file = type { %struct.TYPE_6__, %struct.bin_buffer* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { i32 }
%struct.bin_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* @bin_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bin_access(%struct.vm_area_struct* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.bin_buffer*, align 8
  %14 = alloca %struct.sysfs_dirent*, align 8
  %15 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load %struct.file*, %struct.file** %17, align 8
  store %struct.file* %18, %struct.file** %12, align 8
  %19 = load %struct.file*, %struct.file** %12, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load %struct.bin_buffer*, %struct.bin_buffer** %20, align 8
  store %struct.bin_buffer* %21, %struct.bin_buffer** %13, align 8
  %22 = load %struct.file*, %struct.file** %12, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %26, align 8
  store %struct.sysfs_dirent* %27, %struct.sysfs_dirent** %14, align 8
  %28 = load %struct.bin_buffer*, %struct.bin_buffer** %13, align 8
  %29 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %5
  %33 = load %struct.bin_buffer*, %struct.bin_buffer** %13, align 8
  %34 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)**
  %38 = load i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32, %5
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %66

43:                                               ; preds = %32
  %44 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %14, align 8
  %45 = call i32 @sysfs_get_active_two(%struct.sysfs_dirent* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %66

50:                                               ; preds = %43
  %51 = load %struct.bin_buffer*, %struct.bin_buffer** %13, align 8
  %52 = getelementptr inbounds %struct.bin_buffer, %struct.bin_buffer* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)**
  %56 = load i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)** %55, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 %56(%struct.vm_area_struct* %57, i64 %58, i8* %59, i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %14, align 8
  %64 = call i32 @sysfs_put_active_two(%struct.sysfs_dirent* %63)
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %50, %47, %40
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @sysfs_get_active_two(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_put_active_two(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
