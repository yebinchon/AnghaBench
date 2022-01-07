; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_dapm_set_pga.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_dapm_set_pga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32, i32, i64, %struct.snd_kcontrol_new* }
%struct.snd_kcontrol_new = type { i64 }
%struct.soc_mixer_control = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, i32)* @dapm_set_pga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dapm_set_pga(%struct.snd_soc_dapm_widget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca %struct.soc_mixer_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 4
  %18 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %17, align 8
  store %struct.snd_kcontrol_new* %18, %struct.snd_kcontrol_new** %6, align 8
  %19 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %165

27:                                               ; preds = %23, %2
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %165

36:                                               ; preds = %32, %27
  %37 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %164

41:                                               ; preds = %36
  %42 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %43 = icmp ne %struct.snd_kcontrol_new* %42, null
  br i1 %43, label %44, label %164

44:                                               ; preds = %41
  %45 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %46 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %48, %struct.soc_mixer_control** %7, align 8
  %49 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %50 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %53 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %56 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @fls(i32 %58)
  %60 = shl i32 1, %59
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %63 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %44
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %86, %70
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %80 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @snd_soc_update_bits(i32 %81, i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %13, align 4
  br label %72

89:                                               ; preds = %72
  br label %109

90:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %99 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @snd_soc_update_bits(i32 %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %91

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108, %89
  %110 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %111 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %163

112:                                              ; preds = %44
  %113 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %114 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @snd_soc_read(i32 %115, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %9, align 4
  %120 = ashr i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %120, %121
  %123 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %124 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  store i32 %122, i32* %15, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %140, %127
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %134 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @snd_soc_update_bits(i32 %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %128

143:                                              ; preds = %128
  br label %160

144:                                              ; preds = %112
  br label %145

145:                                              ; preds = %156, %144
  %146 = load i32, i32* %15, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %150 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i32 @snd_soc_update_bits(i32 %151, i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %15, align 4
  br label %145

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %143
  %161 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %162 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  br label %163

163:                                              ; preds = %160, %109
  br label %164

164:                                              ; preds = %163, %41, %36
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %35, %26
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
