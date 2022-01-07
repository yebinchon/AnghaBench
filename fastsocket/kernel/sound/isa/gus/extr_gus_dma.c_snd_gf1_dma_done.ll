; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_dma.c_snd_gf1_dma_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_dma.c_snd_gf1_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block*, i32, i32 }
%struct.snd_gf1_dma_block = type { %struct.snd_gf1_dma_block* }

@SNDRV_GF1_HANDLER_DMA_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_dma_done(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  %3 = alloca %struct.snd_gf1_dma_block*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %4 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %5 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %8 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %13 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %66, label %17

17:                                               ; preds = %1
  %18 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %19 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @snd_dma_disable(i32 %21)
  %23 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %24 = load i32, i32* @SNDRV_GF1_HANDLER_DMA_WRITE, align 4
  %25 = call i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card* %23, i32 %24)
  %26 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %27 = call i32 @snd_gf1_dma_ack(%struct.snd_gus_card* %26)
  br label %28

28:                                               ; preds = %34, %17
  %29 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %30 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %31, align 8
  store %struct.snd_gf1_dma_block* %32, %struct.snd_gf1_dma_block** %3, align 8
  %33 = icmp ne %struct.snd_gf1_dma_block* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %36 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %35, i32 0, i32 0
  %37 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %36, align 8
  %38 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %39 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store %struct.snd_gf1_dma_block* %37, %struct.snd_gf1_dma_block** %40, align 8
  %41 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %42 = call i32 @kfree(%struct.snd_gf1_dma_block* %41)
  br label %28

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %50, %43
  %45 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %46 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %47, align 8
  store %struct.snd_gf1_dma_block* %48, %struct.snd_gf1_dma_block** %3, align 8
  %49 = icmp ne %struct.snd_gf1_dma_block* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %52 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %51, i32 0, i32 0
  %53 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %52, align 8
  %54 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %55 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store %struct.snd_gf1_dma_block* %53, %struct.snd_gf1_dma_block** %56, align 8
  %57 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %58 = call i32 @kfree(%struct.snd_gf1_dma_block* %57)
  br label %44

59:                                               ; preds = %44
  %60 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %61 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %64 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %59, %1
  %67 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %68 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_dma_disable(i32) #1

declare dso_local i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_dma_ack(%struct.snd_gus_card*) #1

declare dso_local i32 @kfree(%struct.snd_gf1_dma_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
