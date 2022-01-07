; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { %struct.TYPE_9__*, %struct.usb_device*, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.usb_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"usb_device\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"driver bug: inconsistent usb device\0A\00", align 1
@MISSING_CASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Line6 %s now disconnected\0A\00", align 1
@LINE6_MAX_DEVICES = common dso_local global i32 0, align 4
@line6_devices = common dso_local global %struct.usb_line6** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @line6_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = icmp eq %struct.usb_interface* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %116

10:                                               ; preds = %1
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %4, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = icmp eq %struct.usb_device* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %116

16:                                               ; preds = %10
  %17 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = call i32 @sysfs_remove_link(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %28 = call %struct.usb_line6* @usb_get_intfdata(%struct.usb_interface* %27)
  store %struct.usb_line6* %28, %struct.usb_line6** %3, align 8
  %29 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %30 = icmp ne %struct.usb_line6* %29, null
  br i1 %30, label %31, label %108

31:                                               ; preds = %16
  %32 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %33 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %38 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @usb_kill_urb(i32* %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %43 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %44 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %43, i32 0, i32 1
  %45 = load %struct.usb_device*, %struct.usb_device** %44, align 8
  %46 = icmp ne %struct.usb_device* %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %49 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %54 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %53, i32 0, i32 1
  %55 = load %struct.usb_device*, %struct.usb_device** %54, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %77 [
    i32 143, label %59
    i32 142, label %59
    i32 141, label %59
    i32 139, label %59
    i32 138, label %59
    i32 137, label %59
    i32 136, label %59
    i32 134, label %59
    i32 135, label %62
    i32 130, label %71
    i32 133, label %74
    i32 132, label %74
    i32 131, label %74
    i32 140, label %74
  ]

59:                                               ; preds = %52, %52, %52, %52, %52, %52, %52, %52
  %60 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %61 = call i32 @pod_disconnect(%struct.usb_interface* %60)
  br label %79

62:                                               ; preds = %52
  %63 = load i32, i32* %5, align 4
  switch i32 %63, label %70 [
    i32 129, label %64
    i32 128, label %67
  ]

64:                                               ; preds = %62
  %65 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %66 = call i32 @pod_disconnect(%struct.usb_interface* %65)
  br label %70

67:                                               ; preds = %62
  %68 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %69 = call i32 @variax_disconnect(%struct.usb_interface* %68)
  br label %70

70:                                               ; preds = %62, %67, %64
  br label %79

71:                                               ; preds = %52
  %72 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %73 = call i32 @variax_disconnect(%struct.usb_interface* %72)
  br label %79

74:                                               ; preds = %52, %52, %52, %52
  %75 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %76 = call i32 @toneport_disconnect(%struct.usb_interface* %75)
  br label %79

77:                                               ; preds = %52
  %78 = load i32, i32* @MISSING_CASE, align 4
  br label %79

79:                                               ; preds = %77, %74, %71, %70, %59
  %80 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %81 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %80, i32 0, i32 0
  %82 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %83 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_info(%struct.TYPE_10__* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @LINE6_MAX_DEVICES, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %106, %79
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %6, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.usb_line6**, %struct.usb_line6*** @line6_devices, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.usb_line6*, %struct.usb_line6** %94, i64 %96
  %98 = load %struct.usb_line6*, %struct.usb_line6** %97, align 8
  %99 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %100 = icmp eq %struct.usb_line6* %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.usb_line6**, %struct.usb_line6*** @line6_devices, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.usb_line6*, %struct.usb_line6** %102, i64 %104
  store %struct.usb_line6* null, %struct.usb_line6** %105, align 8
  br label %106

106:                                              ; preds = %101, %93
  br label %89

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %16
  %109 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %110 = call i32 @line6_destruct(%struct.usb_interface* %109)
  %111 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %112 = call i32 @usb_put_intf(%struct.usb_interface* %111)
  %113 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %114 = call i32 @usb_put_dev(%struct.usb_device* %113)
  %115 = call i32 (...) @line6_list_devices()
  br label %116

116:                                              ; preds = %108, %15, %9
  ret void
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local %struct.usb_line6* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pod_disconnect(%struct.usb_interface*) #1

declare dso_local i32 @variax_disconnect(%struct.usb_interface*) #1

declare dso_local i32 @toneport_disconnect(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @line6_destruct(%struct.usb_interface*) #1

declare dso_local i32 @usb_put_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @line6_list_devices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
