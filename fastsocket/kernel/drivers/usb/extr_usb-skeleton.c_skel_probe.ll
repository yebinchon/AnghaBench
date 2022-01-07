; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/extr_usb-skeleton.c_skel_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/extr_usb-skeleton.c_skel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_skel = type { i64, i32, i64, i64, i32, i32, %struct.usb_interface*, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@WRITES_IN_FLIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not allocate bulk_in_buffer\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not allocate bulk_in_urb\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Could not find both bulk-in and bulk-out endpoints\00", align 1
@skel_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Not able to get a minor for this device.\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"USB Skeleton device now attached to USBSkel-%d\00", align 1
@skel_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @skel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skel_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_skel*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.usb_skel* @kzalloc(i32 72, i32 %14)
  store %struct.usb_skel* %15, %struct.usb_skel** %6, align 8
  %16 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %17 = icmp ne %struct.usb_skel* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %160

20:                                               ; preds = %2
  %21 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %22 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %21, i32 0, i32 1
  %23 = call i32 @kref_init(i32* %22)
  %24 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %25 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %24, i32 0, i32 12
  %26 = load i32, i32* @WRITES_IN_FLIGHT, align 4
  %27 = call i32 @sema_init(i32* %25, i32 %26)
  %28 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %29 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %28, i32 0, i32 11
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %32 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %31, i32 0, i32 10
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %35 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %34, i32 0, i32 9
  %36 = call i32 @init_usb_anchor(i32* %35)
  %37 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %38 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %37, i32 0, i32 8
  %39 = call i32 @init_completion(i32* %38)
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = call i32 @interface_to_usbdev(%struct.usb_interface* %40)
  %42 = call i32 @usb_get_dev(i32 %41)
  %43 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %44 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %47 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %46, i32 0, i32 6
  store %struct.usb_interface* %45, %struct.usb_interface** %47, align 8
  %48 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %49 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %48, i32 0, i32 2
  %50 = load %struct.usb_host_interface*, %struct.usb_host_interface** %49, align 8
  store %struct.usb_host_interface* %50, %struct.usb_host_interface** %7, align 8
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %126, %20
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %54 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %129

58:                                               ; preds = %51
  %59 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %60 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %65, %struct.usb_endpoint_descriptor** %8, align 8
  %66 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %67 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %58
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %72 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %76 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @le16_to_cpu(i32 %77)
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %81 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %83 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %86 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i32 @kmalloc(i64 %87, i32 %88)
  %90 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %91 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %93 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %74
  %97 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %160

98:                                               ; preds = %74
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i32 @usb_alloc_urb(i32 0, i32 %99)
  %101 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %102 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %104 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %98
  %108 = call i32 @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %160

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %70, %58
  %111 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %112 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %117 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %121 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %124 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %115, %110
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %51

129:                                              ; preds = %51
  %130 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %131 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %136 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %134, %129
  %140 = call i32 @err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %160

141:                                              ; preds = %134
  %142 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %143 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %144 = call i32 @usb_set_intfdata(%struct.usb_interface* %142, %struct.usb_skel* %143)
  %145 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %146 = call i32 @usb_register_dev(%struct.usb_interface* %145, i32* @skel_class)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = call i32 @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %151 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %152 = call i32 @usb_set_intfdata(%struct.usb_interface* %151, %struct.usb_skel* null)
  br label %160

153:                                              ; preds = %141
  %154 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %155 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %154, i32 0, i32 1
  %156 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %157 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @dev_info(i32* %155, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %158)
  store i32 0, i32* %3, align 4
  br label %170

160:                                              ; preds = %149, %139, %107, %96, %18
  %161 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %162 = icmp ne %struct.usb_skel* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %165 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %164, i32 0, i32 1
  %166 = load i32, i32* @skel_delete, align 4
  %167 = call i32 @kref_put(i32* %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %160
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %153
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.usb_skel* @kzalloc(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_skel*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
