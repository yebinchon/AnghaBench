; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_queue_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_queue_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.usba_ep = type { i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usba_request = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i64, i64, i64 }

@DBG_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: req l/%u d/%08x %c%c%c\0A\00", align 1
@DBG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid request length %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_BUF_LEN = common dso_local global i32 0, align 4
@USBA_DMA_CH_EN = common dso_local global i32 0, align 4
@USBA_DMA_END_BUF_IE = common dso_local global i32 0, align 4
@USBA_DMA_END_TR_EN = common dso_local global i32 0, align 4
@USBA_DMA_END_TR_IE = common dso_local global i32 0, align 4
@USBA_DMA_END_BUF_EN = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usba_udc*, %struct.usba_ep*, %struct.usba_request*, i32)* @queue_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_dma(%struct.usba_udc* %0, %struct.usba_ep* %1, %struct.usba_request* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usba_udc*, align 8
  %7 = alloca %struct.usba_ep*, align 8
  %8 = alloca %struct.usba_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.usba_udc* %0, %struct.usba_udc** %6, align 8
  store %struct.usba_ep* %1, %struct.usba_ep** %7, align 8
  store %struct.usba_request* %2, %struct.usba_request** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @DBG_DMA, align 4
  %13 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %14 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %18 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %22 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %26 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 90, i32 122
  %32 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %33 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 83, i32 115
  %39 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %40 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 73, i32 105
  %46 = call i32 (i32, i8*, i32, ...) @DBG(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i64 %24, i32 %31, i32 %38, i32 %45)
  %47 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %48 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 65536
  br i1 %51, label %52, label %61

52:                                               ; preds = %4
  %53 = load i32, i32* @DBG_ERR, align 4
  %54 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %55 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, i32, ...) @DBG(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %184

61:                                               ; preds = %4
  %62 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %63 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %65 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DMA_ADDR_INVALID, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %61
  %71 = load %struct.usba_udc*, %struct.usba_udc** %6, align 8
  %72 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %76 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %80 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %84 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %91

89:                                               ; preds = %70
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = call i64 @dma_map_single(i32* %74, i32 %78, i32 %82, i32 %92)
  %94 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %95 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i64 %93, i64* %96, align 8
  %97 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %98 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  br label %125

99:                                               ; preds = %61
  %100 = load %struct.usba_udc*, %struct.usba_udc** %6, align 8
  %101 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %105 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %109 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %113 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %99
  %117 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %120

118:                                              ; preds = %99
  %119 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = call i32 @dma_sync_single_for_device(i32* %103, i64 %107, i32 %111, i32 %121)
  %123 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %124 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %91
  %126 = load i32, i32* @DMA_BUF_LEN, align 4
  %127 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %128 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @USBA_BF(i32 %126, i32 %130)
  %132 = load i32, i32* @USBA_DMA_CH_EN, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @USBA_DMA_END_BUF_IE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @USBA_DMA_END_TR_EN, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @USBA_DMA_END_TR_IE, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %141 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %143 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %125
  %147 = load i32, i32* @USBA_DMA_END_BUF_EN, align 4
  %148 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %149 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %146, %125
  %153 = load i32, i32* @ESHUTDOWN, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %11, align 4
  %155 = load %struct.usba_udc*, %struct.usba_udc** %6, align 8
  %156 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %155, i32 0, i32 0
  %157 = load i64, i64* %10, align 8
  %158 = call i32 @spin_lock_irqsave(i32* %156, i64 %157)
  %159 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %160 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %152
  %164 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %165 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %164, i32 0, i32 0
  %166 = call i64 @list_empty(i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %170 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %171 = call i32 @submit_request(%struct.usba_ep* %169, %struct.usba_request* %170)
  br label %172

172:                                              ; preds = %168, %163
  %173 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %174 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %173, i32 0, i32 3
  %175 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %176 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %175, i32 0, i32 0
  %177 = call i32 @list_add_tail(i32* %174, i32* %176)
  store i32 0, i32* %11, align 4
  br label %178

178:                                              ; preds = %172, %152
  %179 = load %struct.usba_udc*, %struct.usba_udc** %6, align 8
  %180 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %179, i32 0, i32 0
  %181 = load i64, i64* %10, align 8
  %182 = call i32 @spin_unlock_irqrestore(i32* %180, i64 %181)
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %178, %52
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @DBG(i32, i8*, i32, ...) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i64, i32, i32) #1

declare dso_local i32 @USBA_BF(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @submit_request(%struct.usba_ep*, %struct.usba_request*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
