; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_audio_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_audio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@HCFG = common dso_local global i64 0, align 8
@HCFG_AUDIOENABLE = common dso_local global i32 0, align 4
@A_IOCFG = common dso_local global i64 0, align 8
@INTE_PCIERRORENABLE = common dso_local global i32 0, align 4
@HCFG_GPINPUT0 = common dso_local global i32 0, align 4
@HCFG_GPINPUT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*)* @snd_emu10k1_audio_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_audio_enable(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca %struct.snd_emu10k1*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %2, align 8
  %3 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %4 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @HCFG, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @inl(i64 %7)
  %9 = load i32, i32* @HCFG_AUDIOENABLE, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %12 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HCFG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outl(i32 %10, i64 %15)
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %110

24:                                               ; preds = %1
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %109

32:                                               ; preds = %24
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %108

37:                                               ; preds = %32
  %38 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @A_IOCFG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inl(i64 %42)
  %44 = and i32 %43, -69
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @A_IOCFG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outl(i32 %44, i64 %49)
  %51 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %52 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %37
  %58 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %59 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @A_IOCFG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @inl(i64 %62)
  %64 = or i32 %63, 64
  %65 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @A_IOCFG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outl(i32 %64, i64 %69)
  br label %107

71:                                               ; preds = %37
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %73 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %71
  %79 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @A_IOCFG, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @inl(i64 %83)
  %85 = or i32 %84, 96
  %86 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %87 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @A_IOCFG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outl(i32 %85, i64 %90)
  br label %106

92:                                               ; preds = %71
  %93 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %94 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @A_IOCFG, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @inl(i64 %97)
  %99 = or i32 %98, 128
  %100 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %101 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @A_IOCFG, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outl(i32 %99, i64 %104)
  br label %106

106:                                              ; preds = %92, %78
  br label %107

107:                                              ; preds = %106, %57
  br label %108

108:                                              ; preds = %107, %32
  br label %109

109:                                              ; preds = %108, %31
  br label %110

110:                                              ; preds = %109, %23
  %111 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %112 = load i32, i32* @INTE_PCIERRORENABLE, align 4
  %113 = call i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1* %111, i32 %112)
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
