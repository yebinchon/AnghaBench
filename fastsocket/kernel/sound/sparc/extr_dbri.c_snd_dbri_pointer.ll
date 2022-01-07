; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_snd_dbri_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_snd_dbri_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_dbri = type { i32 }
%struct.dbri_streaminfo = type { i32 }

@D_USR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"I/O pointer: %ld frames of %ld.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_dbri_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dbri_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_dbri*, align 8
  %4 = alloca %struct.dbri_streaminfo*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_dbri* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_dbri* %7, %struct.snd_dbri** %3, align 8
  %8 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.dbri_streaminfo* @DBRI_STREAM(%struct.snd_dbri* %8, %struct.snd_pcm_substream* %9)
  store %struct.dbri_streaminfo* %10, %struct.dbri_streaminfo** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %15 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bytes_to_frames(%struct.TYPE_2__* %13, i32 %16)
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %17, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @D_USR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dprintk(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.snd_dbri* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.dbri_streaminfo* @DBRI_STREAM(%struct.snd_dbri*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
