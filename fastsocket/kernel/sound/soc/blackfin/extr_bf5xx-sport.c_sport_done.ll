; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sport_device = type { i32, i32, i32, i32, i32, %struct.sport_device*, %struct.sport_device*, %struct.sport_device*, %struct.sport_device*, %struct.sport_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sport_done(%struct.sport_device* %0) #0 {
  %2 = alloca %struct.sport_device*, align 8
  store %struct.sport_device* %0, %struct.sport_device** %2, align 8
  %3 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %4 = icmp eq %struct.sport_device* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %62

6:                                                ; preds = %1
  %7 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %8 = call i32 @sport_stop(%struct.sport_device* %7)
  %9 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %10 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %9, i32 0, i32 9
  %11 = load %struct.sport_device*, %struct.sport_device** %10, align 8
  %12 = icmp ne %struct.sport_device* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %15 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %18 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %17, i32 0, i32 9
  %19 = load %struct.sport_device*, %struct.sport_device** %18, align 8
  %20 = call i32 @dma_free_coherent(i32* null, i32 %16, %struct.sport_device* %19, i32 0)
  br label %21

21:                                               ; preds = %13, %6
  %22 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %23 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %22, i32 0, i32 8
  %24 = load %struct.sport_device*, %struct.sport_device** %23, align 8
  %25 = icmp ne %struct.sport_device* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %28 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %31 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %30, i32 0, i32 8
  %32 = load %struct.sport_device*, %struct.sport_device** %31, align 8
  %33 = call i32 @dma_free_coherent(i32* null, i32 %29, %struct.sport_device* %32, i32 0)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %36 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %35, i32 0, i32 7
  %37 = load %struct.sport_device*, %struct.sport_device** %36, align 8
  %38 = call i32 @dma_free_coherent(i32* null, i32 8, %struct.sport_device* %37, i32 0)
  %39 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %40 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %39, i32 0, i32 6
  %41 = load %struct.sport_device*, %struct.sport_device** %40, align 8
  %42 = call i32 @dma_free_coherent(i32* null, i32 8, %struct.sport_device* %41, i32 0)
  %43 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %44 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %43, i32 0, i32 5
  %45 = load %struct.sport_device*, %struct.sport_device** %44, align 8
  %46 = call i32 @kfree(%struct.sport_device* %45)
  %47 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %48 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @free_dma(i32 %49)
  %51 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %52 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @free_dma(i32 %53)
  %55 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %56 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %59 = call i32 @free_irq(i32 %57, %struct.sport_device* %58)
  %60 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %61 = call i32 @kfree(%struct.sport_device* %60)
  store %struct.sport_device* null, %struct.sport_device** %2, align 8
  br label %62

62:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @sport_stop(%struct.sport_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.sport_device*, i32) #1

declare dso_local i32 @kfree(%struct.sport_device*) #1

declare dso_local i32 @free_dma(i32) #1

declare dso_local i32 @free_irq(i32, %struct.sport_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
