; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_start_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_start_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@num_audiodevs = common dso_local global i32 0, align 4
@audio_devs = common dso_local global %struct.audio_operations** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMAbuf_start_devices(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio_operations*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %61, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @num_audiodevs, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %64

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %61

16:                                               ; preds = %9
  %17 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %17, i64 %19
  %21 = load %struct.audio_operations*, %struct.audio_operations** %20, align 8
  store %struct.audio_operations* %21, %struct.audio_operations** %3, align 8
  %22 = icmp ne %struct.audio_operations* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %61

24:                                               ; preds = %16
  %25 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %26 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %61

30:                                               ; preds = %24
  %31 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %32 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %61

36:                                               ; preds = %30
  %37 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %38 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %40 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = icmp ne i32 (i32, i32)* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %47 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %53 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %56 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = call i32 %50(i32 %51, i32 %58)
  br label %60

60:                                               ; preds = %45, %36
  br label %61

61:                                               ; preds = %60, %35, %29, %23, %15
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %5

64:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
