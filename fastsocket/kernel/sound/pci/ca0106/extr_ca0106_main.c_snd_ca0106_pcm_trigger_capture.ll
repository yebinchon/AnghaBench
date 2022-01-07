; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_trigger_capture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_trigger_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_ca0106_pcm* }
%struct.snd_ca0106_pcm = type { i32, i32 }
%struct.snd_ca0106 = type { i32 }

@EXTENDED_INT_MASK = common dso_local global i32 0, align 4
@BASIC_INTERRUPT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ca0106_pcm_trigger_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_pcm_trigger_capture(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ca0106*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_ca0106_pcm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_ca0106* %11, %struct.snd_ca0106** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %16, align 8
  store %struct.snd_ca0106_pcm* %17, %struct.snd_ca0106_pcm** %7, align 8
  %18 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %7, align 8
  %19 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %66 [
    i32 129, label %22
    i32 128, label %43
  ]

22:                                               ; preds = %2
  %23 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %24 = load i32, i32* @EXTENDED_INT_MASK, align 4
  %25 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %26 = load i32, i32* @EXTENDED_INT_MASK, align 4
  %27 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %25, i32 %26, i32 0)
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1114112, %28
  %30 = or i32 %27, %29
  %31 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %23, i32 %24, i32 0, i32 %30)
  %32 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %33 = load i32, i32* @BASIC_INTERRUPT, align 4
  %34 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %35 = load i32, i32* @BASIC_INTERRUPT, align 4
  %36 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %34, i32 %35, i32 0)
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 256, %37
  %39 = or i32 %36, %38
  %40 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %32, i32 %33, i32 0, i32 %39)
  %41 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %7, align 8
  %42 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %69

43:                                               ; preds = %2
  %44 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %45 = load i32, i32* @BASIC_INTERRUPT, align 4
  %46 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %47 = load i32, i32* @BASIC_INTERRUPT, align 4
  %48 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %46, i32 %47, i32 0)
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 256, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  %53 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %44, i32 %45, i32 0, i32 %52)
  %54 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %55 = load i32, i32* @EXTENDED_INT_MASK, align 4
  %56 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %57 = load i32, i32* @EXTENDED_INT_MASK, align 4
  %58 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %56, i32 %57, i32 0)
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 1114112, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %58, %61
  %63 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %54, i32 %55, i32 0, i32 %62)
  %64 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %7, align 8
  %65 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  br label %69

66:                                               ; preds = %2
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %43, %22
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ca0106_ptr_write(%struct.snd_ca0106*, i32, i32, i32) #1

declare dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
