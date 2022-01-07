; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_iec958_capture_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_iec958_capture_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pcxhr_rmh = type { i32*, i32, i32* }

@CMD_ACCESS_IO_READ = common dso_local global i32 0, align 4
@IO_NUM_UER_CHIP_REG = common dso_local global i32 0, align 4
@CS8420_01_CS = common dso_local global i32 0, align 4
@CS8420_23_CS = common dso_local global i32 0, align 4
@CS8420_45_CS = common dso_local global i32 0, align 4
@CS8420_67_CS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CS8416_CSB0 = common dso_local global i32 0, align 4
@CS8416_CSB1 = common dso_local global i32 0, align 4
@CS8416_CSB2 = common dso_local global i32 0, align 4
@CS8416_CSB3 = common dso_local global i32 0, align 4
@CS8416_CSB4 = common dso_local global i32 0, align 4
@CS8420_CSB0 = common dso_local global i32 0, align 4
@CS8420_CSB1 = common dso_local global i32 0, align 4
@CS8420_CSB2 = common dso_local global i32 0, align 4
@CS8420_CSB3 = common dso_local global i32 0, align 4
@CS8420_CSB4 = common dso_local global i32 0, align 4
@CHIP_SIG_AND_MAP_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"read iec958 AES %d byte %d = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcxhr*, i32, i8*)* @pcxhr_iec958_capture_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_iec958_capture_byte(%struct.snd_pcxhr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.pcxhr_rmh, align 8
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @CMD_ACCESS_IO_READ, align 4
  %13 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %11, i32 %12)
  %14 = load i32, i32* @IO_NUM_UER_CHIP_REG, align 4
  %15 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %43 [
    i32 0, label %23
    i32 1, label %28
    i32 2, label %33
    i32 3, label %38
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* @CS8420_01_CS, align 4
  %25 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %24, i32* %27, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load i32, i32* @CS8420_23_CS, align 4
  %30 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %29, i32* %32, align 4
  br label %46

33:                                               ; preds = %3
  %34 = load i32, i32* @CS8420_45_CS, align 4
  %35 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %34, i32* %37, align 4
  br label %46

38:                                               ; preds = %3
  %39 = load i32, i32* @CS8420_67_CS, align 4
  %40 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %39, i32* %42, align 4
  br label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %185

46:                                               ; preds = %38, %33, %28, %23
  %47 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %80 [
    i32 0, label %55
    i32 1, label %60
    i32 2, label %65
    i32 3, label %70
    i32 4, label %75
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* @CS8416_CSB0, align 4
  %57 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %56, i32* %59, align 4
  br label %83

60:                                               ; preds = %53
  %61 = load i32, i32* @CS8416_CSB1, align 4
  %62 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %61, i32* %64, align 4
  br label %83

65:                                               ; preds = %53
  %66 = load i32, i32* @CS8416_CSB2, align 4
  %67 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32 %66, i32* %69, align 4
  br label %83

70:                                               ; preds = %53
  %71 = load i32, i32* @CS8416_CSB3, align 4
  %72 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %71, i32* %74, align 4
  br label %83

75:                                               ; preds = %53
  %76 = load i32, i32* @CS8416_CSB4, align 4
  %77 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 %76, i32* %79, align 4
  br label %83

80:                                               ; preds = %53
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %185

83:                                               ; preds = %75, %70, %65, %60, %55
  br label %115

84:                                               ; preds = %46
  %85 = load i32, i32* %6, align 4
  switch i32 %85, label %111 [
    i32 0, label %86
    i32 1, label %91
    i32 2, label %96
    i32 3, label %101
    i32 4, label %106
  ]

86:                                               ; preds = %84
  %87 = load i32, i32* @CS8420_CSB0, align 4
  %88 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %87, i32* %90, align 4
  br label %114

91:                                               ; preds = %84
  %92 = load i32, i32* @CS8420_CSB1, align 4
  %93 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %92, i32* %95, align 4
  br label %114

96:                                               ; preds = %84
  %97 = load i32, i32* @CS8420_CSB2, align 4
  %98 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  store i32 %97, i32* %100, align 4
  br label %114

101:                                              ; preds = %84
  %102 = load i32, i32* @CS8420_CSB3, align 4
  %103 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 %102, i32* %105, align 4
  br label %114

106:                                              ; preds = %84
  %107 = load i32, i32* @CS8420_CSB4, align 4
  %108 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  store i32 %107, i32* %110, align 4
  br label %114

111:                                              ; preds = %84
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %185

114:                                              ; preds = %106, %101, %96, %91, %86
  br label %115

115:                                              ; preds = %114, %83
  %116 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 1048575
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* @CHIP_SIG_AND_MAP_SPI, align 4
  %122 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %121
  store i32 %126, i32* %124, align 4
  %127 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 1
  store i32 3, i32* %127, align 8
  %128 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %129 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = call i32 @pcxhr_send_msg(%struct.TYPE_2__* %130, %struct.pcxhr_rmh* %11)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %115
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %4, align 4
  br label %185

136:                                              ; preds = %115
  %137 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %138 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %10, align 1
  br label %176

149:                                              ; preds = %136
  store i8 0, i8* %10, align 1
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %172, %149
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, 8
  br i1 %152, label %153, label %175

153:                                              ; preds = %150
  %154 = load i8, i8* %10, align 1
  %155 = zext i8 %154 to i32
  %156 = shl i32 %155, 1
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %10, align 1
  %158 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %8, align 4
  %163 = shl i32 1, %162
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %153
  %167 = load i8, i8* %10, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %168, 1
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %10, align 1
  br label %171

171:                                              ; preds = %166, %153
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %150

175:                                              ; preds = %150
  br label %176

176:                                              ; preds = %175, %143
  %177 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %178 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i8, i8* %10, align 1
  %182 = call i32 @snd_printdd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %180, i8 zeroext %181)
  %183 = load i8, i8* %10, align 1
  %184 = load i8*, i8** %7, align 8
  store i8 %183, i8* %184, align 1
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %176, %134, %111, %80, %43
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.TYPE_2__*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @snd_printdd(i8*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
