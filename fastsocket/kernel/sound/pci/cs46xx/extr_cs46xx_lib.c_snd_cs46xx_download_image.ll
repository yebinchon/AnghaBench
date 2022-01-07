; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_download_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_download_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_cs46xx = type { i32 }

@BA1_MEMORY_COUNT = common dso_local global i32 0, align 4
@BA1Struct = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_cs46xx_download_image(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BA1_MEMORY_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @BA1Struct, i32 0, i32 1), align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @BA1Struct, i32 0, i32 0), align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @BA1Struct, i32 0, i32 0), align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snd_cs46xx_download(%struct.snd_cs46xx* %12, i32* %15, i32 %21, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %11
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %47

32:                                               ; preds = %11
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @BA1Struct, i32 0, i32 0), align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @snd_cs46xx_download(%struct.snd_cs46xx*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
