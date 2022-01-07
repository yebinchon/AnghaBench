; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_hwdep.c_snd_hwdep_llseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_hwdep.c_snd_hwdep_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_hwdep* }
%struct.snd_hwdep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.snd_hwdep.0*, %struct.file.1*, i32, i32)* }
%struct.snd_hwdep.0 = type opaque
%struct.file.1 = type opaque

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @snd_hwdep_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hwdep_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_hwdep*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  store %struct.snd_hwdep* %11, %struct.snd_hwdep** %8, align 8
  %12 = load %struct.snd_hwdep*, %struct.snd_hwdep** %8, align 8
  %13 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.snd_hwdep.0*, %struct.file.1*, i32, i32)*, i32 (%struct.snd_hwdep.0*, %struct.file.1*, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.snd_hwdep.0*, %struct.file.1*, i32, i32)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.snd_hwdep*, %struct.snd_hwdep** %8, align 8
  %19 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.snd_hwdep.0*, %struct.file.1*, i32, i32)*, i32 (%struct.snd_hwdep.0*, %struct.file.1*, i32, i32)** %20, align 8
  %22 = load %struct.snd_hwdep*, %struct.snd_hwdep** %8, align 8
  %23 = bitcast %struct.snd_hwdep* %22 to %struct.snd_hwdep.0*
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = bitcast %struct.file* %24 to %struct.file.1*
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 %21(%struct.snd_hwdep.0* %23, %struct.file.1* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
