; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i64, %struct.TYPE_2__*, %struct.loopback* }
%struct.TYPE_2__ = type { %struct.loopback_pcm* }
%struct.loopback_pcm = type { i32 }
%struct.loopback = type { i32, %struct.loopback_cable*** }
%struct.loopback_cable = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @loopback_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.loopback*, align 8
  %4 = alloca %struct.loopback_pcm*, align 8
  %5 = alloca %struct.loopback_cable*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 3
  %9 = load %struct.loopback*, %struct.loopback** %8, align 8
  store %struct.loopback* %9, %struct.loopback** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.loopback_pcm*, %struct.loopback_pcm** %13, align 8
  store %struct.loopback_pcm* %14, %struct.loopback_pcm** %4, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call i32 @get_cable_index(%struct.snd_pcm_substream* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %18 = call i32 @loopback_timer_stop(%struct.loopback_pcm* %17)
  %19 = load %struct.loopback*, %struct.loopback** %3, align 8
  %20 = getelementptr inbounds %struct.loopback, %struct.loopback* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.loopback*, %struct.loopback** %3, align 8
  %23 = getelementptr inbounds %struct.loopback, %struct.loopback* %22, i32 0, i32 1
  %24 = load %struct.loopback_cable***, %struct.loopback_cable**** %23, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.loopback_cable**, %struct.loopback_cable*** %24, i64 %27
  %29 = load %struct.loopback_cable**, %struct.loopback_cable*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.loopback_cable*, %struct.loopback_cable** %29, i64 %31
  %33 = load %struct.loopback_cable*, %struct.loopback_cable** %32, align 8
  store %struct.loopback_cable* %33, %struct.loopback_cable** %5, align 8
  %34 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %35 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %36, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %1
  %48 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %49 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32*, i32** %50, i64 %53
  store i32* null, i32** %54, align 8
  br label %69

55:                                               ; preds = %1
  %56 = load %struct.loopback*, %struct.loopback** %3, align 8
  %57 = getelementptr inbounds %struct.loopback, %struct.loopback* %56, i32 0, i32 1
  %58 = load %struct.loopback_cable***, %struct.loopback_cable**** %57, align 8
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.loopback_cable**, %struct.loopback_cable*** %58, i64 %61
  %63 = load %struct.loopback_cable**, %struct.loopback_cable*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.loopback_cable*, %struct.loopback_cable** %63, i64 %65
  store %struct.loopback_cable* null, %struct.loopback_cable** %66, align 8
  %67 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %68 = call i32 @kfree(%struct.loopback_cable* %67)
  br label %69

69:                                               ; preds = %55, %47
  %70 = load %struct.loopback*, %struct.loopback** %3, align 8
  %71 = getelementptr inbounds %struct.loopback, %struct.loopback* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  ret i32 0
}

declare dso_local i32 @get_cable_index(%struct.snd_pcm_substream*) #1

declare dso_local i32 @loopback_timer_stop(%struct.loopback_pcm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.loopback_cable*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
