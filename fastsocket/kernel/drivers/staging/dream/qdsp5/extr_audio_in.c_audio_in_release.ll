; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.audio_in* }
%struct.audio_in = type { i32, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @audio_in_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_in_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.audio_in*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.audio_in*, %struct.audio_in** %7, align 8
  store %struct.audio_in* %8, %struct.audio_in** %5, align 8
  %9 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %10 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %13 = call i32 @audio_in_disable(%struct.audio_in* %12)
  %14 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %15 = call i32 @audio_flush(%struct.audio_in* %14)
  %16 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %17 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @msm_adsp_put(i32* %18)
  %20 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %21 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @msm_adsp_put(i32* %22)
  %24 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %25 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %27 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %29 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %31 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @audio_in_disable(%struct.audio_in*) #1

declare dso_local i32 @audio_flush(%struct.audio_in*) #1

declare dso_local i32 @msm_adsp_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
