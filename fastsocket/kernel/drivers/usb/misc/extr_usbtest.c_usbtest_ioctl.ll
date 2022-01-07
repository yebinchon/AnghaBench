; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_usbtest_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_usbtest_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.usbtest_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.usb_device = type { i32 }
%struct.usbtest_param = type { i64, i32, i64, i64, i64, %struct.timeval }
%struct.timeval = type { i32, i64 }
%struct.urb = type { i32 }
%struct.scatterlist = type { i32 }
%struct.usb_sg_request = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@USBTEST_REQUEST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"set altsetting to %d failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"TEST 0:  NOP\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"TEST 1:  write %d bytes %u times\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"TEST 2:  read %d bytes %u times\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"TEST 3:  write/%d 0..%d bytes %u times\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"test3\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"TEST 4:  read/%d 0..%d bytes %u times\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"test4\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"TEST 5:  write %d sglists %d entries of %d bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"TEST 6:  read %d sglists %d entries of %d bytes\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"TEST 7:  write/%d %d sglists %d entries 0..%d bytes\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"TEST 8:  read/%d %d sglists %d entries 0..%d bytes\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"TEST 9:  ch9 (subset) control tests, %d times\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"ch9 subset failed, iterations left %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"TEST 10:  queue %d control calls, %d times\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"TEST 11:  unlink %d reads of %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"unlink reads failed %d, iterations left %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"TEST 12:  unlink %d writes of %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"unlink writes failed %d, iterations left %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"TEST 13:  set/clear %d halts\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"halts failed, iterations left %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"TEST 14:  %d ep0out, %d..%d vary %d\0A\00", align 1
@realworld = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [48 x i8] c"TEST 15:  write %d iso, %d entries of %d bytes\0A\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"TEST 16:  read %d iso, %d entries of %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32, i8*)* @usbtest_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtest_ioctl(%struct.usb_interface* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usbtest_dev*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usbtest_param*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.urb*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.usb_sg_request, align 4
  %15 = alloca %struct.timeval, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %19 = call %struct.usbtest_dev* @usb_get_intfdata(%struct.usb_interface* %18)
  store %struct.usbtest_dev* %19, %struct.usbtest_dev** %8, align 8
  %20 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %21 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %20)
  store %struct.usb_device* %21, %struct.usb_device** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.usbtest_param*
  store %struct.usbtest_param* %23, %struct.usbtest_param** %10, align 8
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @USBTEST_REQUEST, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %868

32:                                               ; preds = %3
  %33 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %34 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %868

40:                                               ; preds = %32
  %41 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %42 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %41, i32 0, i32 0
  %43 = call i64 @mutex_lock_interruptible(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @ERESTARTSYS, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %868

48:                                               ; preds = %40
  %49 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %50 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %55 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* @EHOSTUNREACH, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %868

59:                                               ; preds = %48
  %60 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %61 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %60, i32 0, i32 5
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %59
  %67 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %68 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %76 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %868

80:                                               ; preds = %66
  %81 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %82 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %83 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %82, i32 0, i32 5
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @set_altsetting(%struct.usbtest_dev* %81, i64 %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %80
  %91 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %92 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %91, i32 0, i32 0
  %93 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %94 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %93, i32 0, i32 5
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %17, align 4
  %100 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %102 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %4, align 4
  br label %868

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %59
  %107 = call i32 @do_gettimeofday(%struct.timeval* %15)
  %108 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %109 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %829 [
    i32 0, label %111
    i32 1, label %115
    i32 2, label %153
    i32 3, label %191
    i32 4, label %240
    i32 5, label %289
    i32 6, label %343
    i32 7, label %397
    i32 8, label %462
    i32 9, label %527
    i32 10, label %559
    i32 11, label %578
    i32 12, label %631
    i32 13, label %684
    i32 14, label %726
    i32 15, label %763
    i32 16, label %796
  ]

111:                                              ; preds = %106
  %112 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %113 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %112, i32 0, i32 0
  %114 = call i32 (i32*, i8*, ...) @dev_info(i32* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %829

115:                                              ; preds = %106
  %116 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %117 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %829

121:                                              ; preds = %115
  %122 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %123 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %122, i32 0, i32 0
  %124 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %125 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %128 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i32*, i8*, ...) @dev_info(i32* %123, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %126, i64 %129)
  %131 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %132 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %133 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %136 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %131, i32 %134, i64 %137)
  store %struct.urb* %138, %struct.urb** %12, align 8
  %139 = load %struct.urb*, %struct.urb** %12, align 8
  %140 = icmp ne %struct.urb* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %121
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %11, align 4
  br label %829

144:                                              ; preds = %121
  %145 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %146 = load %struct.urb*, %struct.urb** %12, align 8
  %147 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %148 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @simple_io(%struct.usbtest_dev* %145, %struct.urb* %146, i64 %149, i64 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %150, i32* %11, align 4
  %151 = load %struct.urb*, %struct.urb** %12, align 8
  %152 = call i32 @simple_free_urb(%struct.urb* %151)
  br label %829

153:                                              ; preds = %106
  %154 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %155 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %829

159:                                              ; preds = %153
  %160 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %161 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %160, i32 0, i32 0
  %162 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %163 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %166 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i32*, i8*, ...) @dev_info(i32* %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %164, i64 %167)
  %169 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %170 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %171 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %174 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %169, i32 %172, i64 %175)
  store %struct.urb* %176, %struct.urb** %12, align 8
  %177 = load %struct.urb*, %struct.urb** %12, align 8
  %178 = icmp ne %struct.urb* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %159
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %11, align 4
  br label %829

