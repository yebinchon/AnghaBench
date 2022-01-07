; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_musb_gadget_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_musb_gadget_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 }
%struct.musb_ep = type { %struct.TYPE_4__, i32, i32, i64, i64, i32, %struct.musb* }
%struct.TYPE_4__ = type { i32* }
%struct.musb = type { i32, i32 }
%struct.musb_request = type { i32, %struct.TYPE_3__, i64, i32, %struct.musb_ep*, %struct.musb* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"<== to %s request=%p\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"req %p queued to %s while ep %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @musb_gadget_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_gadget_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.musb_ep*, align 8
  %9 = alloca %struct.musb_request*, align 8
  %10 = alloca %struct.musb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %14 = icmp ne %struct.usb_ep* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %17 = icmp ne %struct.usb_request* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %204

21:                                               ; preds = %15
  %22 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %23 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %204

29:                                               ; preds = %21
  %30 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %31 = call %struct.musb_ep* @to_musb_ep(%struct.usb_ep* %30)
  store %struct.musb_ep* %31, %struct.musb_ep** %8, align 8
  %32 = load %struct.musb_ep*, %struct.musb_ep** %8, align 8
  %33 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %32, i32 0, i32 6
  %34 = load %struct.musb*, %struct.musb** %33, align 8
  store %struct.musb* %34, %struct.musb** %10, align 8
  %35 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %36 = call %struct.musb_request* @to_musb_request(%struct.usb_request* %35)
  store %struct.musb_request* %36, %struct.musb_request** %9, align 8
  %37 = load %struct.musb*, %struct.musb** %10, align 8
  %38 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %39 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %38, i32 0, i32 5
  store %struct.musb* %37, %struct.musb** %39, align 8
  %40 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %41 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %40, i32 0, i32 4
  %42 = load %struct.musb_ep*, %struct.musb_ep** %41, align 8
  %43 = load %struct.musb_ep*, %struct.musb_ep** %8, align 8
  %44 = icmp ne %struct.musb_ep* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %204

48:                                               ; preds = %29
  %49 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %50 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.usb_request*
  %54 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %55 = call i32 (i32, i8*, %struct.usb_request*, %struct.usb_request*, ...) @DBG(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.usb_request* %53, %struct.usb_request* %54)
  %56 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %57 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @EINPROGRESS, align 4
  %60 = sub nsw i32 0, %59
  %61 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %62 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i32 %60, i32* %63, align 4
  %64 = load %struct.musb_ep*, %struct.musb_ep** %8, align 8
  %65 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %68 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.musb_ep*, %struct.musb_ep** %8, align 8
  %70 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %73 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = call i64 (...) @is_dma_capable()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %142

76:                                               ; preds = %48
  %77 = load %struct.musb_ep*, %struct.musb_ep** %8, align 8
  %78 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %142

81:                                               ; preds = %76
  %82 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %83 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DMA_ADDR_INVALID, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %81
  %89 = load %struct.musb*, %struct.musb** %10, align 8
  %90 = getelementptr inbounds %struct.musb, %struct.musb* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %93 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %97 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %101 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %88
  %105 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %108

106:                                              ; preds = %88
  %107 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = call i64 @dma_map_single(i32 %91, i32 %95, i32 %99, i32 %109)
  %111 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %112 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %115 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  br label %141

116:                                              ; preds = %81
  %117 = load %struct.musb*, %struct.musb** %10, align 8
  %118 = getelementptr inbounds %struct.musb, %struct.musb* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %121 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %125 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %129 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %116
  %133 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %136

134:                                              ; preds = %116
  %135 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = call i32 @dma_sync_single_for_device(i32 %119, i64 %123, i32 %127, i32 %137)
  %139 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %140 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  br label %141

141:                                              ; preds = %136, %108
  br label %154

142:                                              ; preds = %76, %48
  %143 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %144 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @ENODATA, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %204

150:                                              ; preds = %142
  %151 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %152 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %153, %141
  %155 = load %struct.musb*, %struct.musb** %10, align 8
  %156 = getelementptr inbounds %struct.musb, %struct.musb* %155, i32 0, i32 0
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @spin_lock_irqsave(i32* %156, i64 %157)
  %159 = load %struct.musb_ep*, %struct.musb_ep** %8, align 8
  %160 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %154
  %164 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %165 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %166 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to %struct.usb_request*
  %170 = call i32 (i32, i8*, %struct.usb_request*, %struct.usb_request*, ...) @DBG(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.usb_request* %164, %struct.usb_request* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %171 = load i32, i32* @ESHUTDOWN, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %11, align 4
  br label %198

173:                                              ; preds = %154
  %174 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %175 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load %struct.musb_ep*, %struct.musb_ep** %8, align 8
  %178 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %177, i32 0, i32 0
  %179 = call i32 @list_add_tail(i32* %176, %struct.TYPE_4__* %178)
  %180 = load %struct.musb_ep*, %struct.musb_ep** %8, align 8
  %181 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %197, label %184

184:                                              ; preds = %173
  %185 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %186 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load %struct.musb_ep*, %struct.musb_ep** %8, align 8
  %189 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = icmp eq i32* %187, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %184
  %194 = load %struct.musb*, %struct.musb** %10, align 8
  %195 = load %struct.musb_request*, %struct.musb_request** %9, align 8
  %196 = call i32 @musb_ep_restart(%struct.musb* %194, %struct.musb_request* %195)
  br label %197

197:                                              ; preds = %193, %184, %173
  br label %198

198:                                              ; preds = %197, %163
  %199 = load %struct.musb*, %struct.musb** %10, align 8
  %200 = getelementptr inbounds %struct.musb, %struct.musb* %199, i32 0, i32 0
  %201 = load i64, i64* %12, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32* %200, i64 %201)
  %203 = load i32, i32* %11, align 4
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %198, %147, %45, %26, %18
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.musb_ep* @to_musb_ep(%struct.usb_ep*) #1

declare dso_local %struct.musb_request* @to_musb_request(%struct.usb_request*) #1

declare dso_local i32 @DBG(i32, i8*, %struct.usb_request*, %struct.usb_request*, ...) #1

declare dso_local i64 @is_dma_capable(...) #1

declare dso_local i64 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @musb_ep_restart(%struct.musb*, %struct.musb_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
