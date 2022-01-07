; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_hwa-hc.c_hwahc_security_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_hwa-hc.c_hwahc_security_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwahc = type { %struct.TYPE_4__, %struct.wusbhc }
%struct.TYPE_4__ = type { %struct.usb_device* }
%struct.usb_device = type { %struct.TYPE_6__*, i8**, %struct.TYPE_6__*, %struct.device }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.wusbhc = type { %struct.usb_encryption_descriptor* }
%struct.usb_encryption_descriptor = type { i32, i32, i32 }
%struct.usb_security_descriptor = type { i32 }

@USB_DT_SECURITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"BUG? WUSB host has no security descriptors\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"BUG? Not enough data to process security descriptor header (%zu bytes left vs %zu needed)\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"BUG? Not enough data to process security descriptors (%zu bytes left vs %zu needed)\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"BUG: bad host security descriptor; not enough data (%zu vs %zu left)\0A\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"BUG: bad host encryption descriptor; descriptor is too short (%zu vs %zu needed)\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s (0x%02x) \00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"supported encryption types: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"E: host doesn't support CCM-1 crypto\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwahc*)* @hwahc_security_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwahc_security_create(%struct.hwahc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwahc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wusbhc*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.usb_security_descriptor*, align 8
  %9 = alloca %struct.usb_encryption_descriptor*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [64 x i8], align 16
  store %struct.hwahc* %0, %struct.hwahc** %3, align 8
  %17 = load %struct.hwahc*, %struct.hwahc** %3, align 8
  %18 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %17, i32 0, i32 1
  store %struct.wusbhc* %18, %struct.wusbhc** %5, align 8
  %19 = load %struct.hwahc*, %struct.hwahc** %3, align 8
  %20 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.usb_device*, %struct.usb_device** %21, align 8
  store %struct.usb_device* %22, %struct.usb_device** %6, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 3
  store %struct.device* %24, %struct.device** %7, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = ptrtoint %struct.TYPE_6__* %27 to i64
  %32 = ptrtoint %struct.TYPE_6__* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = udiv i64 %34, 4
  store i64 %35, i64* %15, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le16_to_cpu(i32 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  store i8* %51, i8** %11, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* %15, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le16_to_cpu(i32 %63)
  %65 = load i32, i32* @USB_DT_SECURITY, align 4
  %66 = bitcast %struct.usb_security_descriptor** %8 to i8**
  %67 = call i32 @__usb_get_extra_descriptor(i8* %57, i64 %64, i32 %65, i8** %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %1
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = call i32 @dev_warn(%struct.device* %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %198

73:                                               ; preds = %1
  store i64 4, i64* %13, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %8, align 8
  %76 = bitcast %struct.usb_security_descriptor* %75 to i8*
  %77 = ptrtoint i8* %74 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = load i64, i64* %13, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %73
  %83 = load %struct.device*, %struct.device** %7, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %8, align 8
  %86 = bitcast %struct.usb_security_descriptor* %85 to i8*
  %87 = ptrtoint i8* %84 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = load i64, i64* %13, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i64 %89, i64 %90)
  store i32 0, i32* %2, align 4
  br label %198

92:                                               ; preds = %73
  %93 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %8, align 8
  %94 = getelementptr inbounds %struct.usb_security_descriptor, %struct.usb_security_descriptor* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @le16_to_cpu(i32 %95)
  store i64 %96, i64* %13, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %8, align 8
  %99 = bitcast %struct.usb_security_descriptor* %98 to i8*
  %100 = ptrtoint i8* %97 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = load i64, i64* %13, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %92
  %106 = load %struct.device*, %struct.device** %7, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %8, align 8
  %109 = bitcast %struct.usb_security_descriptor* %108 to i8*
  %110 = ptrtoint i8* %107 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = load i64, i64* %13, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i64 %112, i64 %113)
  store i32 0, i32* %2, align 4
  br label %198

115:                                              ; preds = %92
  %116 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %8, align 8
  %117 = bitcast %struct.usb_security_descriptor* %116 to i8*
  %118 = getelementptr i8, i8* %117, i64 4
  store i8* %118, i8** %10, align 8
  %119 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %8, align 8
  %120 = bitcast %struct.usb_security_descriptor* %119 to i8*
  %121 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %8, align 8
  %122 = getelementptr inbounds %struct.usb_security_descriptor, %struct.usb_security_descriptor* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @le16_to_cpu(i32 %123)
  %125 = getelementptr i8, i8* %120, i64 %124
  store i8* %125, i8** %11, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %126

126:                                              ; preds = %160, %115
  %127 = load i8*, i8** %10, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = icmp ult i8* %127, %128
  br i1 %129, label %130, label %186

130:                                              ; preds = %126
  %131 = load i8*, i8** %10, align 8
  %132 = bitcast i8* %131 to %struct.usb_encryption_descriptor*
  store %struct.usb_encryption_descriptor* %132, %struct.usb_encryption_descriptor** %9, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = icmp ult i64 %137, 12
  br i1 %138, label %139, label %147

139:                                              ; preds = %130
  %140 = load %struct.device*, %struct.device** %7, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %140, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i64 %145, i64 12)
  br label %186

147:                                              ; preds = %130
  %148 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %9, align 8
  %149 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ult i64 %151, 12
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.device*, %struct.device** %7, align 8
  %155 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %9, align 8
  %156 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %154, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i64 %158, i64 12)
  br label %186

160:                                              ; preds = %147
  %161 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %9, align 8
  %162 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i8*, i8** %10, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr i8, i8* %164, i64 %165
  store i8* %166, i8** %10, align 8
  %167 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %168 = load i64, i64* %14, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = load i64, i64* %14, align 8
  %171 = sub i64 64, %170
  %172 = trunc i64 %171 to i32
  %173 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %9, align 8
  %174 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @wusb_et_name(i32 %175)
  %177 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %9, align 8
  %178 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @snprintf(i8* %169, i32 %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %176, i32 %179)
  %181 = load i64, i64* %14, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %14, align 8
  %183 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %9, align 8
  %184 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %185 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %184, i32 0, i32 0
  store %struct.usb_encryption_descriptor* %183, %struct.usb_encryption_descriptor** %185, align 8
  br label %126

186:                                              ; preds = %153, %139, %126
  %187 = load %struct.device*, %struct.device** %7, align 8
  %188 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %189 = call i32 @dev_info(%struct.device* %187, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %188)
  %190 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %191 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %190, i32 0, i32 0
  %192 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %191, align 8
  %193 = icmp eq %struct.usb_encryption_descriptor* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %186
  %195 = load %struct.device*, %struct.device** %7, align 8
  %196 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %195, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %198

197:                                              ; preds = %186
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %194, %105, %82, %70
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @__usb_get_extra_descriptor(i8*, i64, i32, i8**) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @wusb_et_name(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
