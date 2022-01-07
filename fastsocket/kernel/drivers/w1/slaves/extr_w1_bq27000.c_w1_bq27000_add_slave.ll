; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_bq27000.c_w1_bq27000_add_slave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_bq27000.c_w1_bq27000_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"bq27000-battery\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @w1_bq27000_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_bq27000_add_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  store i32 1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.platform_device* %8, %struct.platform_device** %6, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %10 = icmp ne %struct.platform_device* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %17 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %16, i32 0, i32 0
  %18 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* %17, i32** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = call i32 @platform_device_add(%struct.platform_device* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %31

26:                                               ; preds = %15
  %27 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %28 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %27, i32 0, i32 0
  %29 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %30 = call i32 @dev_set_drvdata(i32* %28, %struct.platform_device* %29)
  br label %34

31:                                               ; preds = %25
  %32 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %33 = call i32 @platform_device_unregister(%struct.platform_device* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.platform_device*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
