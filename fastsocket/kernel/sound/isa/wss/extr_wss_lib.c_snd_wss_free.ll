; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i64, i32, i64, i64, i64, i32, i32, i32 }

@WSS_HWSHARE_IRQ = common dso_local global i32 0, align 4
@WSS_HWSHARE_DMA1 = common dso_local global i32 0, align 4
@WSS_HWSHARE_DMA2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_wss_free(%struct.snd_wss* %0) #0 {
  %2 = alloca %struct.snd_wss*, align 8
  store %struct.snd_wss* %0, %struct.snd_wss** %2, align 8
  %3 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %4 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @release_and_free_resource(i32 %5)
  %7 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %8 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @release_and_free_resource(i32 %9)
  %11 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %12 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %17 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @disable_irq(i64 %18)
  %20 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %21 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WSS_HWSHARE_IRQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %15
  %27 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %28 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %31 = bitcast %struct.snd_wss* %30 to i8*
  %32 = call i32 @free_irq(i64 %29, i8* %31)
  br label %33

33:                                               ; preds = %26, %15
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %36 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @WSS_HWSHARE_DMA1, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %34
  %42 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %43 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %48 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @snd_dma_disable(i64 %49)
  %51 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %52 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @free_dma(i64 %53)
  br label %55

55:                                               ; preds = %46, %41, %34
  %56 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %57 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @WSS_HWSHARE_DMA2, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %55
  %63 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %64 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %69 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %72 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %67
  %76 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %77 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @snd_dma_disable(i64 %78)
  %80 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %81 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @free_dma(i64 %82)
  br label %84

84:                                               ; preds = %75, %67, %62, %55
  %85 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %86 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %91 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %94 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @snd_device_free(i32 %92, i64 %95)
  br label %97

97:                                               ; preds = %89, %84
  %98 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %99 = call i32 @kfree(%struct.snd_wss* %98)
  ret i32 0
}

declare dso_local i32 @release_and_free_resource(i32) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @snd_dma_disable(i64) #1

declare dso_local i32 @free_dma(i64) #1

declare dso_local i32 @snd_device_free(i32, i64) #1

declare dso_local i32 @kfree(%struct.snd_wss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
