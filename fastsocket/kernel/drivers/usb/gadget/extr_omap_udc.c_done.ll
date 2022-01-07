; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ep = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.omap_req = type { %struct.TYPE_11__, i64, i32 }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)*, i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"complete %s req %p stat %d len %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_ep*, %struct.omap_req*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.omap_ep* %0, %struct.omap_req* %1, i32 %2) #0 {
  %4 = alloca %struct.omap_ep*, align 8
  %5 = alloca %struct.omap_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap_ep* %0, %struct.omap_ep** %4, align 8
  store %struct.omap_req* %1, %struct.omap_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %9 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %12 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %11, i32 0, i32 2
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %15 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EINPROGRESS, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %24 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %28 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i64, i64* @use_dma, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %109

34:                                               ; preds = %31
  %35 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %36 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %109

39:                                               ; preds = %34
  %40 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %41 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %39
  %45 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %46 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %53 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %57 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %61 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @USB_DIR_IN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %44
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %70

68:                                               ; preds = %44
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = call i32 @dma_unmap_single(i32 %51, i32 %55, i32 %59, i32 %71)
  %73 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %74 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %75 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 8
  %77 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %78 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  br label %108

79:                                               ; preds = %39
  %80 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %81 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %88 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %92 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %96 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @USB_DIR_IN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %79
  %102 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %105

103:                                              ; preds = %79
  %104 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = call i32 @dma_sync_single_for_cpu(i32 %86, i32 %90, i32 %94, i32 %106)
  br label %108

108:                                              ; preds = %105, %70
  br label %109

109:                                              ; preds = %108, %34, %31
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @ESHUTDOWN, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %112
  %118 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %119 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %123 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %122, i32 0, i32 0
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %126 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %130 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @VDBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %121, %struct.TYPE_11__* %123, i32 %124, i32 %128, i32 %132)
  br label %134

134:                                              ; preds = %117, %112, %109
  %135 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %136 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %138 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %137, i32 0, i32 2
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %143 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)** %144, align 8
  %146 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %147 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %146, i32 0, i32 3
  %148 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %149 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %148, i32 0, i32 0
  %150 = call i32 %145(%struct.TYPE_10__* %147, %struct.TYPE_11__* %149)
  %151 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %152 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %151, i32 0, i32 2
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = call i32 @spin_lock(i32* %154)
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %158 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @VDBG(i8*, i32, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
