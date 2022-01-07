; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mt9d112_sensorw = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@mt9d112_client = common dso_local global %struct.i2c_client* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"mt9d112_probe succeeded!\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"mt9d112_probe failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt9d112_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9d112_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @I2C_FUNC_I2C, align 4
  %11 = call i32 @i2c_check_functionality(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 4, i32 %17)
  store i32* %18, i32** @mt9d112_sensorw, align 8
  %19 = load i32*, i32** @mt9d112_sensorw, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %32

24:                                               ; preds = %16
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32*, i32** @mt9d112_sensorw, align 8
  %27 = call i32 @i2c_set_clientdata(%struct.i2c_client* %25, i32* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call i32 @mt9d112_init_client(%struct.i2c_client* %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  store %struct.i2c_client* %30, %struct.i2c_client** @mt9d112_client, align 8
  %31 = call i32 @CDBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %37

32:                                               ; preds = %21, %13
  %33 = load i32*, i32** @mt9d112_sensorw, align 8
  %34 = call i32 @kfree(i32* %33)
  store i32* null, i32** @mt9d112_sensorw, align 8
  %35 = call i32 @CDBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, i32*) #1

declare dso_local i32 @mt9d112_init_client(%struct.i2c_client*) #1

declare dso_local i32 @CDBG(i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
