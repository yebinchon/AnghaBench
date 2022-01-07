; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c_iio_setup_ev_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c_iio_setup_ev_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_event_interface = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__, i64, i32 }
%struct.TYPE_12__ = type { i32, i32*, %struct.device*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_13__, i64, %struct.iio_event_interface* }
%struct.TYPE_13__ = type { %struct.module* }
%struct.TYPE_10__ = type { i32 }
%struct.module = type { i32 }
%struct.device = type { i32 }

@iio_class = common dso_local global i32 0, align 4
@iio_event_type = common dso_local global i32 0, align 4
@iio_devt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@iio_event_chrdev_fileops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_setup_ev_int(%struct.iio_event_interface* %0, i8* %1, %struct.module* %2, %struct.device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_event_interface*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.module*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_event_interface* %0, %struct.iio_event_interface** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.module* %2, %struct.module** %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  %12 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %13 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  store i32* @iio_class, i32** %14, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %17 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store %struct.device* %15, %struct.device** %18, align 8
  %19 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %20 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  store i32* @iio_event_type, i32** %21, align 8
  %22 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %23 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %22, i32 0, i32 1
  %24 = call i32 @device_initialize(%struct.TYPE_12__* %23)
  %25 = call i32 (...) @iio_device_get_chrdev_minor()
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %10, align 4
  br label %98

30:                                               ; preds = %4
  %31 = load i32, i32* @iio_devt, align 4
  %32 = call i32 @MAJOR(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @MKDEV(i32 %32, i32 %33)
  %35 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %36 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %39 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %38, i32 0, i32 1
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @dev_set_name(%struct.TYPE_12__* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %43 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %42, i32 0, i32 1
  %44 = call i32 @device_add(%struct.TYPE_12__* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %95

48:                                               ; preds = %30
  %49 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %50 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = call i32 @cdev_init(%struct.TYPE_13__* %51, i32* @iio_event_chrdev_fileops)
  %53 = load %struct.module*, %struct.module** %8, align 8
  %54 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %55 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store %struct.module* %53, %struct.module** %57, align 8
  %58 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %59 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %58, i32 0, i32 6
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %62 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %61, i32 0, i32 0
  store i32 10, i32* %62, align 8
  %63 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %64 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %66 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %70 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %69, i32 0, i32 3
  %71 = call i32 @init_waitqueue_head(i32* %70)
  %72 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %73 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %74 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  store %struct.iio_event_interface* %72, %struct.iio_event_interface** %75, align 8
  %76 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %77 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %80 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %83 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @cdev_add(%struct.TYPE_13__* %81, i32 %85, i32 1)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %48
  br label %91

90:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %103

91:                                               ; preds = %89
  %92 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %93 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %92, i32 0, i32 1
  %94 = call i32 @device_unregister(%struct.TYPE_12__* %93)
  br label %95

95:                                               ; preds = %91, %47
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @iio_device_free_chrdev_minor(i32 %96)
  br label %98

98:                                               ; preds = %95, %28
  %99 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %100 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %99, i32 0, i32 1
  %101 = call i32 @put_device(%struct.TYPE_12__* %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %98, %90
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @device_initialize(%struct.TYPE_12__*) #1

declare dso_local i32 @iio_device_get_chrdev_minor(...) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @device_add(%struct.TYPE_12__*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @device_unregister(%struct.TYPE_12__*) #1

declare dso_local i32 @iio_device_free_chrdev_minor(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
