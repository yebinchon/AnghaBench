; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_store_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_store_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lun = type { i32 }
%struct.fsg_dev = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"read-only status change prevented\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"read-only status set to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_ro(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.lun*, align 8
  %12 = alloca %struct.fsg_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.lun* @dev_to_lun(%struct.device* %15)
  store %struct.lun* %16, %struct.lun** %11, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.fsg_dev* @dev_get_drvdata(%struct.device* %17)
  store %struct.fsg_dev* %18, %struct.fsg_dev** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %55

25:                                               ; preds = %4
  %26 = load %struct.fsg_dev*, %struct.fsg_dev** %12, align 8
  %27 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %26, i32 0, i32 0
  %28 = call i32 @down_read(i32* %27)
  %29 = load %struct.lun*, %struct.lun** %11, align 8
  %30 = call i64 @backing_file_is_open(%struct.lun* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.lun*, %struct.lun** %11, align 8
  %34 = call i32 (%struct.lun*, i8*, ...) @LDBG(%struct.lun* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* @EBUSY, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %10, align 8
  br label %50

37:                                               ; preds = %25
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.lun*, %struct.lun** %11, align 8
  %44 = getelementptr inbounds %struct.lun, %struct.lun* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.lun*, %struct.lun** %11, align 8
  %46 = load %struct.lun*, %struct.lun** %11, align 8
  %47 = getelementptr inbounds %struct.lun, %struct.lun* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.lun*, i8*, ...) @LDBG(%struct.lun* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %37, %32
  %51 = load %struct.fsg_dev*, %struct.fsg_dev** %12, align 8
  %52 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %51, i32 0, i32 0
  %53 = call i32 @up_read(i32* %52)
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %50, %22
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.lun* @dev_to_lun(%struct.device*) #1

declare dso_local %struct.fsg_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @backing_file_is_open(%struct.lun*) #1

declare dso_local i32 @LDBG(%struct.lun*, i8*, ...) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
