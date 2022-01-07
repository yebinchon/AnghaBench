; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c_msm_setup_cdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c_msm_setup_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.file_operations = type { i32 }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@msm_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"msm_camera: error creating device: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"msm_camera: error adding cdev: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_device*, i32, i32, i8*, %struct.file_operations*)* @msm_setup_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_setup_cdev(%struct.msm_device* %0, i32 %1, i32 %2, i8* %3, %struct.file_operations* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  store %struct.msm_device* %0, %struct.msm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.file_operations* %4, %struct.file_operations** %11, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @msm_class, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.device* @device_create(i32 %16, i32* null, i32 %17, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19)
  store %struct.device* %20, %struct.device** %13, align 8
  %21 = load %struct.device*, %struct.device** %13, align 8
  %22 = call i64 @IS_ERR(%struct.device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load %struct.device*, %struct.device** %13, align 8
  %26 = call i32 @PTR_ERR(%struct.device* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %54

30:                                               ; preds = %5
  %31 = load %struct.msm_device*, %struct.msm_device** %7, align 8
  %32 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %31, i32 0, i32 0
  %33 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %34 = call i32 @cdev_init(%struct.TYPE_3__* %32, %struct.file_operations* %33)
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = load %struct.msm_device*, %struct.msm_device** %7, align 8
  %37 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.msm_device*, %struct.msm_device** %7, align 8
  %40 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @cdev_add(%struct.TYPE_3__* %40, i32 %41, i32 1)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @msm_class, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @device_destroy(i32 %48, i32 %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %54

52:                                               ; preds = %30
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %45, %24
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.device* @device_create(i32, i32*, i32, i32*, i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_3__*, %struct.file_operations*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
