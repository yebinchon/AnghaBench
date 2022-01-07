; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_ad1881_chained.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_ad1881_chained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64*, i64* }

@AC97_AD_SERIAL_CFG = common dso_local global i32 0, align 4
@AC97_AD_CODEC_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i32, i32, i32)* @patch_ad1881_chained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patch_ad1881_chained(%struct.snd_ac97* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %4
  %20 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19, %4
  store i32 -1, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %31
  %43 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42, %31
  store i32 -1, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %123

61:                                               ; preds = %57, %54
  %62 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %63 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %64 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %65 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %62, i32 %63, i32 28672, i64 %72)
  %74 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %75 = load i32, i32* @AC97_AD_CODEC_CFG, align 4
  %76 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %74, i32 %75, i32 2)
  %77 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %78 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 2, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %61
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @patch_ad1881_chained1(%struct.snd_ac97* %91, i32 %92, i32 0)
  br label %114

94:                                               ; preds = %87
  %95 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @patch_ad1881_chained1(%struct.snd_ac97* %95, i32 %96, i32 6)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i64 @patch_ad1881_chained1(%struct.snd_ac97* %100, i32 %101, i32 0)
  br label %113

103:                                              ; preds = %94
  %104 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @patch_ad1881_chained1(%struct.snd_ac97* %104, i32 %105, i32 6)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i64 @patch_ad1881_chained1(%struct.snd_ac97* %109, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %108, %103
  br label %113

113:                                              ; preds = %112, %99
  br label %114

114:                                              ; preds = %113, %90
  br label %123

115:                                              ; preds = %61
  %116 = load i32, i32* %8, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @patch_ad1881_chained1(%struct.snd_ac97* %119, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %118, %115
  br label %123

123:                                              ; preds = %60, %122, %114
  ret void
}

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i64) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

declare dso_local i64 @patch_ad1881_chained1(%struct.snd_ac97*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
