; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_acornfb.c_acornfb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_acornfb.c_acornfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.fb_info = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i8* }

@current_par = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@FB_VISUAL_MONO10 = common dso_local global i8* null, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i8* null, align 8
@VIDC_PALETTE_SIZE = common dso_local global i8* null, align 8
@DMA_CR_D = common dso_local global i32 0, align 4
@DMA_CR_E = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i8* null, align 8
@FB_VISUAL_STATIC_PSEUDOCOLOR = common dso_local global i8* null, align 8
@IOMD_VIDCR = common dso_local global i32 0, align 4
@IOMD_VIDEND = common dso_local global i32 0, align 4
@IOMD_VIDSTART = common dso_local global i32 0, align 4
@VDMA_END = common dso_local global i32 0, align 4
@VDMA_START = common dso_local global i32 0, align 4
@VDMA_XFERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @acornfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acornfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %3 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %29 [
    i32 1, label %7
    i32 2, label %12
    i32 4, label %17
    i32 8, label %22
  ]

7:                                                ; preds = %1
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_par, i32 0, i32 0), align 8
  %8 = load i8*, i8** @FB_VISUAL_MONO10, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i8* %8, i8** %11, align 8
  br label %31

12:                                               ; preds = %1
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_par, i32 0, i32 0), align 8
  %13 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i8* %13, i8** %16, align 8
  br label %31

17:                                               ; preds = %1
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_par, i32 0, i32 0), align 8
  %18 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i8* %18, i8** %21, align 8
  br label %31

22:                                               ; preds = %1
  %23 = load i8*, i8** @VIDC_PALETTE_SIZE, align 8
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_par, i32 0, i32 0), align 8
  %25 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i8* %25, i8** %28, align 8
  br label %31

29:                                               ; preds = %1
  %30 = call i32 (...) @BUG()
  br label %31

31:                                               ; preds = %29, %22, %17, %12, %7
  %32 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %35, %39
  %41 = sdiv i32 %40, 8
  %42 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %46 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = call i32 @acornfb_update_dma(%struct.fb_info* %45, %struct.TYPE_6__* %47)
  %49 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %50 = call i32 @acornfb_set_timing(%struct.fb_info* %49)
  ret i32 0
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @acornfb_update_dma(%struct.fb_info*, %struct.TYPE_6__*) #1

declare dso_local i32 @acornfb_set_timing(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