182:                                              ; preds = %159
  %183 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %184 = load %struct.urb*, %struct.urb** %12, align 8
  %185 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %186 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @simple_io(%struct.usbtest_dev* %183, %struct.urb* %184, i64 %187, i64 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %188, i32* %11, align 4
  %189 = load %struct.urb*, %struct.urb** %12, align 8
  %190 = call i32 @simple_free_urb(%struct.urb* %189)
  br label %829

191:                                              ; preds = %106
  %192 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %193 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %191
  %197 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %198 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196, %191
  br label %829

202:                                              ; preds = %196
  %203 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %204 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %203, i32 0, i32 0
  %205 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %206 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %209 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %212 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i32 (i32*, i8*, ...) @dev_info(i32* %204, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %207, i64 %210, i64 %213)
  %215 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %216 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %217 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %220 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %215, i32 %218, i64 %221)
  store %struct.urb* %222, %struct.urb** %12, align 8
  %223 = load %struct.urb*, %struct.urb** %12, align 8
  %224 = icmp ne %struct.urb* %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %202
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %11, align 4
  br label %829

228:                                              ; preds = %202
  %229 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %230 = load %struct.urb*, %struct.urb** %12, align 8
  %231 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %232 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %235 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @simple_io(%struct.usbtest_dev* %229, %struct.urb* %230, i64 %233, i64 %236, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i32 %237, i32* %11, align 4
  %238 = load %struct.urb*, %struct.urb** %12, align 8
  %239 = call i32 @simple_free_urb(%struct.urb* %238)
  br label %829

240:                                              ; preds = %106
  %241 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %242 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %240
  %246 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %247 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245, %240
  br label %829

251:                                              ; preds = %245
  %252 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %253 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %252, i32 0, i32 0
  %254 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %255 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %258 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %261 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = call i32 (i32*, i8*, ...) @dev_info(i32* %253, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %256, i64 %259, i64 %262)
  %264 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %265 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %266 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %269 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %264, i32 %267, i64 %270)
  store %struct.urb* %271, %struct.urb** %12, align 8
  %272 = load %struct.urb*, %struct.urb** %12, align 8
  %273 = icmp ne %struct.urb* %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %251
  %275 = load i32, i32* @ENOMEM, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %11, align 4
  br label %829

