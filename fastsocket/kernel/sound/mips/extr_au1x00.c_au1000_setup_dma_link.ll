; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_au1000_setup_dma_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_au1000_setup_dma_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_stream = type { i32, i32, %struct.au1000_period*, %struct.snd_pcm_substream* }
%struct.au1000_period = type { %struct.au1000_period*, i8*, i8* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_stream*, i32, i32)* @au1000_setup_dma_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_setup_dma_link(%struct.audio_stream* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca %struct.au1000_period*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.audio_stream* %0, %struct.audio_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %14 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %13, i32 0, i32 3
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %14, align 8
  store %struct.snd_pcm_substream* %15, %struct.snd_pcm_substream** %8, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %9, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @virt_to_phys(i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %24 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %30 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %116

35:                                               ; preds = %28, %3
  %36 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %37 = call i32 @au1000_release_dma_link(%struct.audio_stream* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %40 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %43 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kmalloc(i32 24, i32 %44)
  %46 = bitcast i8* %45 to %struct.au1000_period*
  %47 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %48 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %47, i32 0, i32 2
  store %struct.au1000_period* %46, %struct.au1000_period** %48, align 8
  %49 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %50 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %49, i32 0, i32 2
  %51 = load %struct.au1000_period*, %struct.au1000_period** %50, align 8
  %52 = icmp ne %struct.au1000_period* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %35
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %116

56:                                               ; preds = %35
  %57 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %58 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %57, i32 0, i32 2
  %59 = load %struct.au1000_period*, %struct.au1000_period** %58, align 8
  store %struct.au1000_period* %59, %struct.au1000_period** %10, align 8
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %107, %56
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %110

64:                                               ; preds = %60
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %6, align 4
  %68 = mul i32 %66, %67
  %69 = zext i32 %68 to i64
  %70 = add i64 %65, %69
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.au1000_period*, %struct.au1000_period** %10, align 8
  %73 = getelementptr inbounds %struct.au1000_period, %struct.au1000_period* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %6, align 4
  %77 = mul i32 %75, %76
  %78 = sub i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.au1000_period*, %struct.au1000_period** %10, align 8
  %82 = getelementptr inbounds %struct.au1000_period, %struct.au1000_period* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub i32 %84, 1
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %64
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i8* @kmalloc(i32 24, i32 %88)
  %90 = bitcast i8* %89 to %struct.au1000_period*
  %91 = load %struct.au1000_period*, %struct.au1000_period** %10, align 8
  %92 = getelementptr inbounds %struct.au1000_period, %struct.au1000_period* %91, i32 0, i32 0
  store %struct.au1000_period* %90, %struct.au1000_period** %92, align 8
  %93 = load %struct.au1000_period*, %struct.au1000_period** %10, align 8
  %94 = getelementptr inbounds %struct.au1000_period, %struct.au1000_period* %93, i32 0, i32 0
  %95 = load %struct.au1000_period*, %struct.au1000_period** %94, align 8
  %96 = icmp ne %struct.au1000_period* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %87
  %98 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %99 = call i32 @au1000_release_dma_link(%struct.audio_stream* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %116

102:                                              ; preds = %87
  %103 = load %struct.au1000_period*, %struct.au1000_period** %10, align 8
  %104 = getelementptr inbounds %struct.au1000_period, %struct.au1000_period* %103, i32 0, i32 0
  %105 = load %struct.au1000_period*, %struct.au1000_period** %104, align 8
  store %struct.au1000_period* %105, %struct.au1000_period** %10, align 8
  br label %106

106:                                              ; preds = %102, %64
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %60

110:                                              ; preds = %60
  %111 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %112 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %111, i32 0, i32 2
  %113 = load %struct.au1000_period*, %struct.au1000_period** %112, align 8
  %114 = load %struct.au1000_period*, %struct.au1000_period** %10, align 8
  %115 = getelementptr inbounds %struct.au1000_period, %struct.au1000_period* %114, i32 0, i32 0
  store %struct.au1000_period* %113, %struct.au1000_period** %115, align 8
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %110, %97, %53, %34
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @au1000_release_dma_link(%struct.audio_stream*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
