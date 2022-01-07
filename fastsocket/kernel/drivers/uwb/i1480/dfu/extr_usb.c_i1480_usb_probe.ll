; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_usb.c_i1480_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_usb.c_i1480_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.device, %struct.TYPE_7__* }
%struct.device = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.i1480_usb = type { i32, %struct.i1480 }
%struct.i1480 = type { i32, i8*, i8*, i8*, i8*, %struct.i1480_usb*, i32, i32, i32*, i32, i32, %struct.device*, %struct.i1480_usb* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"not attaching to iface %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"can't set altsetting 1 on iface 0: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to allocate instance\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Cannot allocate transfer buffers\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot create instance: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"i1480-pre-phy-0.0.bin\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"i1480-usb-0.0.bin\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ptc-0.0.bin\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"i1480-phy-0.0.bin\00", align 1
@i1480_usb_write = common dso_local global i32 0, align 4
@i1480_usb_read = common dso_local global i32 0, align 4
@i1480_usb_wait_init_done = common dso_local global i32 0, align 4
@i1480_usb_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @i1480_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.i1480_usb*, align 8
  %6 = alloca %struct.i1480*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %10 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %156

29:                                               ; preds = %2
  %30 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %31 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %36 = call %struct.TYPE_9__* @interface_to_usbdev(%struct.usb_interface* %35)
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 47806
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %43 = call %struct.TYPE_9__* @interface_to_usbdev(%struct.usb_interface* %42)
  %44 = call i32 @usb_set_interface(%struct.TYPE_9__* %43, i32 0, i32 1)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_warn(%struct.device* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %34, %29
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.i1480_usb* @kzalloc(i32 96, i32 %55)
  store %struct.i1480_usb* %56, %struct.i1480_usb** %5, align 8
  %57 = load %struct.i1480_usb*, %struct.i1480_usb** %5, align 8
  %58 = icmp eq %struct.i1480_usb* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %156

62:                                               ; preds = %52
  %63 = load %struct.i1480_usb*, %struct.i1480_usb** %5, align 8
  %64 = call i32 @i1480_usb_init(%struct.i1480_usb* %63)
  %65 = load %struct.i1480_usb*, %struct.i1480_usb** %5, align 8
  %66 = getelementptr inbounds %struct.i1480_usb, %struct.i1480_usb* %65, i32 0, i32 1
  store %struct.i1480* %66, %struct.i1480** %6, align 8
  %67 = load %struct.i1480*, %struct.i1480** %6, align 8
  %68 = getelementptr inbounds %struct.i1480, %struct.i1480* %67, i32 0, i32 0
  store i32 512, i32* %68, align 8
  %69 = load %struct.i1480*, %struct.i1480** %6, align 8
  %70 = getelementptr inbounds %struct.i1480, %struct.i1480* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 2, %71
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.i1480_usb* @kmalloc(i32 %72, i32 %73)
  %75 = load %struct.i1480*, %struct.i1480** %6, align 8
  %76 = getelementptr inbounds %struct.i1480, %struct.i1480* %75, i32 0, i32 5
  store %struct.i1480_usb* %74, %struct.i1480_usb** %76, align 8
  %77 = load %struct.i1480*, %struct.i1480** %6, align 8
  %78 = getelementptr inbounds %struct.i1480, %struct.i1480* %77, i32 0, i32 5
  %79 = load %struct.i1480_usb*, %struct.i1480_usb** %78, align 8
  %80 = icmp eq %struct.i1480_usb* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %62
  %82 = load %struct.device*, %struct.device** %7, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %153

86:                                               ; preds = %62
  %87 = load %struct.i1480*, %struct.i1480** %6, align 8
  %88 = getelementptr inbounds %struct.i1480, %struct.i1480* %87, i32 0, i32 5
  %89 = load %struct.i1480_usb*, %struct.i1480_usb** %88, align 8
  %90 = load %struct.i1480*, %struct.i1480** %6, align 8
  %91 = getelementptr inbounds %struct.i1480, %struct.i1480* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.i1480_usb, %struct.i1480_usb* %89, i64 %93
  %95 = load %struct.i1480*, %struct.i1480** %6, align 8
  %96 = getelementptr inbounds %struct.i1480, %struct.i1480* %95, i32 0, i32 12
  store %struct.i1480_usb* %94, %struct.i1480_usb** %96, align 8
  %97 = load %struct.i1480_usb*, %struct.i1480_usb** %5, align 8
  %98 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %99 = call i32 @i1480_usb_create(%struct.i1480_usb* %97, %struct.usb_interface* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %86
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %148

106:                                              ; preds = %86
  %107 = load %struct.i1480*, %struct.i1480** %6, align 8
  %108 = getelementptr inbounds %struct.i1480, %struct.i1480* %107, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %108, align 8
  %109 = load %struct.i1480*, %struct.i1480** %6, align 8
  %110 = getelementptr inbounds %struct.i1480, %struct.i1480* %109, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %110, align 8
  %111 = load %struct.i1480*, %struct.i1480** %6, align 8
  %112 = getelementptr inbounds %struct.i1480, %struct.i1480* %111, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %112, align 8
  %113 = load %struct.i1480*, %struct.i1480** %6, align 8
  %114 = getelementptr inbounds %struct.i1480, %struct.i1480* %113, i32 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %114, align 8
  %115 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %116 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %115, i32 0, i32 1
  %117 = load %struct.i1480*, %struct.i1480** %6, align 8
  %118 = getelementptr inbounds %struct.i1480, %struct.i1480* %117, i32 0, i32 11
  store %struct.device* %116, %struct.device** %118, align 8
  %119 = load i32, i32* @i1480_usb_write, align 4
  %120 = load %struct.i1480*, %struct.i1480** %6, align 8
  %121 = getelementptr inbounds %struct.i1480, %struct.i1480* %120, i32 0, i32 10
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @i1480_usb_read, align 4
  %123 = load %struct.i1480*, %struct.i1480** %6, align 8
  %124 = getelementptr inbounds %struct.i1480, %struct.i1480* %123, i32 0, i32 9
  store i32 %122, i32* %124, align 8
  %125 = load %struct.i1480*, %struct.i1480** %6, align 8
  %126 = getelementptr inbounds %struct.i1480, %struct.i1480* %125, i32 0, i32 8
  store i32* null, i32** %126, align 8
  %127 = load i32, i32* @i1480_usb_wait_init_done, align 4
  %128 = load %struct.i1480*, %struct.i1480** %6, align 8
  %129 = getelementptr inbounds %struct.i1480, %struct.i1480* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @i1480_usb_cmd, align 4
  %131 = load %struct.i1480*, %struct.i1480** %6, align 8
  %132 = getelementptr inbounds %struct.i1480, %struct.i1480* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  %133 = load %struct.i1480_usb*, %struct.i1480_usb** %5, align 8
  %134 = getelementptr inbounds %struct.i1480_usb, %struct.i1480_usb* %133, i32 0, i32 1
  %135 = call i32 @i1480_fw_upload(%struct.i1480* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %106
  %139 = load %struct.i1480_usb*, %struct.i1480_usb** %5, align 8
  %140 = getelementptr inbounds %struct.i1480_usb, %struct.i1480_usb* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @usb_reset_device(i32 %141)
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %138, %106
  %146 = load %struct.i1480_usb*, %struct.i1480_usb** %5, align 8
  %147 = call i32 @i1480_usb_destroy(%struct.i1480_usb* %146)
  br label %148

148:                                              ; preds = %145, %102
  %149 = load %struct.i1480*, %struct.i1480** %6, align 8
  %150 = getelementptr inbounds %struct.i1480, %struct.i1480* %149, i32 0, i32 5
  %151 = load %struct.i1480_usb*, %struct.i1480_usb** %150, align 8
  %152 = call i32 @kfree(%struct.i1480_usb* %151)
  br label %153

153:                                              ; preds = %148, %81
  %154 = load %struct.i1480_usb*, %struct.i1480_usb** %5, align 8
  %155 = call i32 @kfree(%struct.i1480_usb* %154)
  br label %156

156:                                              ; preds = %153, %59, %20
  %157 = load i32, i32* %8, align 4
  ret i32 %157
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_interface(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local %struct.i1480_usb* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @i1480_usb_init(%struct.i1480_usb*) #1

declare dso_local %struct.i1480_usb* @kmalloc(i32, i32) #1

declare dso_local i32 @i1480_usb_create(%struct.i1480_usb*, %struct.usb_interface*) #1

declare dso_local i32 @i1480_fw_upload(%struct.i1480*) #1

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @i1480_usb_destroy(%struct.i1480_usb*) #1

declare dso_local i32 @kfree(%struct.i1480_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