277:                                              ; preds = %251
  %278 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %279 = load %struct.urb*, %struct.urb** %12, align 8
  %280 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %281 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %284 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @simple_io(%struct.usbtest_dev* %278, %struct.urb* %279, i64 %282, i64 %285, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i32 %286, i32* %11, align 4
  %287 = load %struct.urb*, %struct.urb** %12, align 8
  %288 = call i32 @simple_free_urb(%struct.urb* %287)
  br label %829

289:                                              ; preds = %106
  %290 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %291 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %296 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %294, %289
  br label %829

300:                                              ; preds = %294
  %301 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %302 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %301, i32 0, i32 0
  %303 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %304 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %307 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %306, i32 0, i32 4
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %310 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = call i32 (i32*, i8*, ...) @dev_info(i32* %302, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i64 %305, i64 %308, i64 %311)
  %313 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %314 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %317 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = call %struct.scatterlist* @alloc_sglist(i64 %315, i64 %318, i64 0)
  store %struct.scatterlist* %319, %struct.scatterlist** %13, align 8
  %320 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %321 = icmp ne %struct.scatterlist* %320, null
  br i1 %321, label %325, label %322

322:                                              ; preds = %300
  %323 = load i32, i32* @ENOMEM, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %11, align 4
  br label %829

325:                                              ; preds = %300
  %326 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %327 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %328 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %331 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %330, i32 0, i32 7
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %334 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %335 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = call i32 @perform_sglist(%struct.usbtest_dev* %326, i64 %329, i32 %332, %struct.usb_sg_request* %14, %struct.scatterlist* %333, i64 %336)
  store i32 %337, i32* %11, align 4
  %338 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %339 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %340 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = call i32 @free_sglist(%struct.scatterlist* %338, i64 %341)
  br label %829

343:                                              ; preds = %106
  %344 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %345 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %343
  %349 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %350 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %349, i32 0, i32 4
  %351 = load i64, i64* %350, align 8
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %348, %343
  br label %829

354:                                              ; preds = %348
  %355 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %356 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %355, i32 0, i32 0
  %357 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %358 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %361 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %360, i32 0, i32 4
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %364 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = call i32 (i32*, i8*, ...) @dev_info(i32* %356, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 %359, i64 %362, i64 %365)
  %367 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %368 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %367, i32 0, i32 4
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %371 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %370, i32 0, i32 2
  %372 = load i64, i64* %371, align 8
  %373 = call %struct.scatterlist* @alloc_sglist(i64 %369, i64 %372, i64 0)
  store %struct.scatterlist* %373, %struct.scatterlist** %13, align 8
  %374 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %375 = icmp ne %struct.scatterlist* %374, null
  br i1 %375, label %379, label %376

376:                                              ; preds = %354
  %377 = load i32, i32* @ENOMEM, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %11, align 4
  br label %829

379:                                              ; preds = %354
  %380 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %381 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %382 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %385 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %388 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %389 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %388, i32 0, i32 4
  %390 = load i64, i64* %389, align 8
  %391 = call i32 @perform_sglist(%struct.usbtest_dev* %380, i64 %383, i32 %386, %struct.usb_sg_request* %14, %struct.scatterlist* %387, i64 %390)
  store i32 %391, i32* %11, align 4
  %392 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %393 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %394 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %393, i32 0, i32 4
  %395 = load i64, i64* %394, align 8
  %396 = call i32 @free_sglist(%struct.scatterlist* %392, i64 %395)
  br label %829

397:                                              ; preds = %106
  %398 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %399 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %412, label %402

402:                                              ; preds = %397
  %403 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %404 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %403, i32 0, i32 4
  %405 = load i64, i64* %404, align 8
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %412, label %407

407:                                              ; preds = %402
  %408 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %409 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %408, i32 0, i32 3
  %410 = load i64, i64* %409, align 8
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %407, %402, %397
  br label %829

413:                                              ; preds = %407
  %414 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %415 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %414, i32 0, i32 0
  %416 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %417 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %416, i32 0, i32 3
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %420 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %423 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %422, i32 0, i32 4
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %426 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = call i32 (i32*, i8*, ...) @dev_info(i32* %415, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i64 %418, i64 %421, i64 %424, i64 %427)
  %429 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %430 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %429, i32 0, i32 4
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %433 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %432, i32 0, i32 2
  %434 = load i64, i64* %433, align 8
  %435 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %436 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = call %struct.scatterlist* @alloc_sglist(i64 %431, i64 %434, i64 %437)
  store %struct.scatterlist* %438, %struct.scatterlist** %13, align 8
  %439 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %440 = icmp ne %struct.scatterlist* %439, null
  br i1 %440, label %444, label %441

441:                                              ; preds = %413
  %442 = load i32, i32* @ENOMEM, align 4
  %443 = sub nsw i32 0, %442
  store i32 %443, i32* %11, align 4
  br label %829

444:                                              ; preds = %413
  %445 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %446 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %447 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %450 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %449, i32 0, i32 7
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %453 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %454 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %453, i32 0, i32 4
  %455 = load i64, i64* %454, align 8
  %456 = call i32 @perform_sglist(%struct.usbtest_dev* %445, i64 %448, i32 %451, %struct.usb_sg_request* %14, %struct.scatterlist* %452, i64 %455)
  store i32 %456, i32* %11, align 4
  %457 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %458 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %459 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %458, i32 0, i32 4
  %460 = load i64, i64* %459, align 8
  %461 = call i32 @free_sglist(%struct.scatterlist* %457, i64 %460)
  br label %829

462:                                              ; preds = %106
  %463 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %464 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %463, i32 0, i32 6
  %465 = load i32, i32* %464, align 8
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %477, label %467

467:                                              ; preds = %462
  %468 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %469 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %468, i32 0, i32 4
  %470 = load i64, i64* %469, align 8
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %477, label %472

472:                                              ; preds = %467
  %473 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %474 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %473, i32 0, i32 3
  %475 = load i64, i64* %474, align 8
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %472, %467, %462
  br label %829

478:                                              ; preds = %472
  %479 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %480 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %479, i32 0, i32 0
  %481 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %482 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %481, i32 0, i32 3
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %485 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %488 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %487, i32 0, i32 4
  %489 = load i64, i64* %488, align 8
  %490 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %491 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %490, i32 0, i32 2
  %492 = load i64, i64* %491, align 8
  %493 = call i32 (i32*, i8*, ...) @dev_info(i32* %480, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i64 %483, i64 %486, i64 %489, i64 %492)
  %494 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %495 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %494, i32 0, i32 4
  %496 = load i64, i64* %495, align 8
  %497 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %498 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %497, i32 0, i32 2
  %499 = load i64, i64* %498, align 8
  %500 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %501 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %500, i32 0, i32 3
  %502 = load i64, i64* %501, align 8
  %503 = call %struct.scatterlist* @alloc_sglist(i64 %496, i64 %499, i64 %502)
  store %struct.scatterlist* %503, %struct.scatterlist** %13, align 8
  %504 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %505 = icmp ne %struct.scatterlist* %504, null
  br i1 %505, label %509, label %506

506:                                              ; preds = %478
  %507 = load i32, i32* @ENOMEM, align 4
  %508 = sub nsw i32 0, %507
  store i32 %508, i32* %11, align 4
  br label %829

509:                                              ; preds = %478
  %510 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %511 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %512 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %515 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %514, i32 0, i32 6
  %516 = load i32, i32* %515, align 8
  %517 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %518 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %519 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %518, i32 0, i32 4
  %520 = load i64, i64* %519, align 8
  %521 = call i32 @perform_sglist(%struct.usbtest_dev* %510, i64 %513, i32 %516, %struct.usb_sg_request* %14, %struct.scatterlist* %517, i64 %520)
  store i32 %521, i32* %11, align 4
  %522 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %523 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %524 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %523, i32 0, i32 4
  %525 = load i64, i64* %524, align 8
  %526 = call i32 @free_sglist(%struct.scatterlist* %522, i64 %525)
  br label %829

527:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  %528 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %529 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %528, i32 0, i32 0
  %530 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %531 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = call i32 (i32*, i8*, ...) @dev_info(i32* %529, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0), i64 %532)
  %534 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %535 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = trunc i64 %536 to i32
  store i32 %537, i32* %16, align 4
  br label %538

