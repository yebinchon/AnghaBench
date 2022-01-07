; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_generic.c_usb_choose_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_generic.c_usb_choose_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, %struct.TYPE_7__, %struct.usb_host_config* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.usb_host_config = type { %struct.TYPE_8__, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_interface_descriptor }
%struct.usb_interface_descriptor = type { i64 }

@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"rejected %d configuration%s due to insufficient available bus power\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"configuration #%d chosen from %d choice%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"no configuration chosen from %d choice%s\0A\00", align 1
@USB_CONFIG_ATT_SELFPOWER = common dso_local global i32 0, align 4
@bus_powered = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_choose_configuration(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_config*, align 8
  %7 = alloca %struct.usb_host_config*, align 8
  %8 = alloca %struct.usb_interface_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  store i32 0, i32* %5, align 4
  store %struct.usb_host_config* null, %struct.usb_host_config** %7, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 3
  %11 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  store %struct.usb_host_config* %11, %struct.usb_host_config** %6, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %89, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %94

20:                                               ; preds = %16
  store %struct.usb_interface_descriptor* null, %struct.usb_interface_descriptor** %8, align 8
  %21 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %22 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %28 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.usb_interface_descriptor* %34, %struct.usb_interface_descriptor** %8, align 8
  br label %35

35:                                               ; preds = %26, %20
  %36 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %37 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 2
  %41 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %89

48:                                               ; preds = %35
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %53 = icmp ne %struct.usb_interface_descriptor* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %56 = call i64 @is_rndis(%struct.usb_interface_descriptor* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %60 = call i64 @is_activesync(%struct.usb_interface_descriptor* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54
  br label %89

63:                                               ; preds = %58, %51, %48
  %64 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %65 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %72 = icmp ne %struct.usb_interface_descriptor* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %75 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  store %struct.usb_host_config* %80, %struct.usb_host_config** %7, align 8
  br label %94

81:                                               ; preds = %73, %70, %63
  %82 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %83 = icmp ne %struct.usb_host_config* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  store %struct.usb_host_config* %85, %struct.usb_host_config** %7, align 8
  br label %86

86:                                               ; preds = %84, %81
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88, %62, %45
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  %92 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %93 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %92, i32 1
  store %struct.usb_host_config* %93, %struct.usb_host_config** %6, align 8
  br label %16

94:                                               ; preds = %79, %16
  %95 = load i32, i32* %5, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %99 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %98, i32 0, i32 1
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @plural(i32 %101)
  %103 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %99, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %97, %94
  %105 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %106 = icmp ne %struct.usb_host_config* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %109 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %3, align 4
  %112 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 1
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @plural(i32 %116)
  %118 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %115, i32 %117)
  br label %126

119:                                              ; preds = %104
  store i32 -1, i32* %3, align 4
  %120 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %121 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %120, i32 0, i32 1
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @plural(i32 %123)
  %125 = call i32 @dev_warn(i32* %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %119, %107
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @is_rndis(%struct.usb_interface_descriptor*) #1

declare dso_local i64 @is_activesync(%struct.usb_interface_descriptor*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @plural(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
