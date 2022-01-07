; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_mixer.c_pas_mixer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_mixer.c_pas_mixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [70 x i8] c"static int pas_mixer_set(int whichDev = %d, unsigned int level = %X)\0A\00", align 1
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@rec_devices = common dso_local global i32 0, align 4
@levels = common dso_local global i32* null, align 8
@POSSIBLE_RECORDING_DEVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pas_mixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pas_mixer_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = call i32 @DEB(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 127
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 32512
  %20 = lshr i32 %19, 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* @rec_devices, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 32, i32* %11, align 4
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %30
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %170 [
    i32 128, label %35
    i32 139, label %43
    i32 129, label %51
    i32 130, label %59
    i32 134, label %68
    i32 140, label %77
    i32 131, label %86
    i32 136, label %95
    i32 138, label %104
    i32 135, label %113
    i32 137, label %122
    i32 133, label %130
    i32 132, label %138
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mixer_output(i32 %36, i32 %37, i32 63, i32 1, i32 0)
  %39 = load i32*, i32** @levels, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %173

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mixer_output(i32 %44, i32 %45, i32 12, i32 3, i32 0)
  %47 = load i32*, i32** @levels, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  br label %173

51:                                               ; preds = %33
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @mixer_output(i32 %52, i32 %53, i32 12, i32 4, i32 0)
  %55 = load i32*, i32** @levels, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %173

59:                                               ; preds = %33
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @mixer_output(i32 %60, i32 %61, i32 31, i32 16, i32 %62)
  %64 = load i32*, i32** @levels, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %173

68:                                               ; preds = %33
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @mixer_output(i32 %69, i32 %70, i32 31, i32 21, i32 %71)
  %73 = load i32*, i32** @levels, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %173

77:                                               ; preds = %33
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @mixer_output(i32 %78, i32 %79, i32 31, i32 23, i32 %80)
  %82 = load i32*, i32** @levels, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  br label %173

86:                                               ; preds = %33
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @mixer_output(i32 %87, i32 %88, i32 31, i32 22, i32 %89)
  %91 = load i32*, i32** @levels, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  br label %173

95:                                               ; preds = %33
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @mixer_output(i32 %96, i32 %97, i32 31, i32 18, i32 %98)
  %100 = load i32*, i32** @levels, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  br label %173

104:                                              ; preds = %33
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @mixer_output(i32 %105, i32 %106, i32 31, i32 19, i32 %107)
  %109 = load i32*, i32** @levels, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  br label %173

113:                                              ; preds = %33
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @mixer_output(i32 %114, i32 %115, i32 31, i32 20, i32 %116)
  %118 = load i32*, i32** @levels, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  br label %173

122:                                              ; preds = %33
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @mixer_output(i32 %123, i32 %124, i32 31, i32 17, i32 0)
  %126 = load i32*, i32** @levels, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  br label %173

130:                                              ; preds = %33
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @mixer_output(i32 %131, i32 %132, i32 15, i32 2, i32 0)
  %134 = load i32*, i32** @levels, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  br label %173

138:                                              ; preds = %33
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @POSSIBLE_RECORDING_DEVICES, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @rec_devices, align 4
  %144 = xor i32 %142, %143
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* @rec_devices, align 4
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %165, %138
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = shl i32 1, %152
  %154 = and i32 %151, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load i32, i32* %10, align 4
  %158 = load i32*, i32** @levels, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @pas_mixer_set(i32 %157, i32 %162)
  br label %164

164:                                              ; preds = %156, %150
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %146

168:                                              ; preds = %146
  %169 = load i32, i32* @rec_devices, align 4
  store i32 %169, i32* %3, align 4
  br label %179

170:                                              ; preds = %33
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %179

173:                                              ; preds = %130, %122, %113, %104, %95, %86, %77, %68, %59, %51, %43, %35
  %174 = load i32*, i32** @levels, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %173, %170, %168
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @mixer_output(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
