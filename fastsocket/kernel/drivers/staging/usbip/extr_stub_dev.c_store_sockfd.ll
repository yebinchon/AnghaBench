; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_dev.c_store_sockfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_dev.c_store_sockfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stub_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, %struct.socket* }
%struct.socket = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"sdev is null\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stub up\0A\00", align 1
@SDEV_ST_AVAILABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"not ready\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@SDEV_ST_USED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"stub down\0A\00", align 1
@SDEV_EVENT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sockfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_sockfd(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stub_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.stub_device* @dev_get_drvdata(%struct.device* %13)
  store %struct.stub_device* %14, %struct.stub_device** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %16 = icmp ne %struct.stub_device* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @ENODEV, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %116

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %85

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @dev_info(%struct.device* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %31 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %35 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SDEV_ST_AVAILABLE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %27
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %44 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %5, align 8
  br label %116

49:                                               ; preds = %27
  %50 = load i32, i32* %11, align 4
  %51 = call %struct.socket* @sockfd_to_socket(i32 %50)
  store %struct.socket* %51, %struct.socket** %12, align 8
  %52 = load %struct.socket*, %struct.socket** %12, align 8
  %53 = icmp ne %struct.socket* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %56 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %5, align 8
  br label %116

61:                                               ; preds = %49
  %62 = load %struct.socket*, %struct.socket** %12, align 8
  %63 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %64 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store %struct.socket* %62, %struct.socket** %65, align 8
  %66 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %67 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %71 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %70, i32 0, i32 0
  %72 = call i32 @usbip_start_threads(%struct.TYPE_3__* %71)
  %73 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %74 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load i64, i64* @SDEV_ST_USED, align 8
  %78 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %79 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %82 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock(i32* %83)
  br label %114

85:                                               ; preds = %22
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 @dev_info(%struct.device* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %89 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %93 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SDEV_ST_USED, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %85
  %99 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %100 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load i64, i64* @EINVAL, align 8
  %104 = sub i64 0, %103
  store i64 %104, i64* %5, align 8
  br label %116

105:                                              ; preds = %85
  %106 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %107 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %111 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %110, i32 0, i32 0
  %112 = load i32, i32* @SDEV_EVENT_DOWN, align 4
  %113 = call i32 @usbip_event_add(%struct.TYPE_3__* %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %61
  %115 = load i64, i64* %9, align 8
  store i64 %115, i64* %5, align 8
  br label %116

116:                                              ; preds = %114, %98, %54, %40, %17
  %117 = load i64, i64* %5, align 8
  ret i64 %117
}

declare dso_local %struct.stub_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.socket* @sockfd_to_socket(i32) #1

declare dso_local i32 @usbip_start_threads(%struct.TYPE_3__*) #1

declare dso_local i32 @usbip_event_add(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
