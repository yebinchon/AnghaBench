; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd_midi.c_snd_msndmidi_input_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd_midi.c_snd_msndmidi_input_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_msndmidi = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@MIDQ_DATA_BUFF = common dso_local global i32 0, align 4
@JQS_wTail = common dso_local global i32 0, align 4
@JQS_wHead = common dso_local global i32 0, align 4
@MSNDMIDI_MODE_BIT_INPUT_TRIGGER = common dso_local global i32 0, align 4
@JQS_wSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_msndmidi_input_read(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_msndmidi*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.snd_msndmidi*
  store %struct.snd_msndmidi* %9, %struct.snd_msndmidi** %4, align 8
  %10 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %11 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @MIDQ_DATA_BUFF, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %14, i64 %16
  store i8* %17, i8** %5, align 8
  %18 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %19 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %18, i32 0, i32 0
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  br label %22

22:                                               ; preds = %105, %1
  %23 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %24 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @JQS_wTail, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i32 @readw(i32 %29)
  %31 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %32 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @JQS_wHead, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @readw(i32 %37)
  %39 = icmp ne i32 %30, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %22
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %43 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @JQS_wHead, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @readw(i32 %48)
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %41, i64 %51
  %53 = ptrtoint i8* %52 to i32
  %54 = call i32 @readw(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @MSNDMIDI_MODE_BIT_INPUT_TRIGGER, align 4
  %56 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %57 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %56, i32 0, i32 3
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %40
  %61 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %62 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = bitcast i32* %7 to i8*
  %65 = call i32 @snd_rawmidi_receive(i32 %63, i8* %64, i32 1)
  br label %66

66:                                               ; preds = %60, %40
  %67 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %68 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @JQS_wHead, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @readw(i32 %73)
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %78 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @JQS_wSize, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @readw(i32 %83)
  %85 = icmp sgt i32 %76, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %66
  %87 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %88 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @JQS_wHead, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @writew(i32 0, i32 %93)
  br label %105

95:                                               ; preds = %66
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %98 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @JQS_wHead, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @writew(i32 %96, i32 %103)
  br label %105

105:                                              ; preds = %95, %86
  br label %22

106:                                              ; preds = %22
  %107 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %4, align 8
  %108 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %107, i32 0, i32 0
  %109 = load i64, i64* %3, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @snd_rawmidi_receive(i32, i8*, i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
