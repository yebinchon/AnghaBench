; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_event.c_chn_common_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_event.c_chn_common_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32 }
%union.evrec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.snd_seq_event = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_PGMCHANGE = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_CONTROLLER = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_PITCHBEND = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_CHANPRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*)* @chn_common_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chn_common_event(%struct.seq_oss_devinfo* %0, %union.evrec* %1, %struct.snd_seq_event* %2) #0 {
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
  br label %97

16:                                               ; preds = %3
  %17 = load %union.evrec*, %union.evrec** %6, align 8
  %18 = bitcast %union.evrec* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %94 [
    i32 129, label %21
    i32 130, label %38
    i32 128, label %59
    i32 131, label %77
  ]

21:                                               ; preds = %16
  %22 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %23 = load %union.evrec*, %union.evrec** %6, align 8
  %24 = bitcast %union.evrec* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SNDRV_SEQ_EVENT_PGMCHANGE, align 4
  %28 = load %union.evrec*, %union.evrec** %6, align 8
  %29 = bitcast %union.evrec* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %union.evrec*, %union.evrec** %6, align 8
  %33 = bitcast %union.evrec* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %37 = call i32 @set_control_event(%struct.seq_oss_devinfo* %22, i32 %26, i32 %27, i32 %31, i32 0, i32 %35, %struct.snd_seq_event* %36)
  store i32 %37, i32* %4, align 4
  br label %97

38:                                               ; preds = %16
  %39 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %40 = load %union.evrec*, %union.evrec** %6, align 8
  %41 = bitcast %union.evrec* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SNDRV_SEQ_EVENT_CONTROLLER, align 4
  %45 = load %union.evrec*, %union.evrec** %6, align 8
  %46 = bitcast %union.evrec* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %union.evrec*, %union.evrec** %6, align 8
  %50 = bitcast %union.evrec* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %union.evrec*, %union.evrec** %6, align 8
  %54 = bitcast %union.evrec* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %58 = call i32 @set_control_event(%struct.seq_oss_devinfo* %39, i32 %43, i32 %44, i32 %48, i32 %52, i32 %56, %struct.snd_seq_event* %57)
  store i32 %58, i32* %4, align 4
  br label %97

59:                                               ; preds = %16
  %60 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %61 = load %union.evrec*, %union.evrec** %6, align 8
  %62 = bitcast %union.evrec* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SNDRV_SEQ_EVENT_PITCHBEND, align 4
  %66 = load %union.evrec*, %union.evrec** %6, align 8
  %67 = bitcast %union.evrec* %66 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %union.evrec*, %union.evrec** %6, align 8
  %71 = bitcast %union.evrec* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 8192
  %75 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %76 = call i32 @set_control_event(%struct.seq_oss_devinfo* %60, i32 %64, i32 %65, i32 %69, i32 0, i32 %74, %struct.snd_seq_event* %75)
  store i32 %76, i32* %4, align 4
  br label %97

77:                                               ; preds = %16
  %78 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %79 = load %union.evrec*, %union.evrec** %6, align 8
  %80 = bitcast %union.evrec* %79 to %struct.TYPE_2__*
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SNDRV_SEQ_EVENT_CHANPRESS, align 4
  %84 = load %union.evrec*, %union.evrec** %6, align 8
  %85 = bitcast %union.evrec* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %union.evrec*, %union.evrec** %6, align 8
  %89 = bitcast %union.evrec* %88 to %struct.TYPE_2__*
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %93 = call i32 @set_control_event(%struct.seq_oss_devinfo* %78, i32 %82, i32 %83, i32 %87, i32 0, i32 %91, %struct.snd_seq_event* %92)
  store i32 %93, i32* %4, align 4
  br label %97

94:                                               ; preds = %16
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %77, %59, %38, %21, %13
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @set_control_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, i32, %struct.snd_seq_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