538:                                              ; preds = %547, %527
  %539 = load i32, i32* %11, align 4
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %545

541:                                              ; preds = %538
  %542 = load i32, i32* %16, align 4
  %543 = add i32 %542, -1
  store i32 %543, i32* %16, align 4
  %544 = icmp ne i32 %542, 0
  br label %545

545:                                              ; preds = %541, %538
  %546 = phi i1 [ false, %538 ], [ %544, %541 ]
  br i1 %546, label %547, label %550

547:                                              ; preds = %545
  %548 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %549 = call i32 @ch9_postconfig(%struct.usbtest_dev* %548)
  store i32 %549, i32* %11, align 4
  br label %538

550:                                              ; preds = %545
  %551 = load i32, i32* %11, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %558

553:                                              ; preds = %550
  %554 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %555 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %554, i32 0, i32 0
  %556 = load i32, i32* %16, align 4
  %557 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %555, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %556)
  br label %558

558:                                              ; preds = %553, %550
  br label %829

559:                                              ; preds = %106
  %560 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %561 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %560, i32 0, i32 4
  %562 = load i64, i64* %561, align 8
  %563 = icmp eq i64 %562, 0
  br i1 %563, label %564, label %565

564:                                              ; preds = %559
  br label %829

565:                                              ; preds = %559
  store i32 0, i32* %11, align 4
  %566 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %567 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %566, i32 0, i32 0
  %568 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %569 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %568, i32 0, i32 4
  %570 = load i64, i64* %569, align 8
  %571 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %572 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %571, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = call i32 (i32*, i8*, ...) @dev_info(i32* %567, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i64 %570, i64 %573)
  %575 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %576 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %577 = call i32 @test_ctrl_queue(%struct.usbtest_dev* %575, %struct.usbtest_param* %576)
  store i32 %577, i32* %11, align 4
  br label %829

