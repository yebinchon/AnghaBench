; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_ds2760.c_w1_ds2760_add_slave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_ds2760.c_w1_ds2760_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [15 x i8] c"ds2760-battery\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@w1_ds2760_bin_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @w1_ds2760_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_ds2760_add_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca %struct.w1_slave*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %2, align 8
  %6 = call i32 (...) @new_bat_id()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %3, align 4
  br label %50

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = icmp ne %struct.platform_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %11
  %20 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %21 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %20, i32 0, i32 0
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %26 = call i32 @platform_device_add(%struct.platform_device* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %44

30:                                               ; preds = %19
  %31 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %32 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @sysfs_create_bin_file(i32* %33, i32* @w1_ds2760_bin_attr)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %40 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %39, i32 0, i32 0
  %41 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %42 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %40, %struct.platform_device* %41)
  br label %51

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %29
  %45 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %46 = call i32 @platform_device_unregister(%struct.platform_device* %45)
  br label %47

47:                                               ; preds = %44, %16
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @release_bat_id(i32 %48)
  br label %50

50:                                               ; preds = %47, %9
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @new_bat_id(...) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.platform_device*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @release_bat_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
