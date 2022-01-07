; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci13xxx = type { i32, %struct.ci13xxx_ep*, %struct.TYPE_9__, i32*, i32*, %struct.usb_gadget_driver* }
%struct.ci13xxx_ep = type { %struct.TYPE_8__*, %struct.TYPE_6__, i32, i32*, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i32*, i32, %struct.TYPE_6__* }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_9__*)*, %struct.TYPE_7__, i32*, i32*, i32*, i32*, i32* }

@_udc = common dso_local global %struct.ci13xxx* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ci13xxx_qh\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ci13xxx_td\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"hw_ep_max = %d\00", align 1
@hw_ep_max = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"ep%i\00", align 1
@usb_ep_ops = common dso_local global i32 0, align 4
@CTRL_PAYLOAD_MAX = common dso_local global i32 0, align 4
@RX = common dso_local global i64 0, align 8
@TX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@usb_gadget_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.ci13xxx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ci13xxx_ep*, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %10 = load %struct.ci13xxx*, %struct.ci13xxx** @_udc, align 8
  store %struct.ci13xxx* %10, %struct.ci13xxx** %4, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %14 = call i32 @trace(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.usb_gadget_driver* %13)
  %15 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %16 = icmp eq %struct.usb_gadget_driver* %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %1
  %18 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %19 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %19, align 8
  %21 = icmp eq i32 (%struct.TYPE_9__*)* %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %17
  %23 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %24 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %29 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %34 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %39 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %44 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37, %32, %27, %22, %17, %1
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %309

50:                                               ; preds = %42
  %51 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %52 = icmp eq %struct.ci13xxx* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %309

56:                                               ; preds = %50
  %57 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %58 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %57, i32 0, i32 5
  %59 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %58, align 8
  %60 = icmp ne %struct.usb_gadget_driver* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %309

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %68 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = call i8* @dma_pool_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %69, i32 4, i32 64, i32 %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %74 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %73, i32 0, i32 3
  store i32* %72, i32** %74, align 8
  %75 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %76 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %309

82:                                               ; preds = %66
  %83 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %84 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = call i8* @dma_pool_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %85, i32 4, i32 64, i32 %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %90 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %89, i32 0, i32 4
  store i32* %88, i32** %90, align 8
  %91 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %92 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %82
  %96 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %97 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @dma_pool_destroy(i32* %98)
  %100 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %101 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %100, i32 0, i32 3
  store i32* null, i32** %101, align 8
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %309

104:                                              ; preds = %82
  %105 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %106 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @spin_lock_irqsave(i32 %107, i64 %108)
  %110 = load i64, i64* @hw_ep_max, align 8
  %111 = call i32 @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %110)
  %112 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %113 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %114 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %113, i32 0, i32 5
  store %struct.usb_gadget_driver* %112, %struct.usb_gadget_driver** %114, align 8
  %115 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %116 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %119 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %121, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %5, align 8
  br label %122

122:                                              ; preds = %238, %104
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @hw_ep_max, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %241

