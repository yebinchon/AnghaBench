; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_driver.c_adsp_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_driver.c_adsp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adsp_device = type { i8*, %struct.device*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@adsp_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@adsp_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adsp_device*, i8*, %struct.device*, i32)* @adsp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adsp_create(%struct.adsp_device* %0, i8* %1, %struct.device* %2, i32 %3) #0 {
  %5 = alloca %struct.adsp_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.adsp_device* %0, %struct.adsp_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @adsp_class, align 4
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.device* @device_create(i32 %11, %struct.device* %12, i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14)
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load %struct.device*, %struct.device** %9, align 8
  %17 = call i64 @IS_ERR(%struct.device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %54

20:                                               ; preds = %4
  %21 = load %struct.adsp_device*, %struct.adsp_device** %5, align 8
  %22 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %21, i32 0, i32 5
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.adsp_device*, %struct.adsp_device** %5, align 8
  %25 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %24, i32 0, i32 4
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.adsp_device*, %struct.adsp_device** %5, align 8
  %28 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %27, i32 0, i32 3
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.adsp_device*, %struct.adsp_device** %5, align 8
  %31 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %30, i32 0, i32 2
  %32 = call i32 @cdev_init(%struct.TYPE_3__* %31, i32* @adsp_fops)
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = load %struct.adsp_device*, %struct.adsp_device** %5, align 8
  %35 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.adsp_device*, %struct.adsp_device** %5, align 8
  %38 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %37, i32 0, i32 2
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @cdev_add(%struct.TYPE_3__* %38, i32 %39, i32 1)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %20
  %44 = load i32, i32* @adsp_class, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @device_destroy(i32 %44, i32 %45)
  br label %54

47:                                               ; preds = %20
  %48 = load %struct.device*, %struct.device** %9, align 8
  %49 = load %struct.adsp_device*, %struct.adsp_device** %5, align 8
  %50 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %49, i32 0, i32 1
  store %struct.device* %48, %struct.device** %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.adsp_device*, %struct.adsp_device** %5, align 8
  %53 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %19, %47, %43
  ret void
}

declare dso_local %struct.device* @device_create(i32, %struct.device*, i32, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
