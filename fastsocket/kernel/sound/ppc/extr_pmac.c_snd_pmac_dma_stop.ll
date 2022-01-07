; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_pmac.c_snd_pmac_dma_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_pmac.c_snd_pmac_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RUN = common dso_local global i32 0, align 4
@WAKE = common dso_local global i32 0, align 4
@FLUSH = common dso_local global i32 0, align 4
@PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmac_stream*)* @snd_pmac_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_dma_stop(%struct.pmac_stream* %0) #0 {
  %2 = alloca %struct.pmac_stream*, align 8
  store %struct.pmac_stream* %0, %struct.pmac_stream** %2, align 8
  %3 = load %struct.pmac_stream*, %struct.pmac_stream** %2, align 8
  %4 = getelementptr inbounds %struct.pmac_stream, %struct.pmac_stream* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* @RUN, align 4
  %8 = load i32, i32* @WAKE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @FLUSH, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PAUSE, align 4
  %13 = or i32 %11, %12
  %14 = shl i32 %13, 16
  %15 = call i32 @out_le32(i32* %6, i32 %14)
  %16 = load %struct.pmac_stream*, %struct.pmac_stream** %2, align 8
  %17 = call i32 @snd_pmac_wait_ack(%struct.pmac_stream* %16)
  ret void
}

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @snd_pmac_wait_ack(%struct.pmac_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
