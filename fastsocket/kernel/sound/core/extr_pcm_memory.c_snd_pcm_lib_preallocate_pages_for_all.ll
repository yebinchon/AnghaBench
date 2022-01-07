; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_memory.c_snd_pcm_lib_preallocate_pages_for_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_memory.c_snd_pcm_lib_preallocate_pages_for_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.snd_pcm_substream*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %46, %5
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %25, align 8
  store %struct.snd_pcm_substream* %26, %struct.snd_pcm_substream** %12, align 8
  br label %27

27:                                               ; preds = %41, %18
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %12, align 8
  %29 = icmp ne %struct.snd_pcm_substream* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %31, i32 %32, i8* %33, i64 %34, i64 %35)
  store i32 %36, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %6, align 4
  br label %50

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %12, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %43, align 8
  store %struct.snd_pcm_substream* %44, %struct.snd_pcm_substream** %12, align 8
  br label %27

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %15

49:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
