; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_capture_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_capture_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.ua101* }
%struct.ua101 = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@CAPTURE_URB_COMPLETED = common dso_local global i32 0, align 4
@USB_CAPTURE_RUNNING = common dso_local global i32 0, align 4
@DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @capture_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.ua101*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.ua101*, %struct.ua101** %7, align 8
  store %struct.ua101* %8, %struct.ua101** %4, align 8
  %9 = load %struct.ua101*, %struct.ua101** %4, align 8
  %10 = getelementptr inbounds %struct.ua101, %struct.ua101* %9, i32 0, i32 3
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ua101*, %struct.ua101** %4, align 8
  %13 = call i32 @start_usb_capture(%struct.ua101* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ua101*, %struct.ua101** %4, align 8
  %15 = getelementptr inbounds %struct.ua101, %struct.ua101* %14, i32 0, i32 3
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %65

21:                                               ; preds = %1
  %22 = load %struct.ua101*, %struct.ua101** %4, align 8
  %23 = getelementptr inbounds %struct.ua101, %struct.ua101* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CAPTURE_URB_COMPLETED, align 4
  %26 = load %struct.ua101*, %struct.ua101** %4, align 8
  %27 = getelementptr inbounds %struct.ua101, %struct.ua101* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @USB_CAPTURE_RUNNING, align 4
  %32 = load %struct.ua101*, %struct.ua101** %4, align 8
  %33 = getelementptr inbounds %struct.ua101, %struct.ua101* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %30, %21
  %38 = phi i1 [ true, %21 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event(i32 %24, i32 %39)
  %41 = load i32, i32* @DISCONNECTED, align 4
  %42 = load %struct.ua101*, %struct.ua101** %4, align 8
  %43 = getelementptr inbounds %struct.ua101, %struct.ua101* %42, i32 0, i32 1
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %65

49:                                               ; preds = %37
  %50 = load i32, i32* @USB_CAPTURE_RUNNING, align 4
  %51 = load %struct.ua101*, %struct.ua101** %4, align 8
  %52 = getelementptr inbounds %struct.ua101, %struct.ua101* %51, i32 0, i32 1
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %65

58:                                               ; preds = %49
  %59 = load %struct.ua101*, %struct.ua101** %4, align 8
  %60 = getelementptr inbounds %struct.ua101, %struct.ua101* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.ua101*, %struct.ua101** %4, align 8
  %63 = getelementptr inbounds %struct.ua101, %struct.ua101* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %58, %55, %46, %19
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @start_usb_capture(%struct.ua101*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
