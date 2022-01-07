; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1938.c_snd_es1938_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1938.c_snd_es1938_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.es1938 = type { i32, i64, i64, i64 }

@DMAADDR = common dso_local global i32 0, align 4
@DMACOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_es1938_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_es1938_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.es1938*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.es1938* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.es1938* %8, %struct.es1938** %3, align 8
  %9 = load %struct.es1938*, %struct.es1938** %3, align 8
  %10 = load i32, i32* @DMAADDR, align 4
  %11 = call i32 @SLDM_REG(%struct.es1938* %9, i32 %10)
  %12 = call i64 @inl(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.es1938*, %struct.es1938** %3, align 8
  %14 = load i32, i32* @DMACOUNT, align 4
  %15 = call i32 @SLDM_REG(%struct.es1938* %13, i32 %14)
  %16 = call i64 @inw(i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.es1938*, %struct.es1938** %3, align 8
  %18 = getelementptr inbounds %struct.es1938, %struct.es1938* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.es1938*, %struct.es1938** %3, align 8
  %21 = getelementptr inbounds %struct.es1938, %struct.es1938* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add i64 %19, %23
  %25 = load i64, i64* %4, align 8
  %26 = sub i64 %24, %25
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ugt i32 %30, 3
  br i1 %31, label %49, label %32

32:                                               ; preds = %1
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.es1938*, %struct.es1938** %3, align 8
  %35 = getelementptr inbounds %struct.es1938, %struct.es1938* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.es1938*, %struct.es1938** %3, align 8
  %41 = getelementptr inbounds %struct.es1938, %struct.es1938* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.es1938*, %struct.es1938** %3, align 8
  %44 = getelementptr inbounds %struct.es1938, %struct.es1938* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add i64 %42, %46
  %48 = icmp uge i64 %39, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %38, %32, %1
  %50 = load %struct.es1938*, %struct.es1938** %3, align 8
  %51 = getelementptr inbounds %struct.es1938, %struct.es1938* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %4, align 8
  br label %57

53:                                               ; preds = %38
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.es1938*, %struct.es1938** %3, align 8
  %56 = getelementptr inbounds %struct.es1938, %struct.es1938* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.es1938*, %struct.es1938** %3, align 8
  %59 = getelementptr inbounds %struct.es1938, %struct.es1938* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.es1938*, %struct.es1938** %3, align 8
  %65 = getelementptr inbounds %struct.es1938, %struct.es1938* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = lshr i64 %63, %66
  ret i64 %67
}

declare dso_local %struct.es1938* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @inl(i32) #1

declare dso_local i32 @SLDM_REG(%struct.es1938*, i32) #1

declare dso_local i64 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
