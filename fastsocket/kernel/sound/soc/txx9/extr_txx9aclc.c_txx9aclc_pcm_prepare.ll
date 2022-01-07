; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/txx9/extr_txx9aclc.c_txx9aclc_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/txx9/extr_txx9aclc.c_txx9aclc_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.txx9aclc_dmadata* }
%struct.txx9aclc_dmadata = type { i32, i32, i32, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @txx9aclc_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txx9aclc_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.txx9aclc_dmadata*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %8, i32 0, i32 1
  %10 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %9, align 8
  store %struct.txx9aclc_dmadata* %10, %struct.txx9aclc_dmadata** %4, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %15 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %16)
  %18 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %19 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %21 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %20)
  %22 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %23 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %25 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %28 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %33 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 1
  %36 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %37 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %39 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %38, i32 0, i32 3
  store i32 2, i32* %39, align 4
  br label %55

40:                                               ; preds = %1
  %41 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %42 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %45 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %47 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %50 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %48, %51
  %53 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %54 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %40, %31
  %56 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %57 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %4, align 8
  %59 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  ret i32 0
}

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
