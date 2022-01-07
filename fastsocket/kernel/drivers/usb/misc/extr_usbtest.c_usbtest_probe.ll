; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_usbtest_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_usbtest_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i64, i64 }
%struct.usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usbtest_dev = type { i64, i64, i64, i64, i32*, %struct.usb_interface*, i32, %struct.usbtest_info* }
%struct.usbtest_info = type { i32, i32, i32, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@force_interrupt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" intr-in\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" intr-out\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"couldn't get endpoints, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" bulk-in\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" bulk-out\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" iso-in\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" iso-out\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"%s speed {control%s%s%s%s%s} tests%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" in/out\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c" (+alt)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@product = common dso_local global i64 0, align 8
@vendor = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usbtest_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtest_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usbtest_dev*, align 8
  %8 = alloca %struct.usbtest_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %16)
  store %struct.usb_device* %17, %struct.usb_device** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.usbtest_dev* @kzalloc(i32 64, i32 %18)
  store %struct.usbtest_dev* %19, %struct.usbtest_dev** %7, align 8
  %20 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %21 = icmp ne %struct.usbtest_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %195

25:                                               ; preds = %2
  %26 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.usbtest_info*
  store %struct.usbtest_info* %29, %struct.usbtest_info** %8, align 8
  %30 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %31 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %32 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %31, i32 0, i32 7
  store %struct.usbtest_info* %30, %struct.usbtest_info** %32, align 8
  %33 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %34 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %33, i32 0, i32 6
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %38 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %37, i32 0, i32 5
  store %struct.usb_interface* %36, %struct.usb_interface** %38, align 8
  %39 = load i32, i32* @TBUF_SIZE, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kmalloc(i32 %39, i32 %40)
  %42 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %43 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %42, i32 0, i32 4
  store i32* %41, i32** %43, align 8
  %44 = icmp eq i32* %41, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %25
  %46 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %47 = call i32 @kfree(%struct.usbtest_dev* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %195

50:                                               ; preds = %25
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %51 = load i64, i64* @force_interrupt, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 128
  br i1 %57, label %58, label %85

58:                                               ; preds = %53, %50
  %59 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %60 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %65 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %66 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @usb_rcvintpipe(%struct.usb_device* %64, i64 %67)
  %69 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %70 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %73 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %78 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %79 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @usb_sndintpipe(%struct.usb_device* %77, i64 %80)
  %82 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %83 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %84

84:                                               ; preds = %76, %71
  br label %154

85:                                               ; preds = %53
  %86 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %87 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %92 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %93 = call i32 @get_endpoints(%struct.usbtest_dev* %91, %struct.usb_interface* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @WARNING(%struct.usbtest_dev* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %3, align 4
  br label %195

101:                                              ; preds = %90
  br label %129

102:                                              ; preds = %85
  %103 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %104 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %109 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %110 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @usb_rcvbulkpipe(%struct.usb_device* %108, i64 %111)
  %113 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %114 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %107, %102
  %116 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %117 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %122 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %123 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @usb_sndbulkpipe(%struct.usb_device* %121, i64 %124)
  %126 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %127 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %120, %115
  br label %129

129:                                              ; preds = %128, %101
  %130 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %131 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %135

135:                                              ; preds = %134, %129
  %136 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %137 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %141

141:                                              ; preds = %140, %135
  %142 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %143 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %147

147:                                              ; preds = %146, %141
  %148 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %149 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %153

153:                                              ; preds = %152, %147
  br label %154

154:                                              ; preds = %153, %84
  %155 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %156 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %157 = call i32 @usb_set_intfdata(%struct.usb_interface* %155, %struct.usbtest_dev* %156)
  %158 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %159 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %158, i32 0, i32 0
  %160 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %161 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 %163)
  %165 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %166 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %165, i32 0, i32 0
  %167 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %168 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %173 [
    i32 128, label %170
    i32 130, label %171
    i32 129, label %172
  ]

170:                                              ; preds = %154
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %14, align 8
  br label %174

171:                                              ; preds = %154
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %14, align 8
  br label %174

172:                                              ; preds = %154
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %14, align 8
  br label %174

173:                                              ; preds = %154
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %14, align 8
  br label %174

174:                                              ; preds = %173, %172, %171, %170
  %175 = load i8*, i8** %14, align 8
  store i8* %175, i8** %15, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %179 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %184 = load i8*, i8** %9, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = load i8*, i8** %11, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = load %struct.usbtest_info*, %struct.usbtest_info** %8, align 8
  %189 = getelementptr inbounds %struct.usbtest_info, %struct.usbtest_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp sge i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %194 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %166, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i64 %177, i8* %183, i8* %184, i8* %185, i8* %186, i8* %187, i8* %193)
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %174, %96, %45, %22
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usbtest_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.usbtest_dev*) #1

declare dso_local i64 @usb_rcvintpipe(%struct.usb_device*, i64) #1

declare dso_local i64 @usb_sndintpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @get_endpoints(%struct.usbtest_dev*, %struct.usb_interface*) #1

declare dso_local i32 @WARNING(%struct.usbtest_dev*, i8*, i32) #1

declare dso_local i64 @usb_rcvbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i64 @usb_sndbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usbtest_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
