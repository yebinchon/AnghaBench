; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_event.c_chn_voice_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_event.c_chn_voice_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32 }
%union.evrec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.snd_seq_event = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_KEYPRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*)* @chn_voice_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chn_voice_event(%struct.seq_oss_devinfo* %0, %union.evrec* %1, %struct.snd_seq_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_devinfo*, align 8
  %6 = alloca %union.evrec*, align 8
  %7 = alloca %struct.snd_seq_event*, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %5, align 8
  store %union.evrec* %1, %union.evrec** %6, align 8
  store %struct.snd_seq_event* %2, %struct.snd_seq_event** %7, align 8
  %8 = load %union.evrec*, %union.evrec** %6, align 8
  %9 = bitcast %union.evrec* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 32
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %85

16:                                               ; preds = %3
  %17 = load %union.evrec*, %union.evrec** %6, align 8
  %18 = bitcast %union.evrec* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %82 [
    i32 128, label %21
    i32 129, label %41
    i32 130, label %61
  ]

21:                                               ; preds = %16
  %22 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %23 = load %union.evrec*, %union.evrec** %6, align 8
  %24 = bitcast %union.evrec* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %union.evrec*, %union.evrec** %6, align 8
  %28 = bitcast %union.evrec* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %union.evrec*, %union.evrec** %6, align 8
  %32 = bitcast %union.evrec* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %union.evrec*, %union.evrec** %6, align 8
  %36 = bitcast %union.evrec* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %40 = call i32 @note_on_event(%struct.seq_oss_devinfo* %22, i32 %26, i32 %30, i32 %34, i32 %38, %struct.snd_seq_event* %39)
  store i32 %40, i32* %4, align 4
  br label %85

41:                                               ; preds = %16
  %42 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %43 = load %union.evrec*, %union.evrec** %6, align 8
  %44 = bitcast %union.evrec* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %union.evrec*, %union.evrec** %6, align 8
  %48 = bitcast %union.evrec* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %union.evrec*, %union.evrec** %6, align 8
  %52 = bitcast %union.evrec* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %union.evrec*, %union.evrec** %6, align 8
  %56 = bitcast %union.evrec* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %60 = call i32 @note_off_event(%struct.seq_oss_devinfo* %42, i32 %46, i32 %50, i32 %54, i32 %58, %struct.snd_seq_event* %59)
  store i32 %60, i32* %4, align 4
  br label %85

61:                                               ; preds = %16
  %62 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %63 = load %union.evrec*, %union.evrec** %6, align 8
  %64 = bitcast %union.evrec* %63 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SNDRV_SEQ_EVENT_KEYPRESS, align 4
  %68 = load %union.evrec*, %union.evrec** %6, align 8
  %69 = bitcast %union.evrec* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %union.evrec*, %union.evrec** %6, align 8
  %73 = bitcast %union.evrec* %72 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %union.evrec*, %union.evrec** %6, align 8
  %77 = bitcast %union.evrec* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %81 = call i32 @set_note_event(%struct.seq_oss_devinfo* %62, i32 %66, i32 %67, i32 %71, i32 %75, i32 %79, %struct.snd_seq_event* %80)
  store i32 %81, i32* %4, align 4
  br label %85

82:                                               ; preds = %16
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %61, %41, %21, %13
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @note_on_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @note_off_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @set_note_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, i32, %struct.snd_seq_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
