; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_ep = type { i8, %struct.TYPE_9__*, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.fsl_req = type { i32, %struct.TYPE_11__, i64, %struct.ep_td_struct*, i32 }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)*, i32, i32, i32 }
%struct.ep_td_struct = type { i32, %struct.ep_td_struct* }
%struct.fsl_udc = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"complete %s req %p stat %d len %u/%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_ep*, %struct.fsl_req*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.fsl_ep* %0, %struct.fsl_req* %1, i32 %2) #0 {
  %4 = alloca %struct.fsl_ep*, align 8
  %5 = alloca %struct.fsl_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_udc*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.ep_td_struct*, align 8
  %10 = alloca %struct.ep_td_struct*, align 8
  %11 = alloca i32, align 4
  store %struct.fsl_ep* %0, %struct.fsl_ep** %4, align 8
  store %struct.fsl_req* %1, %struct.fsl_req** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.fsl_udc* null, %struct.fsl_udc** %7, align 8
  %12 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %13 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  store i8 %14, i8* %8, align 1
  %15 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %16 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = bitcast %struct.TYPE_9__* %17 to %struct.fsl_udc*
  store %struct.fsl_udc* %18, %struct.fsl_udc** %7, align 8
  %19 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %20 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %19, i32 0, i32 4
  %21 = call i32 @list_del_init(i32* %20)
  %22 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %23 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @EINPROGRESS, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %32 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %36 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %41 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %40, i32 0, i32 3
  %42 = load %struct.ep_td_struct*, %struct.ep_td_struct** %41, align 8
  store %struct.ep_td_struct* %42, %struct.ep_td_struct** %10, align 8
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %70, %39
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %46 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load %struct.ep_td_struct*, %struct.ep_td_struct** %10, align 8
  store %struct.ep_td_struct* %50, %struct.ep_td_struct** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %53 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.ep_td_struct*, %struct.ep_td_struct** %9, align 8
  %59 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %58, i32 0, i32 1
  %60 = load %struct.ep_td_struct*, %struct.ep_td_struct** %59, align 8
  store %struct.ep_td_struct* %60, %struct.ep_td_struct** %10, align 8
  br label %61

61:                                               ; preds = %57, %49
  %62 = load %struct.fsl_udc*, %struct.fsl_udc** %7, align 8
  %63 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ep_td_struct*, %struct.ep_td_struct** %9, align 8
  %66 = load %struct.ep_td_struct*, %struct.ep_td_struct** %9, align 8
  %67 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dma_pool_free(i32 %64, %struct.ep_td_struct* %65, i32 %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %75 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %73
  %79 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %80 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %87 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %91 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %95 = call i64 @ep_is_in(%struct.fsl_ep* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %78
  %98 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %101

99:                                               ; preds = %78
  %100 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = call i32 @dma_unmap_single(i32 %85, i32 %89, i32 %93, i32 %102)
  %104 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %105 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %106 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 4
  store i32 %104, i32* %107, align 8
  %108 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %109 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  br label %136

110:                                              ; preds = %73
  %111 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %112 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %119 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %123 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %127 = call i64 @ep_is_in(%struct.fsl_ep* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %110
  %130 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %133

131:                                              ; preds = %110
  %132 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = call i32 @dma_sync_single_for_cpu(i32 %117, i32 %121, i32 %125, i32 %134)
  br label %136

136:                                              ; preds = %133, %101
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %161

139:                                              ; preds = %136
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @ESHUTDOWN, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %139
  %145 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %146 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %150 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %149, i32 0, i32 1
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %153 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %157 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @VDBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %148, %struct.TYPE_11__* %150, i32 %151, i32 %155, i32 %159)
  br label %161

161:                                              ; preds = %144, %139, %136
  %162 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %163 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %162, i32 0, i32 0
  store i8 1, i8* %163, align 8
  %164 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %165 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %164, i32 0, i32 1
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = call i32 @spin_unlock(i32* %167)
  %169 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %170 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)** %171, align 8
  %173 = icmp ne i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* %172, null
  br i1 %173, label %174, label %184

174:                                              ; preds = %161
  %175 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %176 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)** %177, align 8
  %179 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %180 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %179, i32 0, i32 2
  %181 = load %struct.fsl_req*, %struct.fsl_req** %5, align 8
  %182 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %181, i32 0, i32 1
  %183 = call i32 %178(%struct.TYPE_10__* %180, %struct.TYPE_11__* %182)
  br label %184

184:                                              ; preds = %174, %161
  %185 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %186 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %185, i32 0, i32 1
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = call i32 @spin_lock(i32* %188)
  %190 = load i8, i8* %8, align 1
  %191 = load %struct.fsl_ep*, %struct.fsl_ep** %4, align 8
  %192 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %191, i32 0, i32 0
  store i8 %190, i8* %192, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.ep_td_struct*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @ep_is_in(%struct.fsl_ep*) #1

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
