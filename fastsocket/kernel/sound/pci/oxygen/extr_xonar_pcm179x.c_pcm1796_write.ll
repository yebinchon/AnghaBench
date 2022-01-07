; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_pcm1796_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_pcm1796_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.TYPE_2__, %struct.xonar_pcm179x* }
%struct.TYPE_2__ = type { i32 }
%struct.xonar_pcm179x = type { i64** }

@OXYGEN_FUNCTION_2WIRE_SPI_MASK = common dso_local global i32 0, align 4
@OXYGEN_FUNCTION_SPI = common dso_local global i32 0, align 4
@PCM1796_REG_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32, i64, i64)* @pcm1796_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm1796_write(%struct.oxygen* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xonar_pcm179x*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %11 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %10, i32 0, i32 1
  %12 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %11, align 8
  store %struct.xonar_pcm179x* %12, %struct.xonar_pcm179x** %9, align 8
  %13 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %14 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @OXYGEN_FUNCTION_2WIRE_SPI_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @OXYGEN_FUNCTION_SPI, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @pcm1796_write_spi(%struct.oxygen* %22, i32 %23, i64 %24, i64 %25)
  br label %33

27:                                               ; preds = %4
  %28 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @pcm1796_write_i2c(%struct.oxygen* %28, i32 %29, i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @PCM1796_REG_BASE, align 8
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %9, align 8
  %39 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %38, i32 0, i32 0
  %40 = load i64**, i64*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64*, i64** %40, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = call i32 @ARRAY_SIZE(i64* %44)
  %46 = icmp ult i32 %37, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %33
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %9, align 8
  %50 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %49, i32 0, i32 0
  %51 = load i64**, i64*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64*, i64** %51, i64 %53
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @PCM1796_REG_BASE, align 8
  %58 = sub i64 %56, %57
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  store i64 %48, i64* %59, align 8
  br label %60

60:                                               ; preds = %47, %33
  ret void
}

declare dso_local i32 @pcm1796_write_spi(%struct.oxygen*, i32, i64, i64) #1

declare dso_local i32 @pcm1796_write_i2c(%struct.oxygen*, i32, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
