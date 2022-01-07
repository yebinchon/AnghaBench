; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi = type { {}*, i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { {}* }

@register_mutex = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i64 0, align 8
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi*)* @snd_rawmidi_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rawmidi_free(%struct.snd_rawmidi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi*, align 8
  store %struct.snd_rawmidi* %0, %struct.snd_rawmidi** %3, align 8
  %4 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %5 = icmp ne %struct.snd_rawmidi* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

7:                                                ; preds = %1
  %8 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @snd_info_free_entry(i32* %10)
  %12 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %13 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = call i32 @mutex_lock(i32* @register_mutex)
  %15 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %7
  %20 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %21 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.snd_rawmidi*)**
  %25 = load i32 (%struct.snd_rawmidi*)*, i32 (%struct.snd_rawmidi*)** %24, align 8
  %26 = icmp ne i32 (%struct.snd_rawmidi*)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %29 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.snd_rawmidi*)**
  %33 = load i32 (%struct.snd_rawmidi*)*, i32 (%struct.snd_rawmidi*)** %32, align 8
  %34 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %35 = call i32 %33(%struct.snd_rawmidi* %34)
  br label %36

36:                                               ; preds = %27, %19, %7
  %37 = call i32 @mutex_unlock(i32* @register_mutex)
  %38 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %39 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @snd_rawmidi_free_substreams(i32* %42)
  %44 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %45 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = call i32 @snd_rawmidi_free_substreams(i32* %48)
  %50 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %51 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.snd_rawmidi*)**
  %53 = load i32 (%struct.snd_rawmidi*)*, i32 (%struct.snd_rawmidi*)** %52, align 8
  %54 = icmp ne i32 (%struct.snd_rawmidi*)* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %36
  %56 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %57 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i32 (%struct.snd_rawmidi*)**
  %59 = load i32 (%struct.snd_rawmidi*)*, i32 (%struct.snd_rawmidi*)** %58, align 8
  %60 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %61 = call i32 %59(%struct.snd_rawmidi* %60)
  br label %62

62:                                               ; preds = %55, %36
  %63 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %64 = call i32 @kfree(%struct.snd_rawmidi* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %6
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @snd_info_free_entry(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_rawmidi_free_substreams(i32*) #1

declare dso_local i32 @kfree(%struct.snd_rawmidi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
