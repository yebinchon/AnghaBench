; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm.c_snd_pcm_detach_substream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm.c_snd_pcm_detach_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_pcm_runtime* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_runtime*, %struct.TYPE_3__, i64, i64, i32 (%struct.snd_pcm_runtime*)* }
%struct.TYPE_3__ = type { %struct.snd_pcm_runtime* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pcm_detach_substream(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %50

8:                                                ; preds = %1
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %3, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 4
  %14 = load i32 (%struct.snd_pcm_runtime*)*, i32 (%struct.snd_pcm_runtime*)** %13, align 8
  %15 = icmp ne i32 (%struct.snd_pcm_runtime*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 4
  %19 = load i32 (%struct.snd_pcm_runtime*)*, i32 (%struct.snd_pcm_runtime*)** %18, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %21 = call i32 %19(%struct.snd_pcm_runtime* %20)
  br label %22

22:                                               ; preds = %16, %8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @PAGE_ALIGN(i32 4)
  %28 = call i32 @snd_free_pages(i8* %26, i32 %27)
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @PAGE_ALIGN(i32 4)
  %34 = call i32 @snd_free_pages(i8* %32, i32 %33)
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %37, align 8
  %39 = call i32 @kfree(%struct.snd_pcm_runtime* %38)
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %41 = call i32 @kfree(%struct.snd_pcm_runtime* %40)
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 1
  store %struct.snd_pcm_runtime* null, %struct.snd_pcm_runtime** %43, align 8
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %22, %7
  ret void
}

declare dso_local i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_free_pages(i8*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @kfree(%struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
