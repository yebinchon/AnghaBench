; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usblcd.c_lcd_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usblcd.c_lcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_lcd = type { i64, i32, %struct.TYPE_8__*, i64, i64, i32, %struct.usb_interface*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@USB_LCD_CONCURRENT_WRITES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"USBLCD model not supported.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not allocate bulk_in_buffer\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Could not find both bulk-in and bulk-out endpoints\00", align 1
@lcd_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Not able to get a minor for this device.\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"USBLCD Version %1d%1d.%1d%1d found at address %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"USB LCD device now attached to USBLCD-%d\0A\00", align 1
@lcd_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @lcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_lcd*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.usb_lcd* null, %struct.usb_lcd** %6, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.usb_lcd* @kzalloc(i32 64, i32 %14)
  store %struct.usb_lcd* %15, %struct.usb_lcd** %6, align 8
  %16 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %17 = icmp eq %struct.usb_lcd* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %182

20:                                               ; preds = %2
  %21 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %22 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %21, i32 0, i32 1
  %23 = call i32 @kref_init(i32* %22)
  %24 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %25 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %24, i32 0, i32 8
  %26 = load i32, i32* @USB_LCD_CONCURRENT_WRITES, align 4
  %27 = call i32 @sema_init(i32* %25, i32 %26)
  %28 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %29 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %28, i32 0, i32 7
  %30 = call i32 @init_usb_anchor(i32* %29)
  %31 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %32 = call i32 @interface_to_usbdev(%struct.usb_interface* %31)
  %33 = call %struct.TYPE_8__* @usb_get_dev(i32 %32)
  %34 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %35 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %34, i32 0, i32 2
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %38 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %37, i32 0, i32 6
  store %struct.usb_interface* %36, %struct.usb_interface** %38, align 8
  %39 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %40 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %20
  %48 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %49 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %48, i32 0, i32 1
  %50 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %182

53:                                               ; preds = %20
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %54, i32 0, i32 2
  %56 = load %struct.usb_host_interface*, %struct.usb_host_interface** %55, align 8
  store %struct.usb_host_interface* %56, %struct.usb_host_interface** %7, align 8
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %122, %53
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %60 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %125

64:                                               ; preds = %57
  %65 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %66 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %71, %struct.usb_endpoint_descriptor** %8, align 8
  %72 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %73 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %106, label %76

76:                                               ; preds = %64
  %77 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %78 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %76
  %81 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %82 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %88 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %90 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %93 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %92, i32 0, i32 4
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i32 @kmalloc(i64 %94, i32 %95)
  %97 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %98 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %100 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %80
  %104 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %182

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %76, %64
  %107 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %108 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %106
  %112 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %113 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %117 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %120 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %115, %111, %106
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %57

125:                                              ; preds = %57
  %126 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %127 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %132 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %130, %125
  %136 = call i32 @err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %182

137:                                              ; preds = %130
  %138 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %139 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %140 = call i32 @usb_set_intfdata(%struct.usb_interface* %138, %struct.usb_lcd* %139)
  %141 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %142 = call i32 @usb_register_dev(%struct.usb_interface* %141, i32* @lcd_class)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = call i32 @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %147 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %148 = call i32 @usb_set_intfdata(%struct.usb_interface* %147, %struct.usb_lcd* null)
  br label %182

149:                                              ; preds = %137
  %150 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %151 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %150, i32 0, i32 2
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @le16_to_cpu(i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %158 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %157, i32 0, i32 1
  %159 = load i32, i32* %10, align 4
  %160 = and i32 %159, 61440
  %161 = ashr i32 %160, 12
  %162 = load i32, i32* %10, align 4
  %163 = and i32 %162, 3840
  %164 = ashr i32 %163, 8
  %165 = load i32, i32* %10, align 4
  %166 = and i32 %165, 240
  %167 = ashr i32 %166, 4
  %168 = load i32, i32* %10, align 4
  %169 = and i32 %168, 15
  %170 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %171 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %170, i32 0, i32 2
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %158, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %161, i32 %164, i32 %167, i32 %169, i32 %174)
  %176 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %177 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %176, i32 0, i32 1
  %178 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %179 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %177, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %180)
  store i32 0, i32* %3, align 4
  br label %192

182:                                              ; preds = %145, %135, %103, %47, %18
  %183 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %184 = icmp ne %struct.usb_lcd* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %187 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %186, i32 0, i32 1
  %188 = load i32, i32* @lcd_delete, align 4
  %189 = call i32 @kref_put(i32* %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %182
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %190, %149
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local %struct.usb_lcd* @kzalloc(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local %struct.TYPE_8__* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_lcd*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
