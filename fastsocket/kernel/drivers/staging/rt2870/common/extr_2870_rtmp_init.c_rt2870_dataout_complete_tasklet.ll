; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rt2870_dataout_complete_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_2870_rtmp_init.c_rt2870_dataout_complete_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i32, i32*, i32*, %struct.TYPE_14__, i64*, i8**, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, %struct.TYPE_16__*, i8*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }

@FALSE = common dso_local global i8* null, align 8
@USB_ST_NOERROR = common dso_local global i64 0, align 8
@fRTMP_ADAPTER_RESET_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_HALT_IN_PROGRESS = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_NIC_NOT_EXIST = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_BULKOUT_RESET = common dso_local global i32 0, align 4
@RT_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"BulkOutDataPacket failed: ReasonCode=%d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\09>>BulkOut Req=0x%lx, Complete=0x%lx, Other=0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\09>>BulkOut Header:%x %x %x %x %x %x %x %x\0A\00", align 1
@fRTUSB_BULK_OUT_DATA_FRAG = common dso_local global i64 0, align 8
@fRTUSB_BULK_OUT_DATA_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rt2870_dataout_complete_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2870_dataout_complete_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %6, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %3, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 10
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @RTMP_IRQ_LOCK(i32* %37, i64 %38)
  %40 = load i8*, i8** @FALSE, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 8
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  store i8* %40, i8** %45, align 8
  %46 = load i8*, i8** @FALSE, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 7
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @USB_ST_NOERROR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %1
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @RTMP_IRQ_UNLOCK(i32* %66, i64 %67)
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %77 = call i32 @FREE_HTTX_RING(%struct.TYPE_18__* %74, i64 %75, %struct.TYPE_19__* %76)
  br label %171

78:                                               ; preds = %1
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32* %92, i32** %10, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %94 = load i32, i32* @fRTMP_ADAPTER_RESET_IN_PROGRESS, align 4
  %95 = load i32, i32* @fRTMP_ADAPTER_HALT_IN_PROGRESS, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @fRTMP_ADAPTER_BULKOUT_RESET, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_18__* %93, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %78
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = load i32, i32* @fRTMP_ADAPTER_BULKOUT_RESET, align 4
  %106 = call i32 @RTMP_SET_FLAG(%struct.TYPE_18__* %104, i32 %105)
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %103, %78
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @RTMP_IRQ_UNLOCK(i32* %123, i64 %124)
  %126 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %127 = load i64, i64* %8, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 @DBGPRINT_RAW(i32 %126, i8* %128)
  %130 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 @DBGPRINT_RAW(i32 %130, i8* %141)
  %143 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %10, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 5
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 6
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %10, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 7
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 @DBGPRINT_RAW(i32 %143, i8* %169)
  br label %171

171:                                              ; preds = %118, %57
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %174, %177
  br i1 %178, label %179, label %201

179:                                              ; preds = %171
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 8
  %187 = icmp ne i64 %182, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %179
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %190 = load i64, i64* @fRTUSB_BULK_OUT_DATA_FRAG, align 8
  %191 = load i64, i64* %7, align 8
  %192 = shl i64 %190, %191
  %193 = call i32 @RTUSB_TEST_BULK_FLAG(%struct.TYPE_18__* %189, i64 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %188
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %197 = load i64, i64* @fRTUSB_BULK_OUT_DATA_NORMAL, align 8
  %198 = load i64, i64* %7, align 8
  %199 = shl i64 %197, %198
  %200 = call i32 @RTUSB_SET_BULK_FLAG(%struct.TYPE_18__* %196, i64 %199)
  br label %201

201:                                              ; preds = %195, %188, %179, %171
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %203 = call i32 @RTUSBKickBulkOut(%struct.TYPE_18__* %202)
  ret void
}

declare dso_local i32 @RTMP_IRQ_LOCK(i32*, i64) #1

declare dso_local i32 @RTMP_IRQ_UNLOCK(i32*, i64) #1

declare dso_local i32 @FREE_HTTX_RING(%struct.TYPE_18__*, i64, %struct.TYPE_19__*) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @RTMP_SET_FLAG(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @DBGPRINT_RAW(i32, i8*) #1

declare dso_local i32 @RTUSB_TEST_BULK_FLAG(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @RTUSB_SET_BULK_FLAG(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @RTUSBKickBulkOut(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