578:                                              ; preds = %106
  %579 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %580 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %579, i32 0, i32 6
  %581 = load i32, i32* %580, align 8
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %588, label %583

583:                                              ; preds = %578
  %584 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %585 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %584, i32 0, i32 2
  %586 = load i64, i64* %585, align 8
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %589, label %588

588:                                              ; preds = %583, %578
  br label %829

589:                                              ; preds = %583
  store i32 0, i32* %11, align 4
  %590 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %591 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %590, i32 0, i32 0
  %592 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %593 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %592, i32 0, i32 0
  %594 = load i64, i64* %593, align 8
  %595 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %596 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %595, i32 0, i32 2
  %597 = load i64, i64* %596, align 8
  %598 = call i32 (i32*, i8*, ...) @dev_info(i32* %591, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i64 %594, i64 %597)
  %599 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %600 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = trunc i64 %601 to i32
  store i32 %602, i32* %16, align 4
  br label %603

603:                                              ; preds = %612, %589
  %604 = load i32, i32* %11, align 4
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %610

606:                                              ; preds = %603
  %607 = load i32, i32* %16, align 4
  %608 = add i32 %607, -1
  store i32 %608, i32* %16, align 4
  %609 = icmp ne i32 %607, 0
  br label %610

610:                                              ; preds = %606, %603
  %611 = phi i1 [ false, %603 ], [ %609, %606 ]
  br i1 %611, label %612, label %621

612:                                              ; preds = %610
  %613 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %614 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %615 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %614, i32 0, i32 6
  %616 = load i32, i32* %615, align 8
  %617 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %618 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %617, i32 0, i32 2
  %619 = load i64, i64* %618, align 8
  %620 = call i32 @unlink_simple(%struct.usbtest_dev* %613, i32 %616, i64 %619)
  store i32 %620, i32* %11, align 4
  br label %603

621:                                              ; preds = %610
  %622 = load i32, i32* %11, align 4
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %630

624:                                              ; preds = %621
  %625 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %626 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %625, i32 0, i32 0
  %627 = load i32, i32* %11, align 4
  %628 = load i32, i32* %16, align 4
  %629 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %626, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %627, i32 %628)
  br label %630

630:                                              ; preds = %624, %621
  br label %829

631:                                              ; preds = %106
  %632 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %633 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %632, i32 0, i32 7
  %634 = load i32, i32* %633, align 4
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %641, label %636

636:                                              ; preds = %631
  %637 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %638 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %637, i32 0, i32 2
  %639 = load i64, i64* %638, align 8
  %640 = icmp ne i64 %639, 0
  br i1 %640, label %642, label %641

