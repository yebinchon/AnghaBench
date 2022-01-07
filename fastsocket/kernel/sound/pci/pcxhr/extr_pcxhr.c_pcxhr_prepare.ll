; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.snd_pcxhr = type { %struct.pcxhr_mgr* }
%struct.pcxhr_mgr = type { i64, i32 }

@.str = private unnamed_addr constant [63 x i8] c"pcxhr_prepare : period_size(%lx) periods(%x) buffer_size(%lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcxhr_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcxhr*, align 8
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_pcxhr* %7, %struct.snd_pcxhr** %3, align 8
  %8 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %8, i32 0, i32 0
  %10 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %9, align 8
  store %struct.pcxhr_mgr* %10, %struct.pcxhr_mgr** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @snd_printdd(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20, i32 %25)
  %27 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %28 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  br label %30

30:                                               ; preds = %1
  %31 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %32 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %30
  %41 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @pcxhr_set_clock(%struct.pcxhr_mgr* %41, i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %68

51:                                               ; preds = %40
  %52 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %53 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %58 = call i32 @pcxhr_hardware_timer(%struct.pcxhr_mgr* %57, i32 1)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %66 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %59, %30
  br label %68

68:                                               ; preds = %67, %50
  %69 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %70 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_printdd(i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcxhr_set_clock(%struct.pcxhr_mgr*, i64) #1

declare dso_local i32 @pcxhr_hardware_timer(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
