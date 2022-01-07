; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_sigmatel_9721_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_sigmatel_9721_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i64, i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32)* }

@AC97_SURROUND_MASTER = common dso_local global i32 0, align 4
@AC97_SIGMATEL_MULTICHN = common dso_local global i32 0, align 4
@AC97_SIGMATEL_CIC1 = common dso_local global i32 0, align 4
@AC97_SIGMATEL_CIC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*)* @sigmatel_9721_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigmatel_9721_init(%struct.ac97_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ac97_codec*, align 8
  store %struct.ac97_codec* %0, %struct.ac97_codec** %3, align 8
  %4 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %5 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %11 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %10, i32 0, i32 1
  %12 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %11, align 8
  %13 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %14 = load i32, i32* @AC97_SURROUND_MASTER, align 4
  %15 = call i32 %12(%struct.ac97_codec* %13, i32 %14, i32 0)
  %16 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %17 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %16, i32 0, i32 1
  %18 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %17, align 8
  %19 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %20 = load i32, i32* @AC97_SIGMATEL_MULTICHN, align 4
  %21 = call i32 %18(%struct.ac97_codec* %19, i32 %20, i32 0)
  %22 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %23 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %22, i32 0, i32 1
  %24 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %23, align 8
  %25 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %26 = load i32, i32* @AC97_SIGMATEL_CIC1, align 4
  %27 = call i32 %24(%struct.ac97_codec* %25, i32 %26, i32 43962)
  %28 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %29 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %28, i32 0, i32 2
  %30 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %29, align 8
  %31 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %32 = load i32, i32* @AC97_SIGMATEL_CIC1, align 4
  %33 = call i32 %30(%struct.ac97_codec* %31, i32 %32)
  %34 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %35 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %34, i32 0, i32 1
  %36 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %35, align 8
  %37 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %38 = load i32, i32* @AC97_SIGMATEL_CIC2, align 4
  %39 = call i32 %36(%struct.ac97_codec* %37, i32 %38, i32 14338)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %9, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
