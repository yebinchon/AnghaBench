; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/display/extr_display-sysfs.c_display_store_contrast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/display/extr_display-sysfs.c_display_store_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.display_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.display_device*, i32)* }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"display: set contrast to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @display_store_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @display_store_contrast(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.display_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.display_device* @dev_get_drvdata(%struct.device* %15)
  store %struct.display_device* %16, %struct.display_device** %10, align 8
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @simple_strtoul(i8* %19, i8** %14, i32 0)
  store i32 %20, i32* %13, align 4
  %21 = load i8*, i8** %14, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  store i64 %25, i64* %12, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isspace(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i64, i64* %12, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %12, align 8
  br label %33

33:                                               ; preds = %30, %4
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %5, align 8
  br label %76

39:                                               ; preds = %33
  %40 = load %struct.display_device*, %struct.display_device** %10, align 8
  %41 = getelementptr inbounds %struct.display_device, %struct.display_device* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.display_device*, %struct.display_device** %10, align 8
  %44 = getelementptr inbounds %struct.display_device, %struct.display_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.display_device*, %struct.display_device** %10, align 8
  %49 = getelementptr inbounds %struct.display_device, %struct.display_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.display_device*, i32)*, i32 (%struct.display_device*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.display_device*, i32)* %52, null
  br label %54

54:                                               ; preds = %47, %39
  %55 = phi i1 [ false, %39 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.display_device*, %struct.display_device** %10, align 8
  %63 = getelementptr inbounds %struct.display_device, %struct.display_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.display_device*, i32)*, i32 (%struct.display_device*, i32)** %65, align 8
  %67 = load %struct.display_device*, %struct.display_device** %10, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 %66(%struct.display_device* %67, i32 %68)
  %70 = load i64, i64* %9, align 8
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %59, %54
  %72 = load %struct.display_device*, %struct.display_device** %10, align 8
  %73 = getelementptr inbounds %struct.display_device, %struct.display_device* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i64, i64* %11, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %71, %37
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local %struct.display_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
