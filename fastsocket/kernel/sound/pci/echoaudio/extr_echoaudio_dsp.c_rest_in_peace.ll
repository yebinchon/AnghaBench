; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_rest_in_peace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_rest_in_peace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"rest_in_peace() open=%x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DSP_VC_GO_COMATOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @rest_in_peace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_in_peace(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %4 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %5 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @DE_ACT(i8* %8)
  %10 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %11 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %12 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @stop_transport(%struct.echoaudio* %10, i32 %13)
  %15 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = call i32 @set_meters_on(%struct.echoaudio* %15, i32 %16)
  %18 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %24 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %26 = load i32, i32* @DSP_VC_GO_COMATOSE, align 4
  %27 = call i32 @send_vector(%struct.echoaudio* %25, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @stop_transport(%struct.echoaudio*, i32) #1

declare dso_local i32 @set_meters_on(%struct.echoaudio*, i32) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
