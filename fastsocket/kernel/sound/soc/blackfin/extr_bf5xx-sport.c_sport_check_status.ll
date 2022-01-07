; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_check_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sport_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TOVF = common dso_local global i32 0, align 4
@TUVF = common dso_local global i32 0, align 4
@ROVF = common dso_local global i32 0, align 4
@RUVF = common dso_local global i32 0, align 4
@DMA_DONE = common dso_local global i32 0, align 4
@DMA_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sport_device*, i32*, i32*, i32*)* @sport_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sport_check_status(%struct.sport_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.sport_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sport_device* %0, %struct.sport_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %4
  %13 = call i32 (...) @SSYNC()
  %14 = load %struct.sport_device*, %struct.sport_device** %5, align 8
  %15 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @TOVF, align 4
  %21 = load i32, i32* @TUVF, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ROVF, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RUVF, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %19, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %12
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @TOVF, align 4
  %32 = load i32, i32* @TUVF, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ROVF, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RUVF, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %30, %37
  %39 = load %struct.sport_device*, %struct.sport_device** %5, align 8
  %40 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %29, %12
  %44 = call i32 (...) @SSYNC()
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %4
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = call i32 (...) @SSYNC()
  %52 = load %struct.sport_device*, %struct.sport_device** %5, align 8
  %53 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @get_dma_curr_irqstat(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @DMA_DONE, align 4
  %58 = load i32, i32* @DMA_ERR, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %50
  %63 = load %struct.sport_device*, %struct.sport_device** %5, align 8
  %64 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @clear_dma_irqstat(i32 %65)
  br label %67

67:                                               ; preds = %62, %50
  %68 = call i32 (...) @SSYNC()
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %47
  %72 = load i32*, i32** %8, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = call i32 (...) @SSYNC()
  %76 = load %struct.sport_device*, %struct.sport_device** %5, align 8
  %77 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @get_dma_curr_irqstat(i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @DMA_DONE, align 4
  %82 = load i32, i32* @DMA_ERR, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = load %struct.sport_device*, %struct.sport_device** %5, align 8
  %88 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @clear_dma_irqstat(i32 %89)
  br label %91

91:                                               ; preds = %86, %74
  %92 = call i32 (...) @SSYNC()
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %71
  ret i32 0
}

declare dso_local i32 @SSYNC(...) #1

declare dso_local i32 @get_dma_curr_irqstat(i32) #1

declare dso_local i32 @clear_dma_irqstat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
