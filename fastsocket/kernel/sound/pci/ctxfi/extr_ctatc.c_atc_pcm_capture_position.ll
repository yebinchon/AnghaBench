; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32 }
%struct.ct_atc_pcm = type { %struct.TYPE_4__*, %struct.src* }
%struct.TYPE_4__ = type { i32 }
%struct.src = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.src*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_capture_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_capture_position(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.src*, align 8
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %7 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %8 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %7, i32 0, i32 1
  %9 = load %struct.src*, %struct.src** %8, align 8
  store %struct.src* %9, %struct.src** %6, align 8
  %10 = load %struct.src*, %struct.src** %6, align 8
  %11 = icmp ne %struct.src* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.src*, %struct.src** %6, align 8
  %15 = getelementptr inbounds %struct.src, %struct.src* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.src*)*, i32 (%struct.src*)** %17, align 8
  %19 = load %struct.src*, %struct.src** %6, align 8
  %20 = call i32 %18(%struct.src* %19)
  %21 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %22 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %20, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