641:                                              ; preds = %636, %631
  br label %829

642:                                              ; preds = %636
  store i32 0, i32* %11, align 4
  %643 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %644 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %643, i32 0, i32 0
  %645 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %646 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %645, i32 0, i32 0
  %647 = load i64, i64* %646, align 8
  %648 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %649 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %648, i32 0, i32 2
  %650 = load i64, i64* %649, align 8
  %651 = call i32 (i32*, i8*, ...) @dev_info(i32* %644, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i64 %647, i64 %650)
  %652 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %653 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = trunc i64 %654 to i32
  store i32 %655, i32* %16, align 4
  br label %656

656:                                              ; preds = %665, %642
  %657 = load i32, i32* %11, align 4
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %656
  %660 = load i32, i32* %16, align 4
  %661 = add i32 %660, -1
  store i32 %661, i32* %16, align 4
  %662 = icmp ne i32 %660, 0
  br label %663

663:                                              ; preds = %659, %656
  %664 = phi i1 [ false, %656 ], [ %662, %659 ]
  br i1 %664, label %665, label %674

665:                                              ; preds = %663
  %666 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %667 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %668 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %667, i32 0, i32 7
  %669 = load i32, i32* %668, align 4
  %670 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %671 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %670, i32 0, i32 2
  %672 = load i64, i64* %671, align 8
  %673 = call i32 @unlink_simple(%struct.usbtest_dev* %666, i32 %669, i64 %672)
  store i32 %673, i32* %11, align 4
  br label %656

674:                                              ; preds = %663
  %675 = load i32, i32* %11, align 4
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %683

677:                                              ; preds = %674
  %678 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %679 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %678, i32 0, i32 0
  %680 = load i32, i32* %11, align 4
  %681 = load i32, i32* %16, align 4
  %682 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %679, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i32 %680, i32 %681)
  br label %683

683:                                              ; preds = %677, %674
  br label %829

684:                                              ; preds = %106
  %685 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %686 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %685, i32 0, i32 7
  %687 = load i32, i32* %686, align 4
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %695

689:                                              ; preds = %684
  %690 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %691 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %690, i32 0, i32 6
  %692 = load i32, i32* %691, align 8
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %695

694:                                              ; preds = %689
  br label %829

695:                                              ; preds = %689, %684
  store i32 0, i32* %11, align 4
  %696 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %697 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %696, i32 0, i32 0
  %698 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %699 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %698, i32 0, i32 0
  %700 = load i64, i64* %699, align 8
  %701 = call i32 (i32*, i8*, ...) @dev_info(i32* %697, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i64 %700)
  %702 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %703 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %702, i32 0, i32 0
  %704 = load i64, i64* %703, align 8
  %705 = trunc i64 %704 to i32
  store i32 %705, i32* %16, align 4
  br label %706

706:                                              ; preds = %715, %695
  %707 = load i32, i32* %11, align 4
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %709, label %713

709:                                              ; preds = %706
  %710 = load i32, i32* %16, align 4
  %711 = add i32 %710, -1
  store i32 %711, i32* %16, align 4
  %712 = icmp ne i32 %710, 0
  br label %713

713:                                              ; preds = %709, %706
  %714 = phi i1 [ false, %706 ], [ %712, %709 ]
  br i1 %714, label %715, label %718

715:                                              ; preds = %713
  %716 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %717 = call i32 @halt_simple(%struct.usbtest_dev* %716)
  store i32 %717, i32* %11, align 4
  br label %706

718:                                              ; preds = %713
  %719 = load i32, i32* %11, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %725

721:                                              ; preds = %718
  %722 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %723 = load i32, i32* %16, align 4
  %724 = call i32 @ERROR(%struct.usbtest_dev* %722, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i32 %723)
  br label %725

725:                                              ; preds = %721, %718
  br label %829

726:                                              ; preds = %106
  %727 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %728 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %727, i32 0, i32 5
  %729 = load %struct.TYPE_6__*, %struct.TYPE_6__** %728, align 8
  %730 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %729, i32 0, i32 1
  %731 = load i32, i32* %730, align 8
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %734, label %733

