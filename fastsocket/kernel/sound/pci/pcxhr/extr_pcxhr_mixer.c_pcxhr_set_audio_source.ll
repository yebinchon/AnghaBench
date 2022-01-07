; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_set_audio_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_set_audio_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__**, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32 }

@PCXHR_SOURCE_AUDIO01_UER = common dso_local global i32 0, align 4
@CS8420_01_CS = common dso_local global i32 0, align 4
@PCXHR_SOURCE_AUDIO23_UER = common dso_local global i32 0, align 4
@CS8420_23_CS = common dso_local global i32 0, align 4
@PCXHR_SOURCE_AUDIO45_UER = common dso_local global i32 0, align 4
@CS8420_45_CS = common dso_local global i32 0, align 4
@PCXHR_SOURCE_AUDIO67_UER = common dso_local global i32 0, align 4
@CS8420_67_CS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CMD_RESYNC_AUDIO_INPUTS = common dso_local global i32 0, align 4
@CMD_ACCESS_IO_WRITE = common dso_local global i32 0, align 4
@IO_NUM_REG_CONFIG_SRC = common dso_local global i32 0, align 4
@IO_NUM_UER_CHIP_REG = common dso_local global i32 0, align 4
@CS8420_DATA_FLOW_CTL = common dso_local global i32 0, align 4
@CHIP_SIG_AND_MAP_SPI = common dso_local global i32 0, align 4
@CS8420_CLOCK_SRC_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcxhr*)* @pcxhr_set_audio_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_set_audio_source(%struct.snd_pcxhr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcxhr*, align 8
  %4 = alloca %struct.pcxhr_rmh, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %3, align 8
  %13 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %28 [
    i32 0, label %16
    i32 1, label %19
    i32 2, label %22
    i32 3, label %25
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @PCXHR_SOURCE_AUDIO01_UER, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @CS8420_01_CS, align 4
  store i32 %18, i32* %7, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @PCXHR_SOURCE_AUDIO23_UER, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @CS8420_23_CS, align 4
  store i32 %21, i32* %7, align 4
  br label %31

22:                                               ; preds = %1
  %23 = load i32, i32* @PCXHR_SOURCE_AUDIO45_UER, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @CS8420_45_CS, align 4
  store i32 %24, i32* %7, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @PCXHR_SOURCE_AUDIO67_UER, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @CS8420_67_CS, align 4
  store i32 %27, i32* %7, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %188

31:                                               ; preds = %25, %22, %19, %16
  %32 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %33 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %6, align 4
  br label %39

38:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %36
  %40 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %41 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pcxhr_write_io_num_reg_cont(%struct.TYPE_5__* %42, i32 %43, i32 %44, i32* %9)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %39
  %49 = load i32, i32* @CMD_RESYNC_AUDIO_INPUTS, align 4
  %50 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %4, i32 %49)
  %51 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %52 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 1, %53
  %55 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %4, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %61 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = call i32 @pcxhr_send_msg(%struct.TYPE_5__* %62, %struct.pcxhr_rmh* %4)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %48
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %188

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68, %39
  %70 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %71 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %131

76:                                               ; preds = %69
  store i32 192, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %110, %76
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %83 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %81, %86
  br label %88

88:                                               ; preds = %80, %77
  %89 = phi i1 [ false, %77 ], [ %87, %80 ]
  br i1 %89, label %90, label %113

90:                                               ; preds = %88
  %91 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %92 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %91, i32 0, i32 2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %95, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %109

103:                                              ; preds = %90
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 3, %104
  %106 = shl i32 1, %105
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %103, %90
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %77

113:                                              ; preds = %88
  %114 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %115 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %4, i32 %114)
  %116 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %4, i32 0, i32 1
  store i32 2, i32* %116, align 8
  %117 = load i32, i32* @IO_NUM_REG_CONFIG_SRC, align 4
  %118 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %4, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %117
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %11, align 4
  %124 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %4, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 %123, i32* %126, align 4
  %127 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %128 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = call i32 @pcxhr_send_msg(%struct.TYPE_5__* %129, %struct.pcxhr_rmh* %4)
  store i32 %130, i32* %8, align 4
  br label %186

131:                                              ; preds = %69
  store i32 0, i32* %12, align 4
  %132 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %133 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 1, i32* %12, align 4
  br label %137

137:                                              ; preds = %136, %131
  %138 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %139 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %4, i32 %138)
  %140 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %4, i32 0, i32 1
  store i32 3, i32* %140, align 8
  %141 = load i32, i32* @IO_NUM_UER_CHIP_REG, align 4
  %142 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %4, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %141
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %7, align 4
  %148 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %4, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* @CS8420_DATA_FLOW_CTL, align 4
  %152 = load i32, i32* @CHIP_SIG_AND_MAP_SPI, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 65, i32 84
  %158 = or i32 %153, %157
  %159 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %4, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 %158, i32* %161, align 4
  %162 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %163 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %162, i32 0, i32 2
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = call i32 @pcxhr_send_msg(%struct.TYPE_5__* %164, %struct.pcxhr_rmh* %4)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %137
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %2, align 4
  br label %188

170:                                              ; preds = %137
  %171 = load i32, i32* @CS8420_CLOCK_SRC_CTL, align 4
  %172 = load i32, i32* @CHIP_SIG_AND_MAP_SPI, align 4
  %173 = and i32 %171, %172
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 65, i32 73
  %178 = or i32 %173, %177
  %179 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %4, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  store i32 %178, i32* %181, align 4
  %182 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %183 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %182, i32 0, i32 2
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = call i32 @pcxhr_send_msg(%struct.TYPE_5__* %184, %struct.pcxhr_rmh* %4)
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %170, %113
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %186, %168, %66, %28
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @pcxhr_write_io_num_reg_cont(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.TYPE_5__*, %struct.pcxhr_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
