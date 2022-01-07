; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_mtpav.c_snd_mtpav_inmidi_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_mtpav.c_snd_mtpav_inmidi_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpav = type { i64, i32, %struct.mtpav_port* }
%struct.mtpav_port = type { i32, i32 }

@MTPAV_PIDX_BROADCAST = common dso_local global i32 0, align 4
@MTPAV_MODE_INPUT_TRIGGERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtpav*, i32)* @snd_mtpav_inmidi_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mtpav_inmidi_process(%struct.mtpav* %0, i32 %1) #0 {
  %3 = alloca %struct.mtpav*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtpav_port*, align 8
  store %struct.mtpav* %0, %struct.mtpav** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %7 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %11 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %12, 2
  %14 = load i32, i32* @MTPAV_PIDX_BROADCAST, align 4
  %15 = add nsw i32 %13, %14
  %16 = icmp sgt i32 %9, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %20 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %19, i32 0, i32 2
  %21 = load %struct.mtpav_port*, %struct.mtpav_port** %20, align 8
  %22 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %23 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %21, i64 %24
  store %struct.mtpav_port* %25, %struct.mtpav_port** %5, align 8
  %26 = load %struct.mtpav_port*, %struct.mtpav_port** %5, align 8
  %27 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MTPAV_MODE_INPUT_TRIGGERED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load %struct.mtpav_port*, %struct.mtpav_port** %5, align 8
  %34 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_rawmidi_receive(i32 %35, i32* %4, i32 1)
  br label %37

37:                                               ; preds = %17, %32, %18
  ret void
}

declare dso_local i32 @snd_rawmidi_receive(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
