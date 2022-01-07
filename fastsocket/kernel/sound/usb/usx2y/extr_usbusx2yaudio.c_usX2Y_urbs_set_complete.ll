; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_urbs_set_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_urbs_set_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usX2Ydev = type { %struct.snd_usX2Y_substream** }
%struct.snd_usX2Y_substream = type { %struct.urb** }
%struct.urb = type { void (%struct.urb*)* }

@NRURBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usX2Ydev*, void (%struct.urb*)*)* @usX2Y_urbs_set_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usX2Y_urbs_set_complete(%struct.usX2Ydev* %0, void (%struct.urb*)* %1) #0 {
  %3 = alloca %struct.usX2Ydev*, align 8
  %4 = alloca void (%struct.urb*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usX2Y_substream*, align 8
  %8 = alloca %struct.urb*, align 8
  store %struct.usX2Ydev* %0, %struct.usX2Ydev** %3, align 8
  store void (%struct.urb*)* %1, void (%struct.urb*)** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %14 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %13, i32 0, i32 0
  %15 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %15, i64 %17
  %19 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %18, align 8
  store %struct.snd_usX2Y_substream* %19, %struct.snd_usX2Y_substream** %7, align 8
  %20 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %21 = icmp ne %struct.snd_usX2Y_substream* null, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NRURBS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %29 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %28, i32 0, i32 0
  %30 = load %struct.urb**, %struct.urb*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.urb*, %struct.urb** %30, i64 %32
  %34 = load %struct.urb*, %struct.urb** %33, align 8
  store %struct.urb* %34, %struct.urb** %8, align 8
  %35 = load %struct.urb*, %struct.urb** %8, align 8
  %36 = icmp ne %struct.urb* null, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load void (%struct.urb*)*, void (%struct.urb*)** %4, align 8
  %39 = load %struct.urb*, %struct.urb** %8, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  store void (%struct.urb*)* %38, void (%struct.urb*)** %40, align 8
  br label %41

41:                                               ; preds = %37, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %23

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45, %12
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %9

50:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
