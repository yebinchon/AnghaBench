; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_capture_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_capture_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32*, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i64, i32* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_cs46xx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64, i64 }

@CS46XX_FRAGS = common dso_local global i64 0, align 8
@snd_cs46xx_capture_ops = common dso_local global i32 0, align 4
@snd_cs46xx_capture_indirect_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_cs46xx_capture_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_capture_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_cs46xx*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_cs46xx* %10, %struct.snd_cs46xx** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %7, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CS46XX_FRAGS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %24 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %22, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %30)
  br label %32

32:                                               ; preds = %29, %19
  %33 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %34 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %41 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %48 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 0
  store i32* @snd_cs46xx_capture_ops, i32** %55, align 8
  br label %84

56:                                               ; preds = %2
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %61 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %59, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 3
  store i32* null, i32** %68, align 8
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %66, %56
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %75 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %76 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %75)
  %77 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %74, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %85

81:                                               ; preds = %73
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %82, i32 0, i32 0
  store i32* @snd_cs46xx_capture_indirect_ops, i32** %83, align 8
  br label %84

84:                                               ; preds = %81, %32
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
