; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_playback_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_playback_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32 }
%struct.ct_atc_pcm = type { %struct.TYPE_5__*, %struct.src* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.src = type { i32, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.src*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_playback_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_playback_position(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %10 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %11 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %10, i32 0, i32 1
  %12 = load %struct.src*, %struct.src** %11, align 8
  store %struct.src* %12, %struct.src** %6, align 8
  %13 = load %struct.src*, %struct.src** %6, align 8
  %14 = icmp ne %struct.src* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.src*, %struct.src** %6, align 8
  %18 = getelementptr inbounds %struct.src, %struct.src* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (%struct.src*)*, i32 (%struct.src*)** %20, align 8
  %22 = load %struct.src*, %struct.src** %6, align 8
  %23 = call i32 %21(%struct.src* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %25 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.src*, %struct.src** %6, align 8
  %30 = getelementptr inbounds %struct.src, %struct.src* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.src*, %struct.src** %6, align 8
  %33 = getelementptr inbounds %struct.src, %struct.src* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %31, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %41

39:                                               ; preds = %16
  %40 = load i32, i32* %8, align 4
  br label %42

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 8, %41 ]
  %44 = mul nsw i32 128, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %51 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %49, %54
  %56 = load i32, i32* %7, align 4
  %57 = srem i32 %55, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %42, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
