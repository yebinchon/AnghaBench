; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i64, i32, i32 }
%struct.sisusb_usb_data = type { i32, i32, i32, i32, i32, i32, %struct.usb_device*, i32, i8*, i64*, %struct.TYPE_2__*, i8**, i8*, i8**, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [36 x i8] c"USB2VGA dongle found at address %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for private data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@usb_sisusb_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to get a minor for device %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SISUSB_PCI_MEMBASE = common dso_local global i32 0, align 4
@SISUSB_PCI_MMIOBASE = common dso_local global i32 0, align 4
@SISUSB_PCI_MMIOSIZE = common dso_local global i32 0, align 4
@SISUSB_PCI_IOPORTBASE = common dso_local global i32 0, align 4
@SISUSB_IBUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to allocate memory for input buffer\00", align 1
@SISUSB_OBUF_SIZE = common dso_local global i32 0, align 4
@NUMOBUFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to allocate memory for output buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to allocate URBs\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Allocated %d output buffers\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to early initialize device\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Not attached to USB 2.0 hub, deferring init\0A\00", align 1
@MAX_NR_CONSOLES = common dso_local global i64 0, align 8
@sisusb_first_vc = common dso_local global i64 0, align 8
@sisusb_last_vc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @sisusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.sisusb_usb_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32*, i8*, ...) @dev_info(i32* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sisusb_usb_data* @kzalloc(i32 128, i32 %19)
  store %struct.sisusb_usb_data* %20, %struct.sisusb_usb_data** %7, align 8
  %21 = icmp ne %struct.sisusb_usb_data* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %24 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %23, i32 0, i32 6
  %25 = load %struct.usb_device*, %struct.usb_device** %24, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 1
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %259

30:                                               ; preds = %2
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %32 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %31, i32 0, i32 21
  %33 = call i32 @kref_init(i32* %32)
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %35 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %34, i32 0, i32 20
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = call i32 @usb_register_dev(%struct.usb_interface* %37, i32* @usb_sisusb_class)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %30
  %41 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %42 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %41, i32 0, i32 6
  %43 = load %struct.usb_device*, %struct.usb_device** %42, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 1
  %45 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %255

51:                                               ; preds = %30
  %52 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %53 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %54 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %53, i32 0, i32 6
  store %struct.usb_device* %52, %struct.usb_device** %54, align 8
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %59 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %58, i32 0, i32 19
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @SISUSB_PCI_MEMBASE, align 4
  %61 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %62 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %61, i32 0, i32 18
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @SISUSB_PCI_MMIOBASE, align 4
  %64 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %65 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %64, i32 0, i32 17
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @SISUSB_PCI_MMIOSIZE, align 4
  %67 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %68 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %67, i32 0, i32 16
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @SISUSB_PCI_IOPORTBASE, align 4
  %70 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %71 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %70, i32 0, i32 15
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @SISUSB_IBUF_SIZE, align 4
  %73 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %74 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @SISUSB_IBUF_SIZE, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @kmalloc(i32 %75, i32 %76)
  %78 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %79 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %78, i32 0, i32 14
  store i8* %77, i8** %79, align 8
  %80 = icmp ne i8* %77, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %51
  %82 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %83 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %82, i32 0, i32 6
  %84 = load %struct.usb_device*, %struct.usb_device** %83, align 8
  %85 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %84, i32 0, i32 1
  %86 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %252

89:                                               ; preds = %51
  %90 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %91 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* @SISUSB_OBUF_SIZE, align 4
  %93 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %94 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %128, %89
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @NUMOBUFS, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %131

99:                                               ; preds = %95
  %100 = load i32, i32* @SISUSB_OBUF_SIZE, align 4
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @kmalloc(i32 %100, i32 %101)
  %103 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %104 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %103, i32 0, i32 13
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %102, i8** %108, align 8
  %109 = icmp ne i8* %102, null
  br i1 %109, label %122, label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %115 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %114, i32 0, i32 6
  %116 = load %struct.usb_device*, %struct.usb_device** %115, align 8
  %117 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %116, i32 0, i32 1
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  br label %249

121:                                              ; preds = %110
  br label %131

122:                                              ; preds = %99
  %123 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %124 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %95

131:                                              ; preds = %121, %95
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i8* @usb_alloc_urb(i32 0, i32 %132)
  %134 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %135 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %134, i32 0, i32 12
  store i8* %133, i8** %135, align 8
  %136 = icmp ne i8* %133, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %131
  %138 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %139 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %138, i32 0, i32 6
  %140 = load %struct.usb_device*, %struct.usb_device** %139, align 8
  %141 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %140, i32 0, i32 1
  %142 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %249

145:                                              ; preds = %131
  %146 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %147 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %146, i32 0, i32 3
  store i32 1, i32* %147, align 4
  store i32 0, i32* %9, align 4
  br label %148

148:                                              ; preds = %196, %145
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %151 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %199

154:                                              ; preds = %148
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i8* @usb_alloc_urb(i32 0, i32 %155)
  %157 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %158 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %157, i32 0, i32 11
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* %156, i8** %162, align 8
  %163 = icmp ne i8* %156, null
  br i1 %163, label %172, label %164

164:                                              ; preds = %154
  %165 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %166 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %165, i32 0, i32 6
  %167 = load %struct.usb_device*, %struct.usb_device** %166, align 8
  %168 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %167, i32 0, i32 1
  %169 = call i32 (i32*, i8*, ...) @dev_err(i32* %168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %8, align 4
  br label %246

172:                                              ; preds = %154
  %173 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %174 = bitcast %struct.sisusb_usb_data* %173 to i8*
  %175 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %176 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %175, i32 0, i32 10
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i8* %174, i8** %181, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %184 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %183, i32 0, i32 10
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  store i32 %182, i32* %189, align 8
  %190 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %191 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %190, i32 0, i32 9
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 0, i64* %195, align 8
  br label %196

196:                                              ; preds = %172
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %148

199:                                              ; preds = %148
  %200 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %201 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %200, i32 0, i32 6
  %202 = load %struct.usb_device*, %struct.usb_device** %201, align 8
  %203 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %202, i32 0, i32 1
  %204 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %205 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32*, i8*, ...) @dev_info(i32* %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  %208 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %209 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %208, i32 0, i32 7
  %210 = call i32 @init_waitqueue_head(i32* %209)
  %211 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %212 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %213 = call i32 @usb_set_intfdata(%struct.usb_interface* %211, %struct.sisusb_usb_data* %212)
  %214 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %215 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %214, i32 0, i32 6
  %216 = load %struct.usb_device*, %struct.usb_device** %215, align 8
  %217 = call i32 @usb_get_dev(%struct.usb_device* %216)
  %218 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %219 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %218, i32 0, i32 4
  store i32 1, i32* %219, align 8
  %220 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %221 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @USB_SPEED_HIGH, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %199
  store i32 1, i32* %10, align 4
  %226 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %227 = load i32, i32* %10, align 4
  %228 = call i64 @sisusb_init_gfxdevice(%struct.sisusb_usb_data* %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %232 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %231, i32 0, i32 6
  %233 = load %struct.usb_device*, %struct.usb_device** %232, align 8
  %234 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %233, i32 0, i32 1
  %235 = call i32 (i32*, i8*, ...) @dev_err(i32* %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %236

236:                                              ; preds = %230, %225
  br label %243

237:                                              ; preds = %199
  %238 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %239 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %238, i32 0, i32 6
  %240 = load %struct.usb_device*, %struct.usb_device** %239, align 8
  %241 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %240, i32 0, i32 1
  %242 = call i32 (i32*, i8*, ...) @dev_info(i32* %241, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %243

243:                                              ; preds = %237, %236
  %244 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %245 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %244, i32 0, i32 5
  store i32 1, i32* %245, align 4
  store i32 0, i32* %3, align 4
  br label %259

246:                                              ; preds = %164
  %247 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %248 = call i32 @sisusb_free_urbs(%struct.sisusb_usb_data* %247)
  br label %249

249:                                              ; preds = %246, %137, %113
  %250 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %251 = call i32 @sisusb_free_buffers(%struct.sisusb_usb_data* %250)
  br label %252

252:                                              ; preds = %249, %81
  %253 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %254 = call i32 @usb_deregister_dev(%struct.usb_interface* %253, i32* @usb_sisusb_class)
  br label %255

255:                                              ; preds = %252, %40
  %256 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %7, align 8
  %257 = call i32 @kfree(%struct.sisusb_usb_data* %256)
  %258 = load i32, i32* %8, align 4
  store i32 %258, i32* %3, align 4
  br label %259

259:                                              ; preds = %255, %243, %22
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.sisusb_usb_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.sisusb_usb_data*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i64 @sisusb_init_gfxdevice(%struct.sisusb_usb_data*, i32) #1

declare dso_local i32 @sisusb_free_urbs(%struct.sisusb_usb_data*) #1

declare dso_local i32 @sisusb_free_buffers(%struct.sisusb_usb_data*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kfree(%struct.sisusb_usb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
