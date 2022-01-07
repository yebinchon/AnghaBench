; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es1688 = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es1688*)* @snd_es1688_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_free(%struct.snd_es1688* %0) #0 {
  %2 = alloca %struct.snd_es1688*, align 8
  store %struct.snd_es1688* %0, %struct.snd_es1688** %2, align 8
  %3 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %4 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %9 = call i32 @snd_es1688_init(%struct.snd_es1688* %8, i32 0)
  %10 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %11 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @release_and_free_resource(i64 %12)
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %16 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %21 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %24 = bitcast %struct.snd_es1688* %23 to i8*
  %25 = call i32 @free_irq(i64 %22, i8* %24)
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %28 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %33 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @disable_dma(i64 %34)
  %36 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %37 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @free_dma(i64 %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %42 = call i32 @kfree(%struct.snd_es1688* %41)
  ret i32 0
}

declare dso_local i32 @snd_es1688_init(%struct.snd_es1688*, i32) #1

declare dso_local i32 @release_and_free_resource(i64) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @disable_dma(i64) #1

declare dso_local i32 @free_dma(i64) #1

declare dso_local i32 @kfree(%struct.snd_es1688*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
