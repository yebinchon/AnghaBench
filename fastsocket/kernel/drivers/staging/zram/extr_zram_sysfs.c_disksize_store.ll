; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_sysfs.c_disksize_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_sysfs.c_disksize_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zram = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [47 x i8] c"Cannot change disksize for initialized device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @disksize_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disksize_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.zram*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.zram* @dev_to_zram(%struct.device* %13)
  store %struct.zram* %14, %struct.zram** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strict_strtoull(i8* %15, i32 10, i32* %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %4
  %22 = load %struct.zram*, %struct.zram** %12, align 8
  %23 = getelementptr inbounds %struct.zram, %struct.zram* %22, i32 0, i32 1
  %24 = call i32 @down_write(i32* %23)
  %25 = load %struct.zram*, %struct.zram** %12, align 8
  %26 = getelementptr inbounds %struct.zram, %struct.zram* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.zram*, %struct.zram** %12, align 8
  %31 = getelementptr inbounds %struct.zram, %struct.zram* %30, i32 0, i32 1
  %32 = call i32 @up_write(i32* %31)
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %55

36:                                               ; preds = %21
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @PAGE_ALIGN(i32 %37)
  %39 = load %struct.zram*, %struct.zram** %12, align 8
  %40 = getelementptr inbounds %struct.zram, %struct.zram* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.zram*, %struct.zram** %12, align 8
  %42 = getelementptr inbounds %struct.zram, %struct.zram* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.zram*, %struct.zram** %12, align 8
  %45 = getelementptr inbounds %struct.zram, %struct.zram* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SECTOR_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = call i32 @set_capacity(i32 %43, i32 %48)
  %50 = load %struct.zram*, %struct.zram** %12, align 8
  %51 = getelementptr inbounds %struct.zram, %struct.zram* %50, i32 0, i32 1
  %52 = call i32 @up_write(i32* %51)
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %36, %29, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.zram* @dev_to_zram(%struct.device*) #1

declare dso_local i32 @strict_strtoull(i8*, i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @set_capacity(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
