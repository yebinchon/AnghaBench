; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xilinxfb.c_xilinxfb_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xilinxfb.c_xilinxfb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.xilinxfb_drvdata = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@REG_CTRL = common dso_local global i32 0, align 4
@PLB_ACCESS_FLAG = common dso_local global i32 0, align 4
@VESA_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @xilinxfb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinxfb_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.xilinxfb_drvdata*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.xilinxfb_drvdata* @dev_get_drvdata(%struct.device* %4)
  store %struct.xilinxfb_drvdata* %5, %struct.xilinxfb_drvdata** %3, align 8
  %6 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %6, i32 0, i32 7
  %8 = call i32 @unregister_framebuffer(%struct.TYPE_5__* %7)
  %9 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %10 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = call i32 @fb_dealloc_cmap(i32* %11)
  %13 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %14 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %2, align 8
  %19 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %20 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PAGE_ALIGN(i32 %23)
  %25 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %26 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %29 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dma_free_coherent(%struct.device* %18, i32 %24, i32 %27, i32 %30)
  br label %37

32:                                               ; preds = %1
  %33 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %34 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @iounmap(i32 %35)
  br label %37

37:                                               ; preds = %32, %17
  %38 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %39 = load i32, i32* @REG_CTRL, align 4
  %40 = call i32 @xilinx_fb_out_be32(%struct.xilinxfb_drvdata* %38, i32 %39, i32 0)
  %41 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %42 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PLB_ACCESS_FLAG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %49 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @iounmap(i32 %50)
  %52 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %53 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @release_mem_region(i32 %54, i32 8)
  br label %64

56:                                               ; preds = %37
  %57 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %58 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %61 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dcr_unmap(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %56, %47
  %65 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %3, align 8
  %66 = call i32 @kfree(%struct.xilinxfb_drvdata* %65)
  %67 = load %struct.device*, %struct.device** %2, align 8
  %68 = call i32 @dev_set_drvdata(%struct.device* %67, i32* null)
  ret i32 0
}

declare dso_local %struct.xilinxfb_drvdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_5__*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @xilinx_fb_out_be32(%struct.xilinxfb_drvdata*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @dcr_unmap(i32, i32) #1

declare dso_local i32 @kfree(%struct.xilinxfb_drvdata*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
