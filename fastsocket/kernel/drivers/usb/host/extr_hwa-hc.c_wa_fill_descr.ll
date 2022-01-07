; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_hwa-hc.c_wa_fill_descr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_hwa-hc.c_wa_fill_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { %struct.usb_wa_descriptor*, %struct.usb_device*, %struct.TYPE_4__* }
%struct.usb_wa_descriptor = type { i32, i32, i32 }
%struct.usb_device = type { i8**, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_descriptor_header = type { i64, i64 }

@.str = private unnamed_addr constant [62 x i8] c"Extra device descriptor: type %02x/%u bytes @ %zu (%zu left)\0A\00", align 1
@USB_DT_WIRE_ADAPTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"cannot find Wire Adapter Class descriptor\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"incomplete Wire Adapter Class descriptor (%zu bytes left, %u needed)\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"short Wire Adapter Class descriptor\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Wire Adapter v%d.%d newer than groked v1.0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wahc*)* @wa_fill_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wa_fill_descr(%struct.wahc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wahc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_descriptor_header*, align 8
  %9 = alloca %struct.usb_wa_descriptor*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.wahc* %0, %struct.wahc** %3, align 8
  %12 = load %struct.wahc*, %struct.wahc** %3, align 8
  %13 = getelementptr inbounds %struct.wahc, %struct.wahc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.wahc*, %struct.wahc** %3, align 8
  %17 = getelementptr inbounds %struct.wahc, %struct.wahc* %16, i32 0, i32 1
  %18 = load %struct.usb_device*, %struct.usb_device** %17, align 8
  store %struct.usb_device* %18, %struct.usb_device** %7, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = ptrtoint %struct.TYPE_6__* %21 to i64
  %26 = ptrtoint %struct.TYPE_6__* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = udiv i64 %28, 4
  store i64 %29, i64* %11, align 8
  %30 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le16_to_cpu(i32 %41)
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %76, %1
  %45 = load i64, i64* %10, align 8
  %46 = icmp uge i64 %45, 16
  br i1 %46, label %47, label %87

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = bitcast i8* %48 to %struct.usb_descriptor_header*
  store %struct.usb_descriptor_header* %49, %struct.usb_descriptor_header** %8, align 8
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %8, align 8
  %52 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %8, align 8
  %55 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %57 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %56, i32 %67, i64 %68)
  %70 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %8, align 8
  %71 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @USB_DT_WIRE_ADAPTER, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %47
  br label %92

76:                                               ; preds = %47
  %77 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %8, align 8
  %78 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %6, align 8
  %82 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %8, align 8
  %83 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %10, align 8
  br label %44

87:                                               ; preds = %44
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %159

92:                                               ; preds = %75
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  %95 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %8, align 8
  %96 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp ugt i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %8, align 8
  %104 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %102, i64 %105)
  br label %157

107:                                              ; preds = %92
  %108 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %8, align 8
  %109 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ult i64 %110, 12
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %157

115:                                              ; preds = %107
  %116 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %8, align 8
  %117 = bitcast %struct.usb_descriptor_header* %116 to %struct.usb_wa_descriptor*
  store %struct.usb_wa_descriptor* %117, %struct.usb_wa_descriptor** %9, align 8
  %118 = load %struct.wahc*, %struct.wahc** %3, align 8
  %119 = getelementptr inbounds %struct.wahc, %struct.wahc* %118, i32 0, i32 0
  store %struct.usb_wa_descriptor* %117, %struct.usb_wa_descriptor** %119, align 8
  %120 = load %struct.usb_wa_descriptor*, %struct.usb_wa_descriptor** %9, align 8
  %121 = getelementptr inbounds %struct.usb_wa_descriptor, %struct.usb_wa_descriptor* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @le16_to_cpu(i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.usb_wa_descriptor*, %struct.usb_wa_descriptor** %9, align 8
  %126 = getelementptr inbounds %struct.usb_wa_descriptor, %struct.usb_wa_descriptor* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load %struct.usb_wa_descriptor*, %struct.usb_wa_descriptor** %9, align 8
  %128 = getelementptr inbounds %struct.usb_wa_descriptor, %struct.usb_wa_descriptor* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le16_to_cpu(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.usb_wa_descriptor*, %struct.usb_wa_descriptor** %9, align 8
  %133 = getelementptr inbounds %struct.usb_wa_descriptor, %struct.usb_wa_descriptor* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.usb_wa_descriptor*, %struct.usb_wa_descriptor** %9, align 8
  %135 = getelementptr inbounds %struct.usb_wa_descriptor, %struct.usb_wa_descriptor* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @le16_to_cpu(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.usb_wa_descriptor*, %struct.usb_wa_descriptor** %9, align 8
  %140 = getelementptr inbounds %struct.usb_wa_descriptor, %struct.usb_wa_descriptor* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load %struct.usb_wa_descriptor*, %struct.usb_wa_descriptor** %9, align 8
  %142 = getelementptr inbounds %struct.usb_wa_descriptor, %struct.usb_wa_descriptor* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 256
  br i1 %144, label %145, label %156

145:                                              ; preds = %115
  %146 = load %struct.device*, %struct.device** %5, align 8
  %147 = load %struct.usb_wa_descriptor*, %struct.usb_wa_descriptor** %9, align 8
  %148 = getelementptr inbounds %struct.usb_wa_descriptor, %struct.usb_wa_descriptor* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 255
  %151 = load %struct.usb_wa_descriptor*, %struct.usb_wa_descriptor** %9, align 8
  %152 = getelementptr inbounds %struct.usb_wa_descriptor, %struct.usb_wa_descriptor* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 255
  %155 = call i32 @dev_warn(%struct.device* %146, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %154)
  br label %156

156:                                              ; preds = %145, %115
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %112, %100
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %87
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
