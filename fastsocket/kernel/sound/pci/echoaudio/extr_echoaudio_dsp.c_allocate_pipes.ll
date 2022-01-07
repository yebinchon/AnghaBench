; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_allocate_pipes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_allocate_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64* }
%struct.audiopipe = type { i32, i32, i64*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"allocate_pipes: ch=%d int=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"allocate_pipes: channel already open\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@PIPE_STATE_STOPPED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"allocate_pipes: ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, %struct.audiopipe*, i32, i32)* @allocate_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_pipes(%struct.echoaudio* %0, %struct.audiopipe* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca %struct.audiopipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.echoaudio* %0, %struct.echoaudio** %6, align 8
  store %struct.audiopipe* %1, %struct.audiopipe** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @DE_ACT(i8* %16)
  %18 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %98

25:                                               ; preds = %4
  store i8 1, i8* %12, align 1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  %34 = shl i32 1, %33
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %26

40:                                               ; preds = %26
  %41 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %42 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = call i32 @DE_ACT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %98

51:                                               ; preds = %40
  %52 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %53 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %62 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i8, i8* %12, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %51
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %70 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %51
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %76 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %79 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @PIPE_STATE_STOPPED, align 4
  %81 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %82 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %84 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %92 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %91, i32 0, i32 2
  store i64* %90, i64** %92, align 8
  %93 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %94 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  store i64 0, i64* %95, align 8
  %96 = call i32 @DE_ACT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %73, %47, %22
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @DE_ACT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
