; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_abdac.c_atmel_abdac_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_abdac.c_atmel_abdac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.atmel_abdac = type { i32, i32, i32*, %struct.snd_pcm_substream* }

@atmel_abdac_hw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @atmel_abdac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_abdac_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.atmel_abdac*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.atmel_abdac* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.atmel_abdac* %5, %struct.atmel_abdac** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.atmel_abdac*, %struct.atmel_abdac** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %7, i32 0, i32 3
  store %struct.snd_pcm_substream* %6, %struct.snd_pcm_substream** %8, align 8
  %9 = load %struct.atmel_abdac*, %struct.atmel_abdac** %3, align 8
  %10 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.atmel_abdac*, %struct.atmel_abdac** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @atmel_abdac_hw, i32 0, i32 1), align 4
  %19 = load %struct.atmel_abdac*, %struct.atmel_abdac** %3, align 8
  %20 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @atmel_abdac_hw, i32 0, i32 0), align 4
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = bitcast %struct.TYPE_4__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.TYPE_4__* @atmel_abdac_hw to i8*), i64 8, i1 false)
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %33 = load %struct.atmel_abdac*, %struct.atmel_abdac** %3, align 8
  %34 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %33, i32 0, i32 1
  %35 = call i32 @snd_pcm_hw_constraint_list(%struct.TYPE_3__* %31, i32 0, i32 %32, i32* %34)
  ret i32 %35
}

declare dso_local %struct.atmel_abdac* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.TYPE_3__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
