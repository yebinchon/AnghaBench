; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_free_pipes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_free_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32 }
%struct.audiopipe = type { i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"free_pipes: Pipe %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PIPE_STATE_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, %struct.audiopipe*)* @free_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_pipes(%struct.echoaudio* %0, %struct.audiopipe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca %struct.audiopipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store %struct.audiopipe* %1, %struct.audiopipe** %5, align 8
  %8 = load %struct.audiopipe*, %struct.audiopipe** %5, align 8
  %9 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @DE_ACT(i8* %12)
  %14 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %15 = load %struct.audiopipe*, %struct.audiopipe** %5, align 8
  %16 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @is_pipe_allocated(%struct.echoaudio* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load %struct.audiopipe*, %struct.audiopipe** %5, align 8
  %29 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PIPE_STATE_STOPPED, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @snd_BUG_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %71

39:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.audiopipe*, %struct.audiopipe** %5, align 8
  %43 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.audiopipe*, %struct.audiopipe** %5, align 8
  %48 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = shl i32 1, %51
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load i32, i32* %6, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %62 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %6, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %68 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %58, %36, %24
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @is_pipe_allocated(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
