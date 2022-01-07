; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, i32, i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@sound_dmap_flag = common dso_local global i64 0, align 8
@DMAP_KEEP_ON_CLOSE = common dso_local global i64 0, align 8
@DMA_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMAbuf_deinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio_operations*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %4, i64 %6
  %8 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  store %struct.audio_operations* %8, %struct.audio_operations** %3, align 8
  %9 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %10 = icmp ne %struct.audio_operations* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = load i64, i64* @sound_dmap_flag, align 8
  %14 = load i64, i64* @DMAP_KEEP_ON_CLOSE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %18 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sound_free_dmap(i32 %19)
  %21 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %22 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DMA_DUPLEX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %29 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sound_free_dmap(i32 %30)
  br label %32

32:                                               ; preds = %27, %16
  br label %33

33:                                               ; preds = %11, %32, %12
  ret void
}

declare dso_local i32 @sound_free_dmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
