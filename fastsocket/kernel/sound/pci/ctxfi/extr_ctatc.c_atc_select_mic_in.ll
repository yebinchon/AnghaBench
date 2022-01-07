; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_atc_select_mic_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_atc_select_mic_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { %struct.src**, %struct.ct_mixer*, %struct.hw* }
%struct.src = type { i32 }
%struct.ct_mixer = type { i32 (%struct.ct_mixer*, i32, i32*)*, i32 (%struct.ct_mixer*, i32, i32*)* }
%struct.hw = type { i32 (%struct.hw*, i32)*, i64 (%struct.hw*, i32)* }

@ADC_MICIN = common dso_local global i32 0, align 4
@MIX_LINE_IN = common dso_local global i32 0, align 4
@MIX_MIC_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*)* @atc_select_mic_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_select_mic_in(%struct.ct_atc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.ct_mixer*, align 8
  %6 = alloca %struct.src*, align 8
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  %7 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %8 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %7, i32 0, i32 2
  %9 = load %struct.hw*, %struct.hw** %8, align 8
  store %struct.hw* %9, %struct.hw** %4, align 8
  %10 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %11 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %10, i32 0, i32 1
  %12 = load %struct.ct_mixer*, %struct.ct_mixer** %11, align 8
  store %struct.ct_mixer* %12, %struct.ct_mixer** %5, align 8
  %13 = load %struct.hw*, %struct.hw** %4, align 8
  %14 = getelementptr inbounds %struct.hw, %struct.hw* %13, i32 0, i32 1
  %15 = load i64 (%struct.hw*, i32)*, i64 (%struct.hw*, i32)** %14, align 8
  %16 = load %struct.hw*, %struct.hw** %4, align 8
  %17 = load i32, i32* @ADC_MICIN, align 4
  %18 = call i64 %15(%struct.hw* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %23 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %22, i32 0, i32 1
  %24 = load i32 (%struct.ct_mixer*, i32, i32*)*, i32 (%struct.ct_mixer*, i32, i32*)** %23, align 8
  %25 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %26 = load i32, i32* @MIX_LINE_IN, align 4
  %27 = call i32 %24(%struct.ct_mixer* %25, i32 %26, i32* null)
  %28 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %29 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %28, i32 0, i32 0
  %30 = load i32 (%struct.ct_mixer*, i32, i32*)*, i32 (%struct.ct_mixer*, i32, i32*)** %29, align 8
  %31 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %32 = load i32, i32* @MIX_LINE_IN, align 4
  %33 = call i32 %30(%struct.ct_mixer* %31, i32 %32, i32* null)
  %34 = load %struct.hw*, %struct.hw** %4, align 8
  %35 = getelementptr inbounds %struct.hw, %struct.hw* %34, i32 0, i32 0
  %36 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %35, align 8
  %37 = load %struct.hw*, %struct.hw** %4, align 8
  %38 = load i32, i32* @ADC_MICIN, align 4
  %39 = call i32 %36(%struct.hw* %37, i32 %38)
  %40 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %41 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %40, i32 0, i32 0
  %42 = load %struct.src**, %struct.src*** %41, align 8
  %43 = getelementptr inbounds %struct.src*, %struct.src** %42, i64 2
  %44 = load %struct.src*, %struct.src** %43, align 8
  store %struct.src* %44, %struct.src** %6, align 8
  %45 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %46 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %45, i32 0, i32 1
  %47 = load i32 (%struct.ct_mixer*, i32, i32*)*, i32 (%struct.ct_mixer*, i32, i32*)** %46, align 8
  %48 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %49 = load i32, i32* @MIX_MIC_IN, align 4
  %50 = load %struct.src*, %struct.src** %6, align 8
  %51 = getelementptr inbounds %struct.src, %struct.src* %50, i32 0, i32 0
  %52 = call i32 %47(%struct.ct_mixer* %48, i32 %49, i32* %51)
  %53 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %54 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %53, i32 0, i32 0
  %55 = load %struct.src**, %struct.src*** %54, align 8
  %56 = getelementptr inbounds %struct.src*, %struct.src** %55, i64 3
  %57 = load %struct.src*, %struct.src** %56, align 8
  store %struct.src* %57, %struct.src** %6, align 8
  %58 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %59 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %58, i32 0, i32 0
  %60 = load i32 (%struct.ct_mixer*, i32, i32*)*, i32 (%struct.ct_mixer*, i32, i32*)** %59, align 8
  %61 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %62 = load i32, i32* @MIX_MIC_IN, align 4
  %63 = load %struct.src*, %struct.src** %6, align 8
  %64 = getelementptr inbounds %struct.src, %struct.src* %63, i32 0, i32 0
  %65 = call i32 %60(%struct.ct_mixer* %61, i32 %62, i32* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %21, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
