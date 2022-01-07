; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_slave_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_slave_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mask = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@preferred_formats = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plug_slave_format(i32 %0, %struct.snd_mask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_mask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.snd_mask* %1, %struct.snd_mask** %5, align 8
  %16 = load %struct.snd_mask*, %struct.snd_mask** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @snd_mask_test(%struct.snd_mask* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %3, align 4
  br label %139

22:                                               ; preds = %2
  %23 = load %struct.snd_mask*, %struct.snd_mask** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @snd_pcm_plug_formats(%struct.snd_mask* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %139

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @snd_pcm_format_linear(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %111

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @snd_pcm_format_width(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @snd_pcm_format_unsigned(i32 %37)
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @snd_pcm_format_big_endian(i32 %41)
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %98, %34
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** @preferred_formats, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %45
  %51 = load i32*, i32** @preferred_formats, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load %struct.snd_mask*, %struct.snd_mask** %5, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @snd_mask_test(%struct.snd_mask* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %98

61:                                               ; preds = %50
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @snd_pcm_format_width(i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp uge i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub i32 %68, %69
  store i32 %70, i32* %10, align 4
  br label %76

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub i32 %72, %73
  %75 = add i32 %74, 32
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @snd_pcm_format_unsigned(i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @snd_pcm_format_big_endian(i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %76
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %76
  br label %98

98:                                               ; preds = %97, %60
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %45

101:                                              ; preds = %45
  %102 = load i32, i32* %12, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  br label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  br label %109

109:                                              ; preds = %106, %104
  %110 = phi i32 [ %105, %104 ], [ %108, %106 ]
  store i32 %110, i32* %3, align 4
  br label %139

111:                                              ; preds = %30
  %112 = load i32, i32* %4, align 4
  switch i32 %112, label %136 [
    i32 128, label %113
  ]

113:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %132, %113
  %115 = load i32, i32* %6, align 4
  %116 = load i32*, i32** @preferred_formats, align 8
  %117 = call i32 @ARRAY_SIZE(i32* %116)
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = load i32*, i32** @preferred_formats, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %15, align 4
  %125 = load %struct.snd_mask*, %struct.snd_mask** %5, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i64 @snd_mask_test(%struct.snd_mask* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %3, align 4
  br label %139

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %114

135:                                              ; preds = %114
  br label %136

136:                                              ; preds = %111, %135
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %136, %129, %109, %27, %20
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @snd_mask_test(%struct.snd_mask*, i32) #1

declare dso_local i32 @snd_pcm_plug_formats(%struct.snd_mask*, i32) #1

declare dso_local i64 @snd_pcm_format_linear(i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_pcm_format_unsigned(i32) #1

declare dso_local i32 @snd_pcm_format_big_endian(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
