; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbaf = type { %struct.wusb_cbaf_assoc_info*, i32, %struct.TYPE_6__*, i32 }
%struct.wusb_cbaf_assoc_info = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.device }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.wusb_cbaf_assoc_request = type { i32, i32, i32, i32 }

@CBAF_REQ_GET_ASSOCIATION_INFORMATION = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot get available association types: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Not enough data to decode association info header (%zu vs %zu bytes required)\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"Not enough data to decode association info (%zu vs %zu bytes required)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Found %u association requests (%zu bytes)\0A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"Not enough data to decode associaton request (%zu vs %zu bytes needed)\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"RETRIEVE_HOST_INFO\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ASSOCIATE\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Association request #%02u: 0x%04x/%04x (%zu bytes): %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Missing RETRIEVE_HOST_INFO association request\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"Missing ASSOCIATE association request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbaf*)* @cbaf_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbaf_check(%struct.cbaf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cbaf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wusb_cbaf_assoc_info*, align 8
  %7 = alloca %struct.wusb_cbaf_assoc_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.cbaf* %0, %struct.cbaf** %3, align 8
  %17 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %18 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store %struct.device* %20, %struct.device** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %22 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %25 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @usb_rcvctrlpipe(i32 %26, i32 0)
  %28 = load i32, i32* @CBAF_REQ_GET_ASSOCIATION_INFORMATION, align 4
  %29 = load i32, i32* @USB_DIR_IN, align 4
  %30 = load i32, i32* @USB_TYPE_CLASS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %35 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %43 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %42, i32 0, i32 0
  %44 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %43, align 8
  %45 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %46 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @usb_control_msg(i32 %23, i32 %27, i32 %28, i32 %33, i32 0, i32 %41, %struct.wusb_cbaf_assoc_info* %44, i32 %47, i32 1000)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %1
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %170

56:                                               ; preds = %1
  %57 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %58 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %57, i32 0, i32 0
  %59 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %58, align 8
  store %struct.wusb_cbaf_assoc_info* %59, %struct.wusb_cbaf_assoc_info** %6, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 8
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 8)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %170

69:                                               ; preds = %56
  %70 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %6, align 8
  %71 = getelementptr inbounds %struct.wusb_cbaf_assoc_info, %struct.wusb_cbaf_assoc_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le16_to_cpu(i32 %72)
  store i64 %73, i64* %8, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %8, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %80, i64 8)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %170

83:                                               ; preds = %69
  %84 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %85 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %84, i32 0, i32 0
  %86 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %85, align 8
  %87 = getelementptr inbounds %struct.wusb_cbaf_assoc_info, %struct.wusb_cbaf_assoc_info* %86, i64 8
  %88 = bitcast %struct.wusb_cbaf_assoc_info* %87 to i8*
  store i8* %88, i8** %9, align 8
  %89 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %90 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %89, i32 0, i32 0
  %91 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds %struct.wusb_cbaf_assoc_info, %struct.wusb_cbaf_assoc_info* %91, i64 %92
  %94 = bitcast %struct.wusb_cbaf_assoc_info* %93 to i8*
  store i8* %94, i8** %10, align 8
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %6, align 8
  %97 = getelementptr inbounds %struct.wusb_cbaf_assoc_info, %struct.wusb_cbaf_assoc_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %8, align 8
  %100 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_dbg(%struct.device* %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %98, i64 %99)
  br label %101

101:                                              ; preds = %141, %83
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %153

105:                                              ; preds = %101
  %106 = load i8*, i8** %9, align 8
  %107 = bitcast i8* %106 to %struct.wusb_cbaf_assoc_request*
  store %struct.wusb_cbaf_assoc_request* %107, %struct.wusb_cbaf_assoc_request** %7, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = icmp ult i64 %112, 16
  br i1 %113, label %114, label %122

114:                                              ; preds = %105
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i64 %120, i64 16)
  br label %153

122:                                              ; preds = %105
  %123 = load %struct.wusb_cbaf_assoc_request*, %struct.wusb_cbaf_assoc_request** %7, align 8
  %124 = getelementptr inbounds %struct.wusb_cbaf_assoc_request, %struct.wusb_cbaf_assoc_request* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @le16_to_cpu(i32 %125)
  store i64 %126, i64* %13, align 8
  %127 = load %struct.wusb_cbaf_assoc_request*, %struct.wusb_cbaf_assoc_request** %7, align 8
  %128 = getelementptr inbounds %struct.wusb_cbaf_assoc_request, %struct.wusb_cbaf_assoc_request* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @le16_to_cpu(i32 %129)
  store i64 %130, i64* %14, align 8
  %131 = load %struct.wusb_cbaf_assoc_request*, %struct.wusb_cbaf_assoc_request** %7, align 8
  %132 = getelementptr inbounds %struct.wusb_cbaf_assoc_request, %struct.wusb_cbaf_assoc_request* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @le32_to_cpu(i32 %133)
  store i64 %134, i64* %15, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  %135 = load i64, i64* %13, align 8
  switch i64 %135, label %141 [
    i64 130, label %136
  ]

136:                                              ; preds = %122
  %137 = load i64, i64* %14, align 8
  switch i64 %137, label %140 [
    i64 128, label %138
    i64 129, label %139
  ]

138:                                              ; preds = %136
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  store i32 1, i32* %11, align 4
  br label %140

139:                                              ; preds = %136
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  store i32 1, i32* %12, align 4
  br label %140

140:                                              ; preds = %136, %139, %138
  br label %141

141:                                              ; preds = %122, %140
  %142 = load %struct.device*, %struct.device** %5, align 8
  %143 = load %struct.wusb_cbaf_assoc_request*, %struct.wusb_cbaf_assoc_request** %7, align 8
  %144 = getelementptr inbounds %struct.wusb_cbaf_assoc_request, %struct.wusb_cbaf_assoc_request* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load i64, i64* %15, align 8
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_dbg(%struct.device* %142, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %145, i64 %146, i64 %147, i64 %148, i8* %149)
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr i8, i8* %151, i64 16
  store i8* %152, i8** %9, align 8
  br label %101

153:                                              ; preds = %114, %101
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %153
  %157 = load %struct.device*, %struct.device** %5, align 8
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %170

161:                                              ; preds = %153
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = load %struct.device*, %struct.device** %5, align 8
  %166 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %170

169:                                              ; preds = %161
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %164, %156, %78, %63, %51
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.wusb_cbaf_assoc_info*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
