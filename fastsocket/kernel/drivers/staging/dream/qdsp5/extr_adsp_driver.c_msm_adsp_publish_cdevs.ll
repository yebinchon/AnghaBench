; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_driver.c_msm_adsp_publish_cdevs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_driver.c_msm_adsp_publish_cdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@adsp_devices = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"adsp\00", align 1
@adsp_class = common dso_local global i32 0, align 4
@adsp_devno = common dso_local global i32 0, align 4
@adsp_device_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_adsp_publish_cdevs(%struct.msm_adsp_module* %0, i32 %1) #0 {
  %3 = alloca %struct.msm_adsp_module*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @kzalloc(i32 %9, i32 %10)
  store i64 %11, i64* @adsp_devices, align 8
  %12 = load i64, i64* @adsp_devices, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %66

15:                                               ; preds = %2
  %16 = load i32, i32* @THIS_MODULE, align 4
  %17 = call i32 @class_create(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* @adsp_class, align 4
  %18 = load i32, i32* @adsp_class, align 4
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %63

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @alloc_chrdev_region(i32* @adsp_devno, i32 0, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %60

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* @adsp_device_count, align 4
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %56, %28
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @adsp_device_count, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i64, i64* @adsp_devices, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %39, i64 %41
  %43 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %45, i64 %47
  %49 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* @adsp_devno, align 4
  %52 = call i32 @MAJOR(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @MKDEV(i32 %52, i32 %53)
  %55 = call i32 @adsp_create(i64 %38, i32 %44, i32* %50, i32 %54)
  br label %56

56:                                               ; preds = %34
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %30

59:                                               ; preds = %30
  br label %66

60:                                               ; preds = %27
  %61 = load i32, i32* @adsp_class, align 4
  %62 = call i32 @class_unregister(i32 %61)
  br label %63

63:                                               ; preds = %60, %21
  %64 = load i64, i64* @adsp_devices, align 8
  %65 = call i32 @kfree(i64 %64)
  br label %66

66:                                               ; preds = %63, %59, %14
  ret void
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @adsp_create(i64, i32, i32*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @class_unregister(i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
