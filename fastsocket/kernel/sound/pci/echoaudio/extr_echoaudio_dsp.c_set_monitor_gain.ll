; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_set_monitor_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_set_monitor_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_2__*, i8*** }
%struct.TYPE_2__ = type { i8** }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i64, i64, i8*)* @set_monitor_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_monitor_gain(%struct.echoaudio* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %12 = call i64 @num_busses_out(%struct.echoaudio* %11)
  %13 = icmp uge i64 %10, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %17 = call i64 @num_busses_in(%struct.echoaudio* %16)
  %18 = icmp uge i64 %15, %17
  br label %19

19:                                               ; preds = %14, %4
  %20 = phi i1 [ true, %4 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %55

27:                                               ; preds = %19
  %28 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %29 = call i64 @wait_handshake(%struct.echoaudio* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %55

34:                                               ; preds = %27
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %37 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %36, i32 0, i32 1
  %38 = load i8***, i8**** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8**, i8*** %38, i64 %39
  %41 = load i8**, i8*** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8* %35, i8** %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %46 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @monitor_index(%struct.echoaudio* %50, i64 %51, i64 %52)
  %54 = getelementptr inbounds i8*, i8** %49, i64 %53
  store i8* %44, i8** %54, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %34, %31, %24
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @num_busses_out(%struct.echoaudio*) #1

declare dso_local i64 @num_busses_in(%struct.echoaudio*) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i64 @monitor_index(%struct.echoaudio*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
