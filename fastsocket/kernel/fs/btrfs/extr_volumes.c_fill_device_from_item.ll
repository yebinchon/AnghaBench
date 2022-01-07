; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_fill_device_from_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_fill_device_from_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_dev_item = type { i32 }
%struct.btrfs_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_buffer*, %struct.btrfs_dev_item*, %struct.btrfs_device*)* @fill_device_from_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_device_from_item(%struct.extent_buffer* %0, %struct.btrfs_dev_item* %1, %struct.btrfs_device* %2) #0 {
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca %struct.btrfs_dev_item*, align 8
  %6 = alloca %struct.btrfs_device*, align 8
  %7 = alloca i64, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %4, align 8
  store %struct.btrfs_dev_item* %1, %struct.btrfs_dev_item** %5, align 8
  store %struct.btrfs_device* %2, %struct.btrfs_device** %6, align 8
  %8 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %9 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %5, align 8
  %10 = call i32 @btrfs_device_id(%struct.extent_buffer* %8, %struct.btrfs_dev_item* %9)
  %11 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %12 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 4
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %14 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %5, align 8
  %15 = call i32 @btrfs_device_total_bytes(%struct.extent_buffer* %13, %struct.btrfs_dev_item* %14)
  %16 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %17 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %24 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %5, align 8
  %25 = call i32 @btrfs_device_bytes_used(%struct.extent_buffer* %23, %struct.btrfs_dev_item* %24)
  %26 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %27 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %29 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %5, align 8
  %30 = call i32 @btrfs_device_type(%struct.extent_buffer* %28, %struct.btrfs_dev_item* %29)
  %31 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %32 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %34 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %5, align 8
  %35 = call i32 @btrfs_device_io_align(%struct.extent_buffer* %33, %struct.btrfs_dev_item* %34)
  %36 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %37 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %39 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %5, align 8
  %40 = call i32 @btrfs_device_io_width(%struct.extent_buffer* %38, %struct.btrfs_dev_item* %39)
  %41 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %44 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %5, align 8
  %45 = call i32 @btrfs_device_sector_size(%struct.extent_buffer* %43, %struct.btrfs_dev_item* %44)
  %46 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %47 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %5, align 8
  %49 = call i64 @btrfs_device_uuid(%struct.btrfs_dev_item* %48)
  store i64 %49, i64* %7, align 8
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %51 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %56 = call i32 @read_extent_buffer(%struct.extent_buffer* %50, i32 %53, i64 %54, i32 %55)
  ret void
}

declare dso_local i32 @btrfs_device_id(%struct.extent_buffer*, %struct.btrfs_dev_item*) #1

declare dso_local i32 @btrfs_device_total_bytes(%struct.extent_buffer*, %struct.btrfs_dev_item*) #1

declare dso_local i32 @btrfs_device_bytes_used(%struct.extent_buffer*, %struct.btrfs_dev_item*) #1

declare dso_local i32 @btrfs_device_type(%struct.extent_buffer*, %struct.btrfs_dev_item*) #1

declare dso_local i32 @btrfs_device_io_align(%struct.extent_buffer*, %struct.btrfs_dev_item*) #1

declare dso_local i32 @btrfs_device_io_width(%struct.extent_buffer*, %struct.btrfs_dev_item*) #1

declare dso_local i32 @btrfs_device_sector_size(%struct.extent_buffer*, %struct.btrfs_dev_item*) #1

declare dso_local i64 @btrfs_device_uuid(%struct.btrfs_dev_item*) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
