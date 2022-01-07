; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_set_output_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_set_output_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_2__*, i8** }
%struct.TYPE_2__ = type { i8** }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i64, i8*)* @set_output_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_output_gain(%struct.echoaudio* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.echoaudio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %10 = call i64 @num_busses_out(%struct.echoaudio* %9)
  %11 = icmp uge i64 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %20 = call i64 @wait_handshake(%struct.echoaudio* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %18
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8* %26, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %34 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %32, i8** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %25, %22, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @num_busses_out(%struct.echoaudio*) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
