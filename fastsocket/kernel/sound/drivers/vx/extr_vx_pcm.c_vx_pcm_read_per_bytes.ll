; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_read_per_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_read_per_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_runtime = type { i64 }
%struct.vx_pipe = type { i32, i32 }

@RXH = common dso_local global i32 0, align 4
@RXM = common dso_local global i32 0, align 4
@RXL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*)* @vx_pcm_read_per_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_pcm_read_per_bytes(%struct.vx_core* %0, %struct.snd_pcm_runtime* %1, %struct.vx_pipe* %2) #0 {
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.vx_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %5, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %6, align 8
  %9 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %10 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %8, align 8
  %19 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %20 = load i32, i32* @RXH, align 4
  %21 = call i8* @vx_inb(%struct.vx_core* %19, i32 %20)
  %22 = ptrtoint i8* %21 to i8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %8, align 8
  store i8 %22, i8* %23, align 1
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %28 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %31, %3
  %37 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %38 = load i32, i32* @RXM, align 4
  %39 = call i8* @vx_inb(%struct.vx_core* %37, i32 %38)
  %40 = ptrtoint i8* %39 to i8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  store i8 %40, i8* %41, align 1
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %46 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %49, %36
  %55 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %56 = load i32, i32* @RXL, align 4
  %57 = call i8* @vx_inb(%struct.vx_core* %55, i32 %56)
  %58 = ptrtoint i8* %57 to i8
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %64 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %8, align 8
  br label %72

72:                                               ; preds = %67, %54
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %75 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  ret void
}

declare dso_local i8* @vx_inb(%struct.vx_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
