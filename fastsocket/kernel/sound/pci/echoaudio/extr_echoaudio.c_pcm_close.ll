; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.echoaudio = type { i32, i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"pcm_close\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"pcm_close  oc=%d  cs=%d  rs=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"pcm_close2 oc=%d  cs=%d  rs=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.echoaudio* %6, %struct.echoaudio** %3, align 8
  %7 = call i32 @DE_ACT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %9 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %8, i32 0, i32 2
  %10 = call i32 @atomic_dec(i32* %9)
  %11 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %12 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %11, i32 0, i32 2
  %13 = call i32 @atomic_read(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %16 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @DE_ACT(i8* %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %37 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %40 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @DE_ACT(i8* %42)
  ret i32 0
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
