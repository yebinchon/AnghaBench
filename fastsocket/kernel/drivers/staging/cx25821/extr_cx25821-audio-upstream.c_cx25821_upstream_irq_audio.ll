; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audio-upstream.c_cx25821_upstream_irq_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audio-upstream.c_cx25821_upstream_irq_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i64, %struct.sram_channel* }
%struct.sram_channel = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cx25821_upstream_irq_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25821_upstream_irq_audio(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cx25821_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sram_channel*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.cx25821_dev*
  store %struct.cx25821_dev* %12, %struct.cx25821_dev** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %14 = icmp ne %struct.cx25821_dev* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %18 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %17, i32 0, i32 1
  %19 = load %struct.sram_channel*, %struct.sram_channel** %18, align 8
  %20 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %21 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %19, i64 %22
  store %struct.sram_channel* %23, %struct.sram_channel** %10, align 8
  %24 = load %struct.sram_channel*, %struct.sram_channel** %10, align 8
  %25 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @cx_read(i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.sram_channel*, %struct.sram_channel** %10, align 8
  %29 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @cx_read(i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %16
  %35 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %36 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %37 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @cx25821_audio_upstream_irq(%struct.cx25821_dev* %35, i64 %38, i64 %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %34, %16
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %46 = call i32 @cx25821_stop_upstream_audio(%struct.cx25821_dev* %45)
  br label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @IRQ_RETVAL(i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @cx_read(i32) #1

declare dso_local i32 @cx25821_audio_upstream_irq(%struct.cx25821_dev*, i64, i64) #1

declare dso_local i32 @cx25821_stop_upstream_audio(%struct.cx25821_dev*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
