; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pcm.c_line6_cleanup_pcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pcm.c_line6_cleanup_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32 }
%struct.snd_line6_pcm = type { i64*, i64* }

@LINE6_ISO_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm*)* @line6_cleanup_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_cleanup_pcm(%struct.snd_pcm* %0) #0 {
  %2 = alloca %struct.snd_pcm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_line6_pcm*, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %2, align 8
  %5 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %6 = call %struct.snd_line6_pcm* @snd_pcm_chip(%struct.snd_pcm* %5)
  store %struct.snd_line6_pcm* %6, %struct.snd_line6_pcm** %4, align 8
  %7 = load i32, i32* @LINE6_ISO_BUFFERS, align 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %64, %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %8
  %13 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %14 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %12
  %22 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %23 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @usb_kill_urb(i64 %28)
  %30 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %31 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @usb_free_urb(i64 %36)
  br label %38

38:                                               ; preds = %21, %12
  %39 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %40 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %38
  %48 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %49 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @usb_kill_urb(i64 %54)
  %56 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %57 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @usb_free_urb(i64 %62)
  br label %64

64:                                               ; preds = %47, %38
  br label %8

65:                                               ; preds = %8
  ret void
}

declare dso_local %struct.snd_line6_pcm* @snd_pcm_chip(%struct.snd_pcm*) #1

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @usb_free_urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
