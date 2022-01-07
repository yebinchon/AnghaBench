; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_snd_atiixp_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_snd_atiixp_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.atiixp_dma* }
%struct.atiixp_dma = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.atiixp_modem*)*, i32 (%struct.atiixp_modem*, i32)* }
%struct.atiixp_modem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_atiixp_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atiixp_modem*, align 8
  %7 = alloca %struct.atiixp_dma*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.atiixp_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.atiixp_modem* %10, %struct.atiixp_modem** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.atiixp_dma*, %struct.atiixp_dma** %14, align 8
  store %struct.atiixp_dma* %15, %struct.atiixp_dma** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %17 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32 (%struct.atiixp_modem*, i32)*, i32 (%struct.atiixp_modem*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.atiixp_modem*, i32)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %24 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.atiixp_modem*)*, i32 (%struct.atiixp_modem*)** %26, align 8
  %28 = icmp ne i32 (%struct.atiixp_modem*)* %27, null
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %22, %2
  %31 = phi i1 [ true, %2 ], [ %29, %22 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @snd_BUG_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %90

38:                                               ; preds = %30
  %39 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %40 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %63 [
    i32 129, label %43
    i32 128, label %53
  ]

43:                                               ; preds = %38
  %44 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %45 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32 (%struct.atiixp_modem*, i32)*, i32 (%struct.atiixp_modem*, i32)** %47, align 8
  %49 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %50 = call i32 %48(%struct.atiixp_modem* %49, i32 1)
  %51 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %52 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %66

53:                                               ; preds = %38
  %54 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %55 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32 (%struct.atiixp_modem*, i32)*, i32 (%struct.atiixp_modem*, i32)** %57, align 8
  %59 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %60 = call i32 %58(%struct.atiixp_modem* %59, i32 0)
  %61 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %62 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %66

63:                                               ; preds = %38
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %53, %43
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %66
  %70 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %71 = call i32 @snd_atiixp_check_bus_busy(%struct.atiixp_modem* %70)
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %76 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (%struct.atiixp_modem*)*, i32 (%struct.atiixp_modem*)** %78, align 8
  %80 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %81 = call i32 %79(%struct.atiixp_modem* %80)
  %82 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %83 = call i32 @snd_atiixp_check_bus_busy(%struct.atiixp_modem* %82)
  br label %84

84:                                               ; preds = %74, %69
  br label %85

85:                                               ; preds = %84, %66
  %86 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %87 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %85, %35
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.atiixp_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_atiixp_check_bus_busy(%struct.atiixp_modem*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
