; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c_msm_device_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c_msm_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_device = type { %struct.msm_sync*, i32 }
%struct.msm_sync = type { i32 }

@msm_devno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"control\00", align 1
@msm_fops_control = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error creating control node: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@msm_fops_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"error creating config node: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@msm_fops_frame = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"error creating frame node: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_device*, %struct.msm_sync*, i32)* @msm_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_device_init(%struct.msm_device* %0, %struct.msm_sync* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_device*, align 8
  %6 = alloca %struct.msm_sync*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msm_device* %0, %struct.msm_device** %5, align 8
  store %struct.msm_sync* %1, %struct.msm_sync** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = mul nsw i32 3, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @msm_devno, align 4
  %15 = call i32 @MAJOR(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @MKDEV(i32 %15, i32 %16)
  %18 = call i32 @msm_setup_cdev(%struct.msm_device* %12, i32 %13, i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* @msm_fops_control)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %103

25:                                               ; preds = %3
  %26 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %27 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %26, i64 1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @msm_devno, align 4
  %30 = call i32 @MAJOR(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @MKDEV(i32 %30, i32 %32)
  %34 = call i32 @msm_setup_cdev(%struct.msm_device* %27, i32 %28, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @msm_fops_config)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %41 = load i32, i32* @msm_devno, align 4
  %42 = call i32 @MAJOR(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @MKDEV(i32 %42, i32 %43)
  %45 = call i32 @msm_tear_down_cdev(%struct.msm_device* %40, i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %103

47:                                               ; preds = %25
  %48 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %49 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %48, i64 2
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @msm_devno, align 4
  %52 = call i32 @MAJOR(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 2
  %55 = call i32 @MKDEV(i32 %52, i32 %54)
  %56 = call i32 @msm_setup_cdev(%struct.msm_device* %49, i32 %50, i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* @msm_fops_frame)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %63 = load i32, i32* @msm_devno, align 4
  %64 = call i32 @MAJOR(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @MKDEV(i32 %64, i32 %65)
  %67 = call i32 @msm_tear_down_cdev(%struct.msm_device* %62, i32 %66)
  %68 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %69 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %68, i64 1
  %70 = load i32, i32* @msm_devno, align 4
  %71 = call i32 @MAJOR(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @MKDEV(i32 %71, i32 %73)
  %75 = call i32 @msm_tear_down_cdev(%struct.msm_device* %69, i32 %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %103

77:                                               ; preds = %47
  %78 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %79 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %78, i64 0
  %80 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %79, i32 0, i32 1
  %81 = call i32 @atomic_set(i32* %80, i32 0)
  %82 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %83 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %82, i64 1
  %84 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %83, i32 0, i32 1
  %85 = call i32 @atomic_set(i32* %84, i32 0)
  %86 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %87 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %86, i64 2
  %88 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %87, i32 0, i32 1
  %89 = call i32 @atomic_set(i32* %88, i32 0)
  %90 = load %struct.msm_sync*, %struct.msm_sync** %6, align 8
  %91 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %92 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %91, i64 0
  %93 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %92, i32 0, i32 0
  store %struct.msm_sync* %90, %struct.msm_sync** %93, align 8
  %94 = load %struct.msm_sync*, %struct.msm_sync** %6, align 8
  %95 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %96 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %95, i64 1
  %97 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %96, i32 0, i32 0
  store %struct.msm_sync* %94, %struct.msm_sync** %97, align 8
  %98 = load %struct.msm_sync*, %struct.msm_sync** %6, align 8
  %99 = load %struct.msm_device*, %struct.msm_device** %5, align 8
  %100 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %99, i64 2
  %101 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %100, i32 0, i32 0
  store %struct.msm_sync* %98, %struct.msm_sync** %101, align 8
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %77, %59, %37, %21
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @msm_setup_cdev(%struct.msm_device*, i32, i32, i8*, i32*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @msm_tear_down_cdev(%struct.msm_device*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
