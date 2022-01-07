; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_decode_spdif_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_decode_spdif_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_aes_iec958 = type { i32* }

@IEC958_AES0_PRO_EMPHASIS_5015 = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS_32000 = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_5015 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_aes_iec958*, i32)* @decode_spdif_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_spdif_bits(%struct.snd_aes_iec958* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_aes_iec958*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_aes_iec958* %0, %struct.snd_aes_iec958** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %6 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @memset(i32* %7, i32 0, i32 8)
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 3
  %11 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %12 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS_5015, align 4
  %24 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %25 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %23
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %22, %18
  %31 = load i32, i32* %4, align 4
  %32 = lshr i32 %31, 12
  %33 = and i32 %32, 7
  switch i32 %33, label %43 [
    i32 0, label %34
    i32 2, label %35
  ]

34:                                               ; preds = %30
  br label %51

35:                                               ; preds = %30
  %36 = load i32, i32* @IEC958_AES0_PRO_FS_32000, align 4
  %37 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %38 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  br label %51

43:                                               ; preds = %30
  %44 = load i32, i32* @IEC958_AES0_PRO_FS_48000, align 4
  %45 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %46 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %43, %35, %34
  br label %91

52:                                               ; preds = %2
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 4
  %55 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %56 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %52
  %65 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  %66 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %67 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %64, %52
  %73 = load i32, i32* %4, align 4
  %74 = lshr i32 %73, 4
  %75 = and i32 %74, 63
  %76 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %77 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %4, align 4
  %83 = lshr i32 %82, 12
  %84 = and i32 %83, 7
  %85 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %86 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %72, %51
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