126:                                              ; preds = %122
  %127 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %128 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %127, i32 0, i32 1
  %129 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %129, i64 %130
  store %struct.ci13xxx_ep* %131, %struct.ci13xxx_ep** %9, align 8
  %132 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %133 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %5, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 @scnprintf(i32 %134, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %139 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %142 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  %143 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %144 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %147 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %146, i32 0, i32 4
  store %struct.TYPE_10__* %145, %struct.TYPE_10__** %147, align 8
  %148 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %149 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %152 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %151, i32 0, i32 3
  store i32* %150, i32** %152, align 8
  %153 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %154 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %157 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  store i32 %155, i32* %158, align 8
  %159 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %160 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  store i32* @usb_ep_ops, i32** %161, align 8
  %162 = load i32, i32* @CTRL_PAYLOAD_MAX, align 4
  %163 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %164 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load i64, i64* @RX, align 8
  store i64 %166, i64* %6, align 8
  br label %167

167:                                              ; preds = %217, %126
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* @TX, align 8
  %170 = icmp ule i64 %168, %169
  br i1 %170, label %171, label %220

171:                                              ; preds = %167
  %172 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %173 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %172, i32 0, i32 0
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = load i64, i64* %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = call i32 @INIT_LIST_HEAD(i32* %177)
  %179 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %180 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* @GFP_KERNEL, align 4
  %183 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %184 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %183, i32 0, i32 0
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = call i32* @dma_pool_alloc(i32* %181, i32 %182, i32* %188)
  %190 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %191 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %190, i32 0, i32 0
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = load i64, i64* %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  store i32* %189, i32** %195, align 8
  %196 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %197 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load i64, i64* %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %171
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %8, align 4
  br label %216

207:                                              ; preds = %171
  %208 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %209 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %208, i32 0, i32 0
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = load i64, i64* %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @memset(i32* %214, i32 0, i32 4)
  br label %216

216:                                              ; preds = %207, %204
  br label %217

217:                                              ; preds = %216
  %218 = load i64, i64* %6, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %6, align 8
  br label %167

220:                                              ; preds = %167
  %221 = load i64, i64* %5, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %225 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %224, i32 0, i32 1
  %226 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %227 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 3
  store %struct.TYPE_6__* %225, %struct.TYPE_6__** %228, align 8
  br label %237

229:                                              ; preds = %220
  %230 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %9, align 8
  %231 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %234 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 2
  %236 = call i32 @list_add_tail(i32* %232, i32* %235)
  br label %237

237:                                              ; preds = %229, %223
  br label %238

238:                                              ; preds = %237
  %239 = load i64, i64* %5, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %5, align 8
  br label %122

241:                                              ; preds = %122
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  br label %296

245:                                              ; preds = %241
  %246 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %247 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  store i32* null, i32** %248, align 8
  %249 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %250 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  store i32* @usb_gadget_ops, i32** %251, align 8
  %252 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %253 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %252, i32 0, i32 1
  %254 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %255 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  store %struct.TYPE_7__* %253, %struct.TYPE_7__** %257, align 8
  %258 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %259 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i64, i64* %7, align 8
  %262 = call i32 @spin_unlock_irqrestore(i32 %260, i64 %261)
  %263 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %264 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %263, i32 0, i32 0
  %265 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %264, align 8
  %266 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %267 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %266, i32 0, i32 2
  %268 = call i32 %265(%struct.TYPE_9__* %267)
  store i32 %268, i32* %8, align 4
  %269 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %270 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i64, i64* %7, align 8
  %273 = call i32 @spin_lock_irqsave(i32 %271, i64 %272)
  %274 = load i32, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %245
  %277 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %278 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 1
  store i32* null, i32** %279, align 8
  %280 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %281 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %283, align 8
  br label %296

284:                                              ; preds = %245
  %285 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %286 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %285, i32 0, i32 1
  %287 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %286, align 8
  %288 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %287, i64 0
  %289 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %288, i32 0, i32 0
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %289, align 8
  %291 = load i64, i64* @RX, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @hw_device_state(i32 %294)
  store i32 %295, i32* %8, align 4
  br label %296

296:                                              ; preds = %284, %276, %244
  %297 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %298 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i64, i64* %7, align 8
  %301 = call i32 @spin_unlock_irqrestore(i32 %299, i64 %300)
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %296
  %305 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %306 = call i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %305)
  br label %307

307:                                              ; preds = %304, %296
  %308 = load i32, i32* %8, align 4
  store i32 %308, i32* %2, align 4
  br label %309

309:                                              ; preds = %307, %95, %79, %61, %53, %47
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local i32 @trace(i8*, %struct.usb_gadget_driver*) #1

declare dso_local i8* @dma_pool_create(i8*, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @info(i8*, i64) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @dma_pool_alloc(i32*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @hw_device_state(i32) #1

declare dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