733:                                              ; preds = %726
  br label %829

734:                                              ; preds = %726
  %735 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %736 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %735, i32 0, i32 0
  %737 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %738 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %737, i32 0, i32 0
  %739 = load i64, i64* %738, align 8
  %740 = load i32, i32* @realworld, align 4
  %741 = icmp ne i32 %740, 0
  %742 = zext i1 %741 to i64
  %743 = select i1 %741, i32 1, i32 0
  %744 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %745 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %744, i32 0, i32 2
  %746 = load i64, i64* %745, align 8
  %747 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %748 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %747, i32 0, i32 3
  %749 = load i64, i64* %748, align 8
  %750 = call i32 (i32*, i8*, ...) @dev_info(i32* %736, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i64 %739, i32 %743, i64 %746, i64 %749)
  %751 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %752 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %753 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %752, i32 0, i32 0
  %754 = load i64, i64* %753, align 8
  %755 = trunc i64 %754 to i32
  %756 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %757 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %756, i32 0, i32 2
  %758 = load i64, i64* %757, align 8
  %759 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %760 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %759, i32 0, i32 3
  %761 = load i64, i64* %760, align 8
  %762 = call i32 @ctrl_out(%struct.usbtest_dev* %751, i32 %755, i64 %758, i64 %761)
  store i32 %762, i32* %11, align 4
  br label %829

763:                                              ; preds = %106
  %764 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %765 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %764, i32 0, i32 4
  %766 = load i32, i32* %765, align 8
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %773, label %768

768:                                              ; preds = %763
  %769 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %770 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %769, i32 0, i32 4
  %771 = load i64, i64* %770, align 8
  %772 = icmp eq i64 %771, 0
  br i1 %772, label %773, label %774

773:                                              ; preds = %768, %763
  br label %829

774:                                              ; preds = %768
  %775 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %776 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %775, i32 0, i32 0
  %777 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %778 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %777, i32 0, i32 0
  %779 = load i64, i64* %778, align 8
  %780 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %781 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %780, i32 0, i32 4
  %782 = load i64, i64* %781, align 8
  %783 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %784 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %783, i32 0, i32 2
  %785 = load i64, i64* %784, align 8
  %786 = call i32 (i32*, i8*, ...) @dev_info(i32* %776, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i64 0, i64 0), i64 %779, i64 %782, i64 %785)
  %787 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %788 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %789 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %790 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %789, i32 0, i32 4
  %791 = load i32, i32* %790, align 8
  %792 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %793 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %792, i32 0, i32 3
  %794 = load i32, i32* %793, align 4
  %795 = call i32 @test_iso_queue(%struct.usbtest_dev* %787, %struct.usbtest_param* %788, i32 %791, i32 %794)
  store i32 %795, i32* %11, align 4
  br label %829

796:                                              ; preds = %106
  %797 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %798 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %797, i32 0, i32 2
  %799 = load i32, i32* %798, align 8
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %806, label %801

801:                                              ; preds = %796
  %802 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %803 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %802, i32 0, i32 4
  %804 = load i64, i64* %803, align 8
  %805 = icmp eq i64 %804, 0
  br i1 %805, label %806, label %807

806:                                              ; preds = %801, %796
  br label %829

807:                                              ; preds = %801
  %808 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %809 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %808, i32 0, i32 0
  %810 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %811 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %810, i32 0, i32 0
  %812 = load i64, i64* %811, align 8
  %813 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %814 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %813, i32 0, i32 4
  %815 = load i64, i64* %814, align 8
  %816 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %817 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %816, i32 0, i32 2
  %818 = load i64, i64* %817, align 8
  %819 = call i32 (i32*, i8*, ...) @dev_info(i32* %809, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0), i64 %812, i64 %815, i64 %818)
  %820 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %821 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %822 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %823 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %822, i32 0, i32 2
  %824 = load i32, i32* %823, align 8
  %825 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %826 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %825, i32 0, i32 1
  %827 = load i32, i32* %826, align 4
  %828 = call i32 @test_iso_queue(%struct.usbtest_dev* %820, %struct.usbtest_param* %821, i32 %824, i32 %827)
  store i32 %828, i32* %11, align 4
  br label %829

