; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_bcom_irq_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_bcom_irq_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psc_dma_stream = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @psc_dma_bcom_irq_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc_dma_bcom_irq_tx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.psc_dma_stream*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.psc_dma_stream*
  store %struct.psc_dma_stream* %7, %struct.psc_dma_stream** %5, align 8
  %8 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %9 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  br label %13

13:                                               ; preds = %44, %2
  %14 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %15 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @bcom_buffer_done(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %13
  %20 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %21 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bcom_retrieve_buffer(i32 %22, i32* null, i32* null)
  %24 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %25 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %28 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %32 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %35 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %19
  %39 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %40 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %43 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %19
  br label %13

45:                                               ; preds = %13
  %46 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %47 = call i32 @psc_dma_bcom_enqueue_tx(%struct.psc_dma_stream* %46)
  %48 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %49 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %48, i32 0, i32 6
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %54 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %59 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snd_pcm_period_elapsed(i32 %60)
  br label %62

62:                                               ; preds = %57, %45
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @bcom_buffer_done(i32) #1

declare dso_local i32 @bcom_retrieve_buffer(i32, i32*, i32*) #1

declare dso_local i32 @psc_dma_bcom_enqueue_tx(%struct.psc_dma_stream*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
