; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_clients_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_clients_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usX2Ydev = type { i32, i32*, %struct.snd_usX2Y_substream** }
%struct.snd_usX2Y_substream = type { %struct.urb**, i32, i32 }
%struct.urb = type { i64, %struct.snd_usX2Y_substream* }

@.str = private unnamed_addr constant [16 x i8] c"%i %p state=%i\0A\00", align 1
@state_STOPPED = common dso_local global i32 0, align 4
@state_PRERUNNING = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_XRUN = common dso_local global i32 0, align 4
@NRURBS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%i status=%i start_frame=%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usX2Ydev*)* @usX2Y_clients_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usX2Y_clients_stop(%struct.usX2Ydev* %0) #0 {
  %2 = alloca %struct.usX2Ydev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usX2Y_substream*, align 8
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  %7 = alloca %struct.urb*, align 8
  store %struct.usX2Ydev* %0, %struct.usX2Ydev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %13 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %12, i32 0, i32 2
  %14 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %14, i64 %16
  %18 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %17, align 8
  store %struct.snd_usX2Y_substream* %18, %struct.snd_usX2Y_substream** %5, align 8
  %19 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %20 = icmp ne %struct.snd_usX2Y_substream* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %24 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %25 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %24, i32 0, i32 2
  %26 = call i64 @atomic_read(i32* %25)
  %27 = call i32 @snd_printdd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.snd_usX2Y_substream* %23, i64 %26)
  %28 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %28, i32 0, i32 2
  %30 = load i32, i32* @state_STOPPED, align 4
  %31 = call i32 @atomic_set(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %21, %11
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %92, %36
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %95

40:                                               ; preds = %37
  %41 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %42 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %41, i32 0, i32 2
  %43 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %43, i64 %45
  %47 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %46, align 8
  store %struct.snd_usX2Y_substream* %47, %struct.snd_usX2Y_substream** %6, align 8
  %48 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %49 = icmp ne %struct.snd_usX2Y_substream* %48, null
  br i1 %49, label %50, label %91

50:                                               ; preds = %40
  %51 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %52 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %51, i32 0, i32 2
  %53 = call i64 @atomic_read(i32* %52)
  %54 = load i64, i64* @state_PRERUNNING, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %58 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SNDRV_PCM_STATE_XRUN, align 4
  %61 = call i32 @snd_pcm_stop(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %87, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @NRURBS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %69 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %68, i32 0, i32 0
  %70 = load %struct.urb**, %struct.urb*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.urb*, %struct.urb** %70, i64 %72
  %74 = load %struct.urb*, %struct.urb** %73, align 8
  store %struct.urb* %74, %struct.urb** %7, align 8
  %75 = load %struct.urb*, %struct.urb** %7, align 8
  %76 = icmp ne %struct.urb* null, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.urb*, %struct.urb** %7, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 1
  %81 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %80, align 8
  %82 = load %struct.urb*, %struct.urb** %7, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @snd_printdd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %78, %struct.snd_usX2Y_substream* %81, i64 %84)
  br label %86

86:                                               ; preds = %77, %67
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %63

90:                                               ; preds = %63
  br label %91

91:                                               ; preds = %90, %40
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %37

95:                                               ; preds = %37
  %96 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %97 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  %98 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %99 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %98, i32 0, i32 0
  %100 = call i32 @wake_up(i32* %99)
  ret void
}

declare dso_local i32 @snd_printdd(i8*, i32, %struct.snd_usX2Y_substream*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snd_pcm_stop(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
