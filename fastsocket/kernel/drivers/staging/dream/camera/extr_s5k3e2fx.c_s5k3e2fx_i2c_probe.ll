; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_s5k3e2fx.c_s5k3e2fx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_s5k3e2fx.c_s5k3e2fx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"s5k3e2fx_probe called!\0A\00", align 1
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"i2c_check_functionality failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@s5k3e2fx_sensorw = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"kzalloc failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@s5k3e2fx_client = common dso_local global %struct.i2c_client* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"s5k3e2fx_probe successed! rc = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"s5k3e2fx_probe failed! rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @s5k3e2fx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k3e2fx_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_I2C, align 4
  %12 = call i32 @i2c_check_functionality(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %35

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @kzalloc(i32 4, i32 %17)
  store i32 %18, i32* @s5k3e2fx_sensorw, align 4
  %19 = load i32, i32* @s5k3e2fx_sensorw, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %35

25:                                               ; preds = %16
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @s5k3e2fx_sensorw, align 4
  %28 = call i32 @i2c_set_clientdata(%struct.i2c_client* %26, i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @s5k3e2fx_init_client(%struct.i2c_client* %29)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  store %struct.i2c_client* %31, %struct.i2c_client** @s5k3e2fx_client, align 8
  %32 = call i32 @mdelay(i32 50)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  store i32 0, i32* %3, align 4
  br label %39

35:                                               ; preds = %21, %14
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @CDBG(i8*, ...) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, i32) #1

declare dso_local i32 @s5k3e2fx_init_client(%struct.i2c_client*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
