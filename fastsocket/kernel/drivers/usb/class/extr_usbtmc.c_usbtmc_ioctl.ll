; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.usbtmc_device_data* }
%struct.usbtmc_device_data = type { i32, i64 }

@EBADRQC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @usbtmc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usbtmc_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.usbtmc_device_data*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @EBADRQC, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %12, align 8
  store %struct.usbtmc_device_data* %13, %struct.usbtmc_device_data** %7, align 8
  %14 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %15 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %18 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %45

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %44 [
    i32 129, label %26
    i32 130, label %29
    i32 128, label %32
    i32 131, label %35
    i32 132, label %38
    i32 133, label %41
  ]

26:                                               ; preds = %24
  %27 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %28 = call i32 @usbtmc_ioctl_clear_out_halt(%struct.usbtmc_device_data* %27)
  store i32 %28, i32* %8, align 4
  br label %44

29:                                               ; preds = %24
  %30 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %31 = call i32 @usbtmc_ioctl_clear_in_halt(%struct.usbtmc_device_data* %30)
  store i32 %31, i32* %8, align 4
  br label %44

32:                                               ; preds = %24
  %33 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %34 = call i32 @usbtmc_ioctl_indicator_pulse(%struct.usbtmc_device_data* %33)
  store i32 %34, i32* %8, align 4
  br label %44

35:                                               ; preds = %24
  %36 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %37 = call i32 @usbtmc_ioctl_clear(%struct.usbtmc_device_data* %36)
  store i32 %37, i32* %8, align 4
  br label %44

38:                                               ; preds = %24
  %39 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %40 = call i32 @usbtmc_ioctl_abort_bulk_out(%struct.usbtmc_device_data* %39)
  store i32 %40, i32* %8, align 4
  br label %44

41:                                               ; preds = %24
  %42 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %43 = call i32 @usbtmc_ioctl_abort_bulk_in(%struct.usbtmc_device_data* %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %24, %41, %38, %35, %32, %29, %26
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %47 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  ret i64 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usbtmc_ioctl_clear_out_halt(%struct.usbtmc_device_data*) #1

declare dso_local i32 @usbtmc_ioctl_clear_in_halt(%struct.usbtmc_device_data*) #1

declare dso_local i32 @usbtmc_ioctl_indicator_pulse(%struct.usbtmc_device_data*) #1

declare dso_local i32 @usbtmc_ioctl_clear(%struct.usbtmc_device_data*) #1

declare dso_local i32 @usbtmc_ioctl_abort_bulk_out(%struct.usbtmc_device_data*) #1

declare dso_local i32 @usbtmc_ioctl_abort_bulk_in(%struct.usbtmc_device_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
