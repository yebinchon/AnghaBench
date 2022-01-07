; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_get_endpoints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_get_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__, %struct.usb_host_endpoint* }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_6__ }
%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, %struct.usb_interface*)* @get_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_endpoints(%struct.usbtest_dev* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbtest_dev*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca %struct.usb_host_endpoint*, align 8
  %11 = alloca %struct.usb_host_endpoint*, align 8
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_host_endpoint*, align 8
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %110, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %113

21:                                               ; preds = %15
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %9, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %8, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %11, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %10, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 1
  %24 = load %struct.usb_host_interface*, %struct.usb_host_interface** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %24, i64 %26
  store %struct.usb_host_interface* %27, %struct.usb_host_interface** %7, align 8
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %93, %21
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %31 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %96

35:                                               ; preds = %28
  %36 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %37 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %36, i32 0, i32 1
  %38 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %38, i64 %40
  store %struct.usb_host_endpoint* %41, %struct.usb_host_endpoint** %14, align 8
  %42 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %43 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %56 [
    i32 129, label %46
    i32 128, label %47
  ]

46:                                               ; preds = %35
  br label %57

47:                                               ; preds = %35
  %48 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %49 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %48, i32 0, i32 6
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %75

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %35, %55
  br label %93

57:                                               ; preds = %46
  %58 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %59 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %58, i32 0, i32 0
  %60 = call i64 @usb_endpoint_dir_in(%struct.TYPE_6__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %64 = icmp ne %struct.usb_host_endpoint* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  store %struct.usb_host_endpoint* %66, %struct.usb_host_endpoint** %8, align 8
  br label %67

67:                                               ; preds = %65, %62
  br label %74

68:                                               ; preds = %57
  %69 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %70 = icmp ne %struct.usb_host_endpoint* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  store %struct.usb_host_endpoint* %72, %struct.usb_host_endpoint** %9, align 8
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %67
  br label %93

75:                                               ; preds = %54
  %76 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %77 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %76, i32 0, i32 0
  %78 = call i64 @usb_endpoint_dir_in(%struct.TYPE_6__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %82 = icmp ne %struct.usb_host_endpoint* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  store %struct.usb_host_endpoint* %84, %struct.usb_host_endpoint** %10, align 8
  br label %85

85:                                               ; preds = %83, %80
  br label %92

86:                                               ; preds = %75
  %87 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %11, align 8
  %88 = icmp ne %struct.usb_host_endpoint* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  store %struct.usb_host_endpoint* %90, %struct.usb_host_endpoint** %11, align 8
  br label %91

91:                                               ; preds = %89, %86
  br label %92

92:                                               ; preds = %91, %85
  br label %93

93:                                               ; preds = %92, %74, %56
  %94 = load i32, i32* %13, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %28

96:                                               ; preds = %28
  %97 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %98 = icmp ne %struct.usb_host_endpoint* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %101 = icmp ne %struct.usb_host_endpoint* %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %104 = icmp ne %struct.usb_host_endpoint* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %11, align 8
  %107 = icmp ne %struct.usb_host_endpoint* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %99
  br label %116

109:                                              ; preds = %105, %102
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %15

113:                                              ; preds = %15
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %197

116:                                              ; preds = %108
  %117 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %118 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %117)
  store %struct.usb_device* %118, %struct.usb_device** %12, align 8
  %119 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %120 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %116
  %125 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %126 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %127 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %131 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @usb_set_interface(%struct.usb_device* %125, i32 %129, i64 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %124
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %197

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %116
  %141 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %142 = icmp ne %struct.usb_host_endpoint* %141, null
  br i1 %142, label %143, label %164

143:                                              ; preds = %140
  %144 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %145 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %146 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %150 = and i32 %148, %149
  %151 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %144, i32 %150)
  %152 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %153 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %155 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %156 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %160 = and i32 %158, %159
  %161 = call i32 @usb_sndbulkpipe(%struct.usb_device* %154, i32 %160)
  %162 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %163 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %143, %140
  %165 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %166 = icmp ne %struct.usb_host_endpoint* %165, null
  br i1 %166, label %167, label %196

167:                                              ; preds = %164
  %168 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %169 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %168, i32 0, i32 0
  %170 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %171 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %170, i32 0, i32 3
  store %struct.TYPE_6__* %169, %struct.TYPE_6__** %171, align 8
  %172 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %173 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %174 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %178 = and i32 %176, %177
  %179 = call i32 @usb_rcvisocpipe(%struct.usb_device* %172, i32 %178)
  %180 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %181 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %11, align 8
  %183 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %182, i32 0, i32 0
  %184 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %185 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %184, i32 0, i32 1
  store %struct.TYPE_6__* %183, %struct.TYPE_6__** %185, align 8
  %186 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %187 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %11, align 8
  %188 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %192 = and i32 %190, %191
  %193 = call i32 @usb_sndisocpipe(%struct.usb_device* %186, i32 %192)
  %194 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %195 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %167, %164
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %196, %137, %113
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i64 @usb_endpoint_dir_in(%struct.TYPE_6__*) #1

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i64) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
