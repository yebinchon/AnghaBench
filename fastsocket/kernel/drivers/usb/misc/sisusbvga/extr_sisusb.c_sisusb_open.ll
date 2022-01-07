; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.sisusb_usb_data* }
%struct.sisusb_usb_data = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.usb_interface = type { i32 }

@sisusb_driver = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to initialize device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Device not attached to USB 2.0 hub\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sisusb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.sisusb_usb_data*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call %struct.usb_interface* @usb_find_interface(i32* @sisusb_driver, i32 %11)
  store %struct.usb_interface* %12, %struct.usb_interface** %7, align 8
  %13 = icmp ne %struct.usb_interface* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %107

17:                                               ; preds = %2
  %18 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %19 = call %struct.sisusb_usb_data* @usb_get_intfdata(%struct.usb_interface* %18)
  store %struct.sisusb_usb_data* %19, %struct.sisusb_usb_data** %6, align 8
  %20 = icmp ne %struct.sisusb_usb_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %107

24:                                               ; preds = %17
  %25 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %26 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %29 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %34 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %39 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %107

43:                                               ; preds = %32
  %44 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %45 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %50 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %107

54:                                               ; preds = %43
  %55 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %56 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %95, label %59

59:                                               ; preds = %54
  %60 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %61 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @USB_SPEED_HIGH, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %59
  %68 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %69 = call i64 @sisusb_init_gfxdevice(%struct.sisusb_usb_data* %68, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %73 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %76 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %107

82:                                               ; preds = %67
  br label %94

83:                                               ; preds = %59
  %84 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %85 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %88 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %107

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %54
  %96 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %97 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %96, i32 0, i32 2
  %98 = call i32 @kref_get(i32* %97)
  %99 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %100 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %102 = load %struct.file*, %struct.file** %5, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 0
  store %struct.sisusb_usb_data* %101, %struct.sisusb_usb_data** %103, align 8
  %104 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %105 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %95, %83, %71, %48, %37, %21, %14
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.usb_interface* @usb_find_interface(i32*, i32) #1

declare dso_local %struct.sisusb_usb_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @sisusb_init_gfxdevice(%struct.sisusb_usb_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
