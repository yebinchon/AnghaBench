; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_ad1881.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_ad1881.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32*, %struct.TYPE_4__, i8*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i64* }

@patch_ad1881.cfg_idxs = internal constant [3 x [2 x i8]] [[2 x i8] c"\02\01", [2 x i8] c"\00\02", [2 x i8] c"\00\01"], align 1
@AC97_AD_SERIAL_CFG = common dso_local global i32 0, align 4
@AC97_AD_MULTI = common dso_local global i32 0, align 4
@AC97_SCAP_SURROUND_DAC = common dso_local global i32 0, align 4
@AC97_SCAP_CENTER_LFE_DAC = common dso_local global i32 0, align 4
@AC97_AD_CODEC_CFG = common dso_local global i32 0, align 4
@AC97_EXTENDED_ID = common dso_local global i32 0, align 4
@patch_ad1881_build_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_ad1881 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_ad1881(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca [3 x i16], align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %8 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %9 = call i8* @snd_ac97_read(%struct.snd_ac97* %7, i32 %8)
  %10 = ptrtoint i8* %9 to i16
  store i16 %10, i16* %4, align 2
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %12 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %13 = load i16, i16* %4, align 2
  %14 = zext i16 %13 to i32
  %15 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %11, i32 %12, i32 %14)
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %17 = call zeroext i16 @patch_ad1881_unchained(%struct.snd_ac97* %16, i32 0, i32 4096)
  %18 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 0
  store i16 %17, i16* %18, align 2
  %19 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %20 = call zeroext i16 @patch_ad1881_unchained(%struct.snd_ac97* %19, i32 1, i32 16384)
  %21 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 1
  store i16 %20, i16* %21, align 2
  %22 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %23 = call zeroext i16 @patch_ad1881_unchained(%struct.snd_ac97* %22, i32 2, i32 8192)
  %24 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 2
  store i16 %23, i16* %24, align 2
  %25 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 0
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %1
  %30 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 1
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 2
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %114

40:                                               ; preds = %34, %29, %1
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %70, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %46 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %44
  %56 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x [2 x i8]], [3 x [2 x i8]]* @patch_ad1881.cfg_idxs, i64 0, i64 %59
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %60, i64 0, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x [2 x i8]], [3 x [2 x i8]]* @patch_ad1881.cfg_idxs, i64 0, i64 %64
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %65, i64 0, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @patch_ad1881_chained(%struct.snd_ac97* %56, i32 %57, i8 signext %62, i8 signext %67)
  br label %69

69:                                               ; preds = %55, %44
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %41

73:                                               ; preds = %41
  %74 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %75 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load i32, i32* @AC97_AD_MULTI, align 4
  %84 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %85 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @AC97_SCAP_SURROUND_DAC, align 4
  %89 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %90 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %82, %73
  %94 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %95 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %93
  %103 = load i32, i32* @AC97_AD_MULTI, align 4
  %104 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %105 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* @AC97_SCAP_CENTER_LFE_DAC, align 4
  %109 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %110 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %102, %93
  br label %114

114:                                              ; preds = %113, %39
  %115 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %116 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %117 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %115, i32 %116, i32 28672, i32 28672)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %136, %114
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 3
  br i1 %120, label %121, label %139

121:                                              ; preds = %118
  %122 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %123 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %132, %121
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %118

139:                                              ; preds = %118
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %164

142:                                              ; preds = %139
  %143 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %144 = load i32, i32* @AC97_AD_CODEC_CFG, align 4
  %145 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %143, i32 %144, i32 0)
  %146 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %147 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  store i32 0, i32* %151, align 4
  %152 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %153 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  store i32 0, i32* %157, align 4
  %158 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %159 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 0, i32* %163, align 4
  br label %164

164:                                              ; preds = %142, %139
  %165 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %166 = load i32, i32* @AC97_EXTENDED_ID, align 4
  %167 = call i8* @snd_ac97_read(%struct.snd_ac97* %165, i32 %166)
  %168 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %169 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %171 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %164
  %179 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %180 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, -65536
  store i32 %182, i32* %180, align 8
  %183 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %184 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %191 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %178, %164
  %195 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %196 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %195, i32 0, i32 1
  store i32* @patch_ad1881_build_ops, i32** %196, align 8
  ret i32 0
}

declare dso_local i8* @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

declare dso_local zeroext i16 @patch_ad1881_unchained(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @patch_ad1881_chained(%struct.snd_ac97*, i32, i8 signext, i8 signext) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
