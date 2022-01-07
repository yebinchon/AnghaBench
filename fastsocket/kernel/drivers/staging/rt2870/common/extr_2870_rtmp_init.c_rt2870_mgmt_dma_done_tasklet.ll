; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rt2870_mgmt_dma_done_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rt2870_mgmt_dma_done_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_13__, i32, i32*, i8** }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_15__ = type { i32, i64, i8*, i8*, i8*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i64, i64 }

@MGMTPIPEIDX = common dso_local global i64 0, align 8
@USB_ST_NOERROR = common dso_local global i64 0, align 8
@fRTMP_ADAPTER_RESET_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_HALT_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_NIC_NOT_EXIST = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_BULKOUT_RESET = common dso_local global i32 0, align 4
@RT_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Bulk Out MLME Failed, Status=%d!\0A\00", align 1
@BULKOUT_MGMT_RESET_FLAG = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@MGMT_RING_SIZE = common dso_local global i64 0, align 8
@CMDTHREAD_RESET_BULK_OUT = common dso_local global i32 0, align 4
@fRTUSB_BULK_OUT_MLME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rt2870_mgmt_dma_done_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2870_mgmt_dma_done_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %3, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @MGMTPIPEIDX, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @RTMP_IRQ_LOCK(i32* %37, i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @USB_ST_NOERROR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = load i32, i32* @fRTMP_ADAPTER_RESET_IN_PROGRESS, align 4
  %46 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_16__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %51 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_16__* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %56 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_16__* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = load i32, i32* @fRTMP_ADAPTER_BULKOUT_RESET, align 4
  %61 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_16__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %65 = load i64, i64* %8, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @DBGPRINT_RAW(i32 %64, i8* %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = load i32, i32* @fRTMP_ADAPTER_BULKOUT_RESET, align 4
  %70 = call i32 @RTMP_SET_FLAG(%struct.TYPE_16__* %68, i32 %69)
  %71 = load i64, i64* @MGMTPIPEIDX, align 8
  %72 = load i64, i64* @BULKOUT_MGMT_RESET_FLAG, align 8
  %73 = or i64 %71, %72
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %63, %58, %53, %48, %43
  br label %77

77:                                               ; preds = %76, %1
  %78 = load i8*, i8** @FALSE, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  %81 = load i8**, i8*** %80, align 8
  %82 = load i64, i64* @MGMTPIPEIDX, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  store i8* %78, i8** %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @MGMTPIPEIDX, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @RTMP_IRQ_UNLOCK(i32* %88, i64 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @RTMP_IRQ_LOCK(i32* %92, i64 %93)
  %95 = load i8*, i8** @FALSE, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @FALSE, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @FALSE, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %6, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* @MGMT_RING_SIZE, align 8
  %128 = call i32 @INC_RING_INDEX(i32 %126, i64 %127)
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @RTMP_IRQ_UNLOCK(i32* %135, i64 %136)
  %138 = load i32*, i32** %6, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %77
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @RTMPFreeNdisPacket(%struct.TYPE_16__* %141, i32* %142)
  br label %144

144:                                              ; preds = %140, %77
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = load i32, i32* @fRTMP_ADAPTER_RESET_IN_PROGRESS, align 4
  %147 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %150 = or i32 %148, %149
  %151 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_16__* %145, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %186

154:                                              ; preds = %144
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %156 = load i32, i32* @fRTMP_ADAPTER_BULKOUT_RESET, align 4
  %157 = call i64 @RTMP_TEST_FLAG(%struct.TYPE_16__* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %154
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @BULKOUT_MGMT_RESET_FLAG, align 8
  %164 = and i64 %162, %163
  %165 = load i64, i64* @BULKOUT_MGMT_RESET_FLAG, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = load i32, i32* @CMDTHREAD_RESET_BULK_OUT, align 4
  %170 = call i32 @RTUSBEnqueueInternalCmd(%struct.TYPE_16__* %168, i32 %169, i32* null, i32 0)
  br label %185

171:                                              ; preds = %159, %154
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @MGMT_RING_SIZE, align 8
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %180 = load i32, i32* @fRTUSB_BULK_OUT_MLME, align 4
  %181 = call i32 @RTUSB_SET_BULK_FLAG(%struct.TYPE_16__* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %171
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %184 = call i32 @RTUSBKickBulkOut(%struct.TYPE_16__* %183)
  br label %185

185:                                              ; preds = %182, %167
  br label %186

186:                                              ; preds = %185, %153
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RTMP_IRQ_LOCK(i32*, i64) #1

declare dso_local i64 @RTMP_TEST_FLAG(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @DBGPRINT_RAW(i32, i8*) #1

declare dso_local i32 @RTMP_SET_FLAG(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @RTMP_IRQ_UNLOCK(i32*, i64) #1

declare dso_local i32 @INC_RING_INDEX(i32, i64) #1

declare dso_local i32 @RTMPFreeNdisPacket(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @RTUSBEnqueueInternalCmd(%struct.TYPE_16__*, i32, i32*, i32) #1

declare dso_local i32 @RTUSB_SET_BULK_FLAG(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @RTUSBKickBulkOut(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
