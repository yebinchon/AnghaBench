; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_system.c_setheader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_system.c_setheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@announce_port = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_LENGTH_MASK = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_LENGTH_FIXED = common dso_local global i32 0, align 4
@sysclient = common dso_local global i32 0, align 4
@SNDRV_SEQ_ADDRESS_SUBSCRIBERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_event*, i32, i32)* @setheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setheader(%struct.snd_seq_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* @announce_port, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %49

13:                                               ; preds = %3
  %14 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %15 = call i32 @memset(%struct.snd_seq_event* %14, i32 0, i32 40)
  %16 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %19 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_FIXED, align 4
  %23 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %24 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @sysclient, align 4
  %28 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %29 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load i64, i64* @announce_port, align 8
  %32 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %33 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load i32, i32* @SNDRV_SEQ_ADDRESS_SUBSCRIBERS, align 4
  %36 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %37 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %41 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %46 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %13, %10
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.snd_seq_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
