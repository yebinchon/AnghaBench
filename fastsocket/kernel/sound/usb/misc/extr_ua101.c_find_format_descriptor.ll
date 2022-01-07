; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_find_format_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_find_format_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uac_format_type_i_discrete_descriptor = type { i32, i64, i64, i64, i32 }
%struct.usb_interface = type { i32, i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"invalid num_altsetting\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid bNumEndpoints\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"descriptor overflow\0A\00", align 1
@USB_DT_CS_INTERFACE = common dso_local global i64 0, align 8
@UAC_FORMAT_TYPE = common dso_local global i64 0, align 8
@UAC_FORMAT_TYPE_I_PCM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid format type\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"sample format descriptor not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uac_format_type_i_discrete_descriptor* (%struct.usb_interface*)* @find_format_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uac_format_type_i_discrete_descriptor* @find_format_descriptor(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.uac_format_type_i_discrete_descriptor*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uac_format_type_i_discrete_descriptor*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %9 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 1
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.uac_format_type_i_discrete_descriptor* null, %struct.uac_format_type_i_discrete_descriptor** %2, align 8
  br label %118

16:                                               ; preds = %1
  %17 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 2
  %19 = load %struct.usb_host_interface*, %struct.usb_host_interface** %18, align 8
  %20 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %19, i64 0
  store %struct.usb_host_interface* %20, %struct.usb_host_interface** %4, align 8
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 1
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store %struct.uac_format_type_i_discrete_descriptor* null, %struct.uac_format_type_i_discrete_descriptor** %2, align 8
  br label %118

30:                                               ; preds = %16
  %31 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 2
  %33 = load %struct.usb_host_interface*, %struct.usb_host_interface** %32, align 8
  %34 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %33, i64 1
  store %struct.usb_host_interface* %34, %struct.usb_host_interface** %4, align 8
  %35 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %36 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %42 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %41, i32 0, i32 1
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store %struct.uac_format_type_i_discrete_descriptor* null, %struct.uac_format_type_i_discrete_descriptor** %2, align 8
  br label %118

44:                                               ; preds = %30
  %45 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %46 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %5, align 8
  %48 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %49 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %102, %44
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp uge i64 %53, 4
  br i1 %54, label %55, label %114

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = bitcast i32* %56 to %struct.uac_format_type_i_discrete_descriptor*
  store %struct.uac_format_type_i_discrete_descriptor* %57, %struct.uac_format_type_i_discrete_descriptor** %7, align 8
  %58 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %7, align 8
  %59 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 1
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store %struct.uac_format_type_i_discrete_descriptor* null, %struct.uac_format_type_i_discrete_descriptor** %2, align 8
  br label %118

67:                                               ; preds = %55
  %68 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %7, align 8
  %69 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @UAC_FORMAT_TYPE_I_DISCRETE_DESC_SIZE(i32 1)
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %67
  %74 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %7, align 8
  %75 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @USB_DT_CS_INTERFACE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %73
  %80 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %7, align 8
  %81 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UAC_FORMAT_TYPE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %7, align 8
  %87 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @UAC_FORMAT_TYPE_I_PCM, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %7, align 8
  %93 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %91, %85
  %97 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %98 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %97, i32 0, i32 1
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store %struct.uac_format_type_i_discrete_descriptor* null, %struct.uac_format_type_i_discrete_descriptor** %2, align 8
  br label %118

100:                                              ; preds = %91
  %101 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %7, align 8
  store %struct.uac_format_type_i_discrete_descriptor* %101, %struct.uac_format_type_i_discrete_descriptor** %2, align 8
  br label %118

102:                                              ; preds = %79, %73, %67
  %103 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %7, align 8
  %104 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %7, align 8
  %109 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %5, align 8
  br label %51

114:                                              ; preds = %51
  %115 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %116 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %115, i32 0, i32 1
  %117 = call i32 @dev_err(i32* %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store %struct.uac_format_type_i_discrete_descriptor* null, %struct.uac_format_type_i_discrete_descriptor** %2, align 8
  br label %118

118:                                              ; preds = %114, %100, %96, %63, %40, %26, %12
  %119 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %2, align 8
  ret %struct.uac_format_type_i_discrete_descriptor* %119
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @UAC_FORMAT_TYPE_I_DISCRETE_DESC_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
