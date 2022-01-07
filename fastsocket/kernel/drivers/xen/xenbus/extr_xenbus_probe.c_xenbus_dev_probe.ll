; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_dev_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.xenbus_device = type { i32, i32 }
%struct.xenbus_driver = type { i32 (%struct.xenbus_device.0*, %struct.xenbus_device_id*)*, i32 }
%struct.xenbus_device.0 = type opaque
%struct.xenbus_device_id = type opaque
%struct.xenbus_device_id.1 = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"talk_to_otherend on %s failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"watch_otherend on %s failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"xenbus_dev_probe on %s\00", align 1
@XenbusStateClosed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_dev_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenbus_driver*, align 8
  %6 = alloca %struct.xenbus_device_id.1*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %8)
  store %struct.xenbus_device* %9, %struct.xenbus_device** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.xenbus_driver* @to_xenbus_driver(i32 %12)
  store %struct.xenbus_driver* %13, %struct.xenbus_driver** %5, align 8
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %15 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DPRINTK(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %19 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.xenbus_device.0*, %struct.xenbus_device_id*)*, i32 (%struct.xenbus_device.0*, %struct.xenbus_device_id*)** %19, align 8
  %21 = icmp ne i32 (%struct.xenbus_device.0*, %struct.xenbus_device_id*)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %75

25:                                               ; preds = %1
  %26 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %27 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %30 = call %struct.xenbus_device_id.1* @match_device(i32 %28, %struct.xenbus_device* %29)
  store %struct.xenbus_device_id.1* %30, %struct.xenbus_device_id.1** %6, align 8
  %31 = load %struct.xenbus_device_id.1*, %struct.xenbus_device_id.1** %6, align 8
  %32 = icmp ne %struct.xenbus_device_id.1* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %75

36:                                               ; preds = %25
  %37 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %38 = call i32 @talk_to_otherend(%struct.xenbus_device* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %43 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %42, i32 0, i32 1
  %44 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %45 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %87

49:                                               ; preds = %36
  %50 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %51 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %50, i32 0, i32 0
  %52 = load i32 (%struct.xenbus_device.0*, %struct.xenbus_device_id*)*, i32 (%struct.xenbus_device.0*, %struct.xenbus_device_id*)** %51, align 8
  %53 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %54 = bitcast %struct.xenbus_device* %53 to %struct.xenbus_device.0*
  %55 = load %struct.xenbus_device_id.1*, %struct.xenbus_device_id.1** %6, align 8
  %56 = bitcast %struct.xenbus_device_id.1* %55 to %struct.xenbus_device_id*
  %57 = call i32 %52(%struct.xenbus_device.0* %54, %struct.xenbus_device_id* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %75

61:                                               ; preds = %49
  %62 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %63 = call i32 @watch_otherend(%struct.xenbus_device* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %68 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %67, i32 0, i32 1
  %69 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %70 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_warn(i32* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %87

74:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %87

75:                                               ; preds = %60, %33, %22
  %76 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %79 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @xenbus_dev_error(%struct.xenbus_device* %76, i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %83 = load i32, i32* @XenbusStateClosed, align 4
  %84 = call i32 @xenbus_switch_state(%struct.xenbus_device* %82, i32 %83)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %75, %74, %66, %41
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.xenbus_device* @to_xenbus_device(%struct.device*) #1

declare dso_local %struct.xenbus_driver* @to_xenbus_driver(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local %struct.xenbus_device_id.1* @match_device(i32, %struct.xenbus_device*) #1

declare dso_local i32 @talk_to_otherend(%struct.xenbus_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @watch_otherend(%struct.xenbus_device*) #1

declare dso_local i32 @xenbus_dev_error(%struct.xenbus_device*, i32, i8*, i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
