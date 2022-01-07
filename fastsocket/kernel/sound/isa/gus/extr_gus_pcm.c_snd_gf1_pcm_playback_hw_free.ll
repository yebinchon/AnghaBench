; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.gus_pcm_private* }
%struct.gus_pcm_private = type { i64, %struct.TYPE_4__*, i32** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_gf1_pcm_playback_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_playback_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.gus_pcm_private*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %8, i32 0, i32 0
  %10 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %9, align 8
  store %struct.gus_pcm_private* %10, %struct.gus_pcm_private** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %11)
  %13 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %14 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %13, i32 0, i32 2
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %21 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %24 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @snd_gf1_free_voice(%struct.TYPE_4__* %22, i32* %27)
  %29 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %30 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %29, i32 0, i32 2
  %31 = load i32**, i32*** %30, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %19, %1
  %34 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %35 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %34, i32 0, i32 2
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %42 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %45 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @snd_gf1_free_voice(%struct.TYPE_4__* %43, i32* %48)
  %50 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %51 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %40, %33
  %55 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %56 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %61 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %66 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @snd_gf1_mem_free(i32* %64, i64 %67)
  %69 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %70 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %59, %54
  ret i32 0
}

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_gf1_free_voice(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @snd_gf1_mem_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
