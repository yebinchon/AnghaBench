; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c__hardware_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c__hardware_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci13xxx_ep = type { i64, i32, i32 }
%struct.ci13xxx_req = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p, %p\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TD_STATUS = common dso_local global i32 0, align 4
@TD_STATUS_ACTIVE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@TD_STATUS_HALTED = common dso_local global i32 0, align 4
@TD_STATUS_DT_ERR = common dso_local global i32 0, align 4
@TD_STATUS_TR_ERR = common dso_local global i32 0, align 4
@TD_TOTAL_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci13xxx_ep*, %struct.ci13xxx_req*)* @_hardware_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hardware_dequeue(%struct.ci13xxx_ep* %0, %struct.ci13xxx_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ci13xxx_ep*, align 8
  %5 = alloca %struct.ci13xxx_req*, align 8
  store %struct.ci13xxx_ep* %0, %struct.ci13xxx_ep** %4, align 8
  store %struct.ci13xxx_req* %1, %struct.ci13xxx_req** %5, align 8
  %6 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %7 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %8 = call i32 @trace(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.ci13xxx_ep* %6, %struct.ci13xxx_req* %7)
  %9 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %10 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EALREADY, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %185

19:                                               ; preds = %2
  %20 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %21 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %24 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @hw_ep_is_primed(i32 %22, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %30 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %33 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @hw_ep_flush(i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %28, %19
  %37 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %38 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %41 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %36
  %45 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %46 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %49 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %53 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %57 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %64

62:                                               ; preds = %44
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @dma_unmap_single(i32 %47, i64 %51, i32 %55, i32 %65)
  %67 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %68 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %71 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %64, %36
  %73 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %74 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TD_STATUS, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %81 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* @TD_STATUS_ACTIVE, align 4
  %84 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %85 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %83, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %72
  %91 = load i32, i32* @ECONNRESET, align 4
  %92 = sub nsw i32 0, %91
  %93 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %94 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %135

96:                                               ; preds = %72
  %97 = load i32, i32* @TD_STATUS_HALTED, align 4
  %98 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %99 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %97, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %106 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 8
  br label %134

108:                                              ; preds = %96
  %109 = load i32, i32* @TD_STATUS_DT_ERR, align 4
  %110 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %111 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %109, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %118 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 -1, i32* %119, align 8
  br label %133

120:                                              ; preds = %108
  %121 = load i32, i32* @TD_STATUS_TR_ERR, align 4
  %122 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %123 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %121, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %130 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 -1, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %120
  br label %133

133:                                              ; preds = %132, %116
  br label %134

134:                                              ; preds = %133, %104
  br label %135

135:                                              ; preds = %134, %90
  %136 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %137 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %136, i32 0, i32 1
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TD_TOTAL_BYTES, align 4
  %142 = and i32 %140, %141
  %143 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %144 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 8
  %146 = load i32, i32* @TD_TOTAL_BYTES, align 4
  %147 = call i32 @ffs_nr(i32 %146)
  %148 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %149 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = ashr i32 %151, %147
  store i32 %152, i32* %150, align 8
  %153 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %154 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %158 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %156, %160
  %162 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %163 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  %165 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %166 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %135
  br label %176

171:                                              ; preds = %135
  %172 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %173 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  br label %176

176:                                              ; preds = %171, %170
  %177 = phi i32 [ 0, %170 ], [ %175, %171 ]
  %178 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %179 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  store i32 %177, i32* %180, align 8
  %181 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %182 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %176, %16
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @trace(i8*, %struct.ci13xxx_ep*, %struct.ci13xxx_req*) #1

declare dso_local i64 @hw_ep_is_primed(i32, i64) #1

declare dso_local i32 @hw_ep_flush(i32, i64) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @ffs_nr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
