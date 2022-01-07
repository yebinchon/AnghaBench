; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_correct_pin_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_correct_pin_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@snd_hda_correct_pin_ctl.cap_lists = internal global [4 x [2 x i32]] [[2 x i32] [i32 131, i32 135], [2 x i32] [i32 129, i32 133], [2 x i32] [i32 130, i32 134], [2 x i32] [i32 128, i32 132]], align 16
@AC_PINCTL_OUT_EN = common dso_local global i32 0, align 4
@AC_PINCAP_OUT = common dso_local global i32 0, align 4
@AC_PINCTL_HP_EN = common dso_local global i32 0, align 4
@AC_PINCAP_HP_DRV = common dso_local global i32 0, align 4
@AC_PINCTL_IN_EN = common dso_local global i32 0, align 4
@AC_PINCAP_IN = common dso_local global i32 0, align 4
@AC_PINCTL_VREFEN = common dso_local global i32 0, align 4
@AC_PINCAP_VREF = common dso_local global i32 0, align 4
@AC_PINCAP_VREF_SHIFT = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_HIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_correct_pin_ctl(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %134

15:                                               ; preds = %3
  %16 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %4, align 4
  br label %134

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @AC_PINCTL_OUT_EN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @AC_PINCAP_OUT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @AC_PINCTL_OUT_EN, align 4
  %35 = load i32, i32* @AC_PINCTL_HP_EN, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %56

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @AC_PINCTL_HP_EN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @AC_PINCAP_HP_DRV, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @AC_PINCTL_HP_EN, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %45, %40
  br label %56

56:                                               ; preds = %55, %33
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @AC_PINCTL_IN_EN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %132

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @AC_PINCAP_IN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @AC_PINCTL_IN_EN, align 4
  %69 = load i32, i32* @AC_PINCTL_VREFEN, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %131

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @AC_PINCAP_VREF, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @AC_PINCAP_VREF_SHIFT, align 4
  %79 = lshr i32 %77, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @AC_PINCTL_VREFEN, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %120, %74
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ARRAY_SIZE(i32** bitcast ([4 x [2 x i32]]* @snd_hda_correct_pin_ctl.cap_lists to i32**))
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* @snd_hda_correct_pin_ctl.cap_lists, i64 0, i64 %90
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %88, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %87
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* @snd_hda_correct_pin_ctl.cap_lists, i64 0, i64 %98
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %96, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @ARRAY_SIZE(i32** bitcast ([4 x [2 x i32]]* @snd_hda_correct_pin_ctl.cap_lists to i32**))
  %107 = sub nsw i32 %106, 1
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @AC_PINCTL_VREF_HIZ, align 4
  store i32 %110, i32* %10, align 4
  br label %118

111:                                              ; preds = %104
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* @snd_hda_correct_pin_ctl.cap_lists, i64 0, i64 %114
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %115, i64 0, i64 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %111, %109
  br label %119

119:                                              ; preds = %118, %95, %87
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %83

123:                                              ; preds = %83
  %124 = load i32, i32* @AC_PINCTL_VREFEN, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %123, %67
  br label %132

132:                                              ; preds = %131, %57
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %21, %14
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
