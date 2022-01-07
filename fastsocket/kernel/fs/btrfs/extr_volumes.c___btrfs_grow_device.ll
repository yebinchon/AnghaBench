; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c___btrfs_grow_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c___btrfs_grow_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_device = type { i64, %struct.TYPE_5__*, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.btrfs_super_block* }
%struct.btrfs_super_block = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_device*, i64)* @__btrfs_grow_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_grow_device(%struct.btrfs_trans_handle* %0, %struct.btrfs_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btrfs_super_block*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_device* %1, %struct.btrfs_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %12 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %16, align 8
  store %struct.btrfs_super_block* %17, %struct.btrfs_super_block** %8, align 8
  %18 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %8, align 8
  %19 = call i64 @btrfs_super_total_bytes(%struct.btrfs_super_block* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %10, align 8
  %25 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %26 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %71

32:                                               ; preds = %3
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %35 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %32
  %42 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @btrfs_set_super_total_bytes(%struct.btrfs_super_block* %42, i64 %45)
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %49 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %47
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %58 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %61 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %63 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @btrfs_clear_space_info_full(%struct.TYPE_6__* %66)
  %68 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %69 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %70 = call i32 @btrfs_update_device(%struct.btrfs_trans_handle* %68, %struct.btrfs_device* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %41, %38, %29
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @btrfs_super_total_bytes(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_set_super_total_bytes(%struct.btrfs_super_block*, i64) #1

declare dso_local i32 @btrfs_clear_space_info_full(%struct.TYPE_6__*) #1

declare dso_local i32 @btrfs_update_device(%struct.btrfs_trans_handle*, %struct.btrfs_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
