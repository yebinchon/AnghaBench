; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i32, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"Stop DSP...\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Stopped.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"MMIO freed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Chip freed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @snd_echo_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_echo_free(%struct.echoaudio* %0) #0 {
  %2 = alloca %struct.echoaudio*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %2, align 8
  %3 = call i32 @DE_INIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %5 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %10 = call i32 @rest_in_peace(%struct.echoaudio* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = call i32 @DE_INIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %22 = call i32 @free_irq(i64 %20, %struct.echoaudio* %21)
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 4
  %31 = call i32 @snd_dma_free_pages(i32* %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %34 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %39 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @iounmap(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %49 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @release_and_free_resource(i64 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = call i32 @DE_INIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pci_disable_device(i32 %56)
  %58 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %59 = call i32 @kfree(%struct.echoaudio* %58)
  %60 = call i32 @DE_INIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DE_INIT(i8*) #1

declare dso_local i32 @rest_in_peace(%struct.echoaudio*) #1

declare dso_local i32 @free_irq(i64, %struct.echoaudio*) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_and_free_resource(i64) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
