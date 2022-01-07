; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_boot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i64, i32, i32*, %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.intr_pkt = type { i32 }

@EAGLE_IV = common dso_local global i64 0, align 8
@E4_INTR_PKT_SIZE = common dso_local global i32 0, align 4
@uea_dispatch_cmv_e4 = common dso_local global i32 0, align 4
@uea_schedule_load_page_e4 = common dso_local global i32 0, align 4
@uea_stat_e4 = common dso_local global i32 0, align 4
@uea_send_cmvs_e4 = common dso_local global i32 0, align 4
@uea_load_page_e4 = common dso_local global i32 0, align 4
@E1_INTR_PKT_SIZE = common dso_local global i32 0, align 4
@uea_dispatch_cmv_e1 = common dso_local global i32 0, align 4
@uea_schedule_load_page_e1 = common dso_local global i32 0, align 4
@uea_stat_e1 = common dso_local global i32 0, align 4
@uea_send_cmvs_e1 = common dso_local global i32 0, align 4
@uea_load_page_e1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ueagle-dsp\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate workqueue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ADI930 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot allocate interrupt package\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot allocate interrupt URB\0A\00", align 1
@UEA_INTR_PIPE = common dso_local global i32 0, align 4
@uea_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"urb submition failed with error %d\0A\00", align 1
@uea_kthread = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"ueagle-atm\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to create thread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @uea_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_boot(%struct.uea_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_pkt*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  %7 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %8 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %7)
  %9 = call i32 @uea_enters(i32 %8)
  %10 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %11 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %10)
  %12 = load i64, i64* @EAGLE_IV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load i32, i32* @E4_INTR_PKT_SIZE, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @uea_dispatch_cmv_e4, align 4
  %17 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %18 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @uea_schedule_load_page_e4, align 4
  %20 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %21 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @uea_stat_e4, align 4
  %23 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %24 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @uea_send_cmvs_e4, align 4
  %26 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %29 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %28, i32 0, i32 5
  %30 = load i32, i32* @uea_load_page_e4, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  br label %50

32:                                               ; preds = %1
  %33 = load i32, i32* @E1_INTR_PKT_SIZE, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @uea_dispatch_cmv_e1, align 4
  %35 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %36 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @uea_schedule_load_page_e1, align 4
  %38 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @uea_stat_e1, align 4
  %41 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %42 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @uea_send_cmvs_e1, align 4
  %44 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %45 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %47 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %46, i32 0, i32 5
  %48 = load i32, i32* @uea_load_page_e1, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %32, %14
  %51 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %52 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %51, i32 0, i32 4
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = call i32 @create_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %56 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %58 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %50
  %62 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %63 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %62)
  %64 = call i32 (i32, i8*, ...) @uea_err(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %66 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %65)
  %67 = call i32 @uea_leaves(i32 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %193

70:                                               ; preds = %50
  %71 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %72 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %71)
  %73 = load i64, i64* @ADI930, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %77 = call i32 @load_XILINX_firmware(%struct.uea_softc* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.intr_pkt* @kmalloc(i32 %79, i32 %80)
  store %struct.intr_pkt* %81, %struct.intr_pkt** %6, align 8
  %82 = load %struct.intr_pkt*, %struct.intr_pkt** %6, align 8
  %83 = icmp ne %struct.intr_pkt* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %86 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %85)
  %87 = call i32 (i32, i8*, ...) @uea_err(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %183

88:                                               ; preds = %78
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i32* @usb_alloc_urb(i32 0, i32 %89)
  %91 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %92 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %94 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %88
  %98 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %99 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %98)
  %100 = call i32 (i32, i8*, ...) @uea_err(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %174

101:                                              ; preds = %88
  %102 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %103 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %106 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %105, i32 0, i32 3
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %109 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %108, i32 0, i32 3
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = load i32, i32* @UEA_INTR_PIPE, align 4
  %112 = call i32 @usb_rcvintpipe(%struct.TYPE_13__* %110, i32 %111)
  %113 = load %struct.intr_pkt*, %struct.intr_pkt** %6, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @uea_intr, align 4
  %116 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %117 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %118 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %117, i32 0, i32 3
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %123, i64 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @usb_fill_int_urb(i32* %104, %struct.TYPE_13__* %107, i32 %112, %struct.intr_pkt* %113, i32 %114, i32 %115, %struct.uea_softc* %116, i32 %134)
  %136 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %137 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call i32 @usb_submit_urb(i32* %138, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %101
  %144 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %145 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %144)
  %146 = load i32, i32* %4, align 4
  %147 = call i32 (i32, i8*, ...) @uea_err(i32 %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %174

148:                                              ; preds = %101
  %149 = load i32, i32* @uea_kthread, align 4
  %150 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %151 = call i64 @kthread_run(i32 %149, %struct.uea_softc* %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %152 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %153 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %155 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  %159 = call i64 @ERR_PTR(i32 %158)
  %160 = icmp eq i64 %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %148
  %162 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %163 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %162)
  %164 = call i32 (i32, i8*, ...) @uea_err(i32 %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %169

165:                                              ; preds = %148
  %166 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %167 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %166)
  %168 = call i32 @uea_leaves(i32 %167)
  store i32 0, i32* %2, align 4
  br label %193

169:                                              ; preds = %161
  %170 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %171 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @usb_kill_urb(i32* %172)
  br label %174

174:                                              ; preds = %169, %143, %97
  %175 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %176 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @usb_free_urb(i32* %177)
  %179 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %180 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %179, i32 0, i32 2
  store i32* null, i32** %180, align 8
  %181 = load %struct.intr_pkt*, %struct.intr_pkt** %6, align 8
  %182 = call i32 @kfree(%struct.intr_pkt* %181)
  br label %183

183:                                              ; preds = %174, %84
  %184 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %185 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @destroy_workqueue(i32 %186)
  %188 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %189 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %188)
  %190 = call i32 @uea_leaves(i32 %189)
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %183, %165, %61
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @create_workqueue(i8*) #1

declare dso_local i32 @uea_err(i32, i8*, ...) #1

declare dso_local i32 @uea_leaves(i32) #1

declare dso_local i32 @load_XILINX_firmware(%struct.uea_softc*) #1

declare dso_local %struct.intr_pkt* @kmalloc(i32, i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32*, %struct.TYPE_13__*, i32, %struct.intr_pkt*, i32, i32, %struct.uea_softc*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i64 @kthread_run(i32, %struct.uea_softc*, i8*) #1

declare dso_local i64 @ERR_PTR(i32) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(%struct.intr_pkt*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
