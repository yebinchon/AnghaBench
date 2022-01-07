; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_mixer.c_ca0106_set_i2c_capture_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_mixer.c_ca0106_set_i2c_capture_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca0106 = type { i32**, i64 }

@ADC_MUX = common dso_local global i32 0, align 4
@ADC_ATTEN_ADCL = common dso_local global i32 0, align 4
@ADC_ATTEN_ADCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ca0106*, i32, i32)* @ca0106_set_i2c_capture_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0106_set_i2c_capture_source(%struct.snd_ca0106* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ca0106*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %11 = load i32, i32* @ADC_MUX, align 4
  %12 = call i32 @snd_ca0106_i2c_write(%struct.snd_ca0106* %10, i32 %11, i32 0)
  %13 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32*, i32** %24, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34, %3
  %39 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %40 = load i32, i32* @ADC_ATTEN_ADCL, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 255
  %43 = call i32 @snd_ca0106_i2c_write(%struct.snd_ca0106* %39, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %55 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32*, i32** %56, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %44
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66, %44
  %71 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %72 = load i32, i32* @ADC_ATTEN_ADCR, align 4
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, 255
  %75 = call i32 @snd_ca0106_i2c_write(%struct.snd_ca0106* %71, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %66
  %77 = load i32, i32* %5, align 4
  %78 = shl i32 1, %77
  store i32 %78, i32* %9, align 4
  %79 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %80 = load i32, i32* @ADC_MUX, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @snd_ca0106_i2c_write(%struct.snd_ca0106* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %86 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  ret void
}

declare dso_local i32 @snd_ca0106_i2c_write(%struct.snd_ca0106*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
