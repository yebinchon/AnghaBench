; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_capture_getrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_capture_getrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32, i32, i64 }

@RME96_AR_ANALOG = common dso_local global i32 0, align 4
@RME96_AR_BITPOS_F0 = common dso_local global i32 0, align 4
@RME96_AR_BITPOS_F1 = common dso_local global i32 0, align 4
@RME96_AR_BITPOS_F2 = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@RME96_RCR_LOCK = common dso_local global i32 0, align 4
@RME96_RCR_T_OUT = common dso_local global i32 0, align 4
@RME96_RCR_VERF = common dso_local global i32 0, align 4
@RME96_RCR_BITPOS_F0 = common dso_local global i32 0, align 4
@RME96_RCR_BITPOS_F1 = common dso_local global i32 0, align 4
@RME96_RCR_BITPOS_F2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme96*, i32*)* @snd_rme96_capture_getrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_capture_getrate(%struct.rme96* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rme96*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rme96* %0, %struct.rme96** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.rme96*, %struct.rme96** %4, align 8
  %10 = getelementptr inbounds %struct.rme96, %struct.rme96* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RME96_AR_ANALOG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %2
  %16 = load %struct.rme96*, %struct.rme96** %4, align 8
  %17 = getelementptr inbounds %struct.rme96, %struct.rme96* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RME96_AR_BITPOS_F0, align 4
  %20 = ashr i32 %18, %19
  %21 = and i32 %20, 1
  %22 = load %struct.rme96*, %struct.rme96** %4, align 8
  %23 = getelementptr inbounds %struct.rme96, %struct.rme96* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RME96_AR_BITPOS_F1, align 4
  %26 = ashr i32 %24, %25
  %27 = and i32 %26, 1
  %28 = shl i32 %27, 1
  %29 = add nsw i32 %21, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %34 [
    i32 1, label %31
    i32 2, label %32
    i32 3, label %33
  ]

31:                                               ; preds = %15
  store i32 32000, i32* %7, align 4
  br label %35

32:                                               ; preds = %15
  store i32 44100, i32* %7, align 4
  br label %35

33:                                               ; preds = %15
  store i32 48000, i32* %7, align 4
  br label %35

34:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %122

35:                                               ; preds = %33, %32, %31
  %36 = load %struct.rme96*, %struct.rme96** %4, align 8
  %37 = getelementptr inbounds %struct.rme96, %struct.rme96* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RME96_AR_BITPOS_F2, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 1
  br label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i32 [ %44, %42 ], [ %46, %45 ]
  store i32 %48, i32* %3, align 4
  br label %122

49:                                               ; preds = %2
  %50 = load %struct.rme96*, %struct.rme96** %4, align 8
  %51 = getelementptr inbounds %struct.rme96, %struct.rme96* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  %56 = load %struct.rme96*, %struct.rme96** %4, align 8
  %57 = getelementptr inbounds %struct.rme96, %struct.rme96* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.rme96*, %struct.rme96** %4, align 8
  %59 = getelementptr inbounds %struct.rme96, %struct.rme96* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RME96_RCR_LOCK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %49
  %65 = load i32*, i32** %5, align 8
  store i32 1, i32* %65, align 4
  %66 = load %struct.rme96*, %struct.rme96** %4, align 8
  %67 = getelementptr inbounds %struct.rme96, %struct.rme96* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RME96_RCR_T_OUT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 48000, i32* %3, align 4
  br label %122

73:                                               ; preds = %64
  store i32 44100, i32* %3, align 4
  br label %122

74:                                               ; preds = %49
  %75 = load %struct.rme96*, %struct.rme96** %4, align 8
  %76 = getelementptr inbounds %struct.rme96, %struct.rme96* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RME96_RCR_VERF, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %122

82:                                               ; preds = %74
  %83 = load %struct.rme96*, %struct.rme96** %4, align 8
  %84 = getelementptr inbounds %struct.rme96, %struct.rme96* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RME96_RCR_BITPOS_F0, align 4
  %87 = ashr i32 %85, %86
  %88 = and i32 %87, 1
  %89 = load %struct.rme96*, %struct.rme96** %4, align 8
  %90 = getelementptr inbounds %struct.rme96, %struct.rme96* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RME96_RCR_BITPOS_F1, align 4
  %93 = ashr i32 %91, %92
  %94 = and i32 %93, 1
  %95 = shl i32 %94, 1
  %96 = add nsw i32 %88, %95
  %97 = load %struct.rme96*, %struct.rme96** %4, align 8
  %98 = getelementptr inbounds %struct.rme96, %struct.rme96* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RME96_RCR_BITPOS_F2, align 4
  %101 = ashr i32 %99, %100
  %102 = and i32 %101, 1
  %103 = shl i32 %102, 2
  %104 = add nsw i32 %96, %103
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  switch i32 %105, label %120 [
    i32 0, label %106
    i32 3, label %115
    i32 4, label %116
    i32 5, label %117
    i32 6, label %118
    i32 7, label %119
  ]

106:                                              ; preds = %82
  %107 = load %struct.rme96*, %struct.rme96** %4, align 8
  %108 = getelementptr inbounds %struct.rme96, %struct.rme96* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @RME96_RCR_T_OUT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 64000, i32* %3, align 4
  br label %122

114:                                              ; preds = %106
  store i32 -1, i32* %3, align 4
  br label %122

115:                                              ; preds = %82
  store i32 96000, i32* %3, align 4
  br label %122

116:                                              ; preds = %82
  store i32 88200, i32* %3, align 4
  br label %122

117:                                              ; preds = %82
  store i32 48000, i32* %3, align 4
  br label %122

118:                                              ; preds = %82
  store i32 44100, i32* %3, align 4
  br label %122

119:                                              ; preds = %82
  store i32 32000, i32* %3, align 4
  br label %122

120:                                              ; preds = %82
  br label %121

121:                                              ; preds = %120
  store i32 -1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %119, %118, %117, %116, %115, %114, %113, %81, %73, %72, %47, %34
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
