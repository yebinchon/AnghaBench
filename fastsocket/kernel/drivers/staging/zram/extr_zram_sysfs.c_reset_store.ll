; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_sysfs.c_reset_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_sysfs.c_reset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zram = type { i32, i64, i32 }
%struct.block_device = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @reset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.zram*, align 8
  %13 = alloca %struct.block_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.zram* @dev_to_zram(%struct.device* %14)
  store %struct.zram* %15, %struct.zram** %12, align 8
  %16 = load %struct.zram*, %struct.zram** %12, align 8
  %17 = getelementptr inbounds %struct.zram, %struct.zram* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.block_device* @bdget_disk(i32 %18, i32 0)
  store %struct.block_device* %19, %struct.block_device** %13, align 8
  %20 = load %struct.block_device*, %struct.block_device** %13, align 8
  %21 = getelementptr inbounds %struct.block_device, %struct.block_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strict_strtoul(i8* %28, i32 10, i64* %11)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %63

34:                                               ; preds = %27
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %63

40:                                               ; preds = %34
  %41 = load %struct.block_device*, %struct.block_device** %13, align 8
  %42 = icmp ne %struct.block_device* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.block_device*, %struct.block_device** %13, align 8
  %45 = call i32 @fsync_bdev(%struct.block_device* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.zram*, %struct.zram** %12, align 8
  %48 = getelementptr inbounds %struct.zram, %struct.zram* %47, i32 0, i32 0
  %49 = call i32 @down_write(i32* %48)
  %50 = load %struct.zram*, %struct.zram** %12, align 8
  %51 = getelementptr inbounds %struct.zram, %struct.zram* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.zram*, %struct.zram** %12, align 8
  %56 = call i32 @__zram_reset_device(%struct.zram* %55)
  br label %57

57:                                               ; preds = %54, %46
  %58 = load %struct.zram*, %struct.zram** %12, align 8
  %59 = getelementptr inbounds %struct.zram, %struct.zram* %58, i32 0, i32 0
  %60 = call i32 @up_write(i32* %59)
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %57, %37, %32, %24
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.zram* @dev_to_zram(%struct.device*) #1

declare dso_local %struct.block_device* @bdget_disk(i32, i32) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @fsync_bdev(%struct.block_device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__zram_reset_device(%struct.zram*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