829:                                              ; preds = %106, %807, %806, %774, %773, %734, %733, %725, %694, %683, %641, %630, %588, %565, %564, %558, %509, %506, %477, %444, %441, %412, %379, %376, %353, %325, %322, %299, %277, %274, %250, %228, %225, %201, %182, %179, %158, %144, %141, %120, %111
  %830 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %831 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %830, i32 0, i32 5
  %832 = call i32 @do_gettimeofday(%struct.timeval* %831)
  %833 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %834 = load i32, i32* %833, align 8
  %835 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %836 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %835, i32 0, i32 5
  %837 = getelementptr inbounds %struct.timeval, %struct.timeval* %836, i32 0, i32 0
  %838 = load i32, i32* %837, align 8
  %839 = sub nsw i32 %838, %834
  store i32 %839, i32* %837, align 8
  %840 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %841 = load i64, i64* %840, align 8
  %842 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %843 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %842, i32 0, i32 5
  %844 = getelementptr inbounds %struct.timeval, %struct.timeval* %843, i32 0, i32 1
  %845 = load i64, i64* %844, align 8
  %846 = sub nsw i64 %845, %841
  store i64 %846, i64* %844, align 8
  %847 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %848 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %847, i32 0, i32 5
  %849 = getelementptr inbounds %struct.timeval, %struct.timeval* %848, i32 0, i32 1
  %850 = load i64, i64* %849, align 8
  %851 = icmp slt i64 %850, 0
  br i1 %851, label %852, label %863

852:                                              ; preds = %829
  %853 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %854 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %853, i32 0, i32 5
  %855 = getelementptr inbounds %struct.timeval, %struct.timeval* %854, i32 0, i32 1
  %856 = load i64, i64* %855, align 8
  %857 = add nsw i64 %856, 1000000
  store i64 %857, i64* %855, align 8
  %858 = load %struct.usbtest_param*, %struct.usbtest_param** %10, align 8
  %859 = getelementptr inbounds %struct.usbtest_param, %struct.usbtest_param* %858, i32 0, i32 5
  %860 = getelementptr inbounds %struct.timeval, %struct.timeval* %859, i32 0, i32 0
  %861 = load i32, i32* %860, align 8
  %862 = sub nsw i32 %861, 1
  store i32 %862, i32* %860, align 8
  br label %863

863:                                              ; preds = %852, %829
  %864 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %865 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %864, i32 0, i32 0
  %866 = call i32 @mutex_unlock(i32* %865)
  %867 = load i32, i32* %11, align 4
  store i32 %867, i32* %4, align 4
  br label %868

868:                                              ; preds = %863, %90, %74, %53, %45, %37, %29
  %869 = load i32, i32* %4, align 4
  ret i32 %869
}

declare dso_local %struct.usbtest_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_altsetting(%struct.usbtest_dev*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.urb* @simple_alloc_urb(%struct.usb_device*, i32, i64) #1

declare dso_local i32 @simple_io(%struct.usbtest_dev*, %struct.urb*, i64, i64, i32, i8*) #1

declare dso_local i32 @simple_free_urb(%struct.urb*) #1

declare dso_local %struct.scatterlist* @alloc_sglist(i64, i64, i64) #1

declare dso_local i32 @perform_sglist(%struct.usbtest_dev*, i64, i32, %struct.usb_sg_request*, %struct.scatterlist*, i64) #1

declare dso_local i32 @free_sglist(%struct.scatterlist*, i64) #1

declare dso_local i32 @ch9_postconfig(%struct.usbtest_dev*) #1

declare dso_local i32 @test_ctrl_queue(%struct.usbtest_dev*, %struct.usbtest_param*) #1

declare dso_local i32 @unlink_simple(%struct.usbtest_dev*, i32, i64) #1

declare dso_local i32 @halt_simple(%struct.usbtest_dev*) #1

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*, i32) #1

declare dso_local i32 @ctrl_out(%struct.usbtest_dev*, i32, i64, i64) #1

declare dso_local i32 @test_iso_queue(%struct.usbtest_dev*, %struct.usbtest_param*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
