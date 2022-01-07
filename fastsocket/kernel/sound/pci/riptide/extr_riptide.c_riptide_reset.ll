; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_riptide_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_riptide_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cmdret = type { i32* }
%struct.cmdif = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.snd_riptide = type { i32 }

@CMDRET_ZERO = common dso_local global %union.cmdret zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@RESET_TRIES = common dso_local global i32 0, align 4
@AC97_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"AC97: 0x%x 0x%x\0A\00", align 1
@MODEM_CMD = common dso_local global i32 0, align 4
@MODEM_INTDEC = common dso_local global i32 0, align 4
@MODEM_MERGER = common dso_local global i32 0, align 4
@MODEM_SPLITTER = common dso_local global i32 0, align 4
@MODEM_MIXER = common dso_local global i32 0, align 4
@ARM2LBUS_FIFO13 = common dso_local global i32 0, align 4
@lbus_play_modem = common dso_local global i32 0, align 4
@FM_CMD = common dso_local global i32 0, align 4
@FM_INTDEC = common dso_local global i32 0, align 4
@FM_MERGER = common dso_local global i32 0, align 4
@FM_SPLITTER = common dso_local global i32 0, align 4
@FM_MIXER = common dso_local global i32 0, align 4
@OPL3_SAMPLE = common dso_local global i32 0, align 4
@lbus_play_opl3 = common dso_local global i32 0, align 4
@I2S_INTDEC = common dso_local global i32 0, align 4
@I2S_RATE = common dso_local global i64 0, align 8
@I2S_CMD0 = common dso_local global i32 0, align 4
@I2S_MERGER = common dso_local global i32 0, align 4
@I2S_SPLITTER = common dso_local global i32 0, align 4
@I2S_MIXER = common dso_local global i32 0, align 4
@ARM2LBUS_FIFO0 = common dso_local global i32 0, align 4
@lbus_play_i2s = common dso_local global i32 0, align 4
@DIGITAL_MIXER_OUT0 = common dso_local global i32 0, align 4
@lbus_play_out = common dso_local global i32 0, align 4
@lbus_play_outhp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdif*, %struct.snd_riptide*)* @riptide_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riptide_reset(%struct.cmdif* %0, %struct.snd_riptide* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmdif*, align 8
  %5 = alloca %struct.snd_riptide*, align 8
  %6 = alloca %union.cmdret, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmdif* %0, %struct.cmdif** %4, align 8
  store %struct.snd_riptide* %1, %struct.snd_riptide** %5, align 8
  %9 = bitcast %union.cmdret* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%union.cmdret* @CMDRET_ZERO to i8*), i64 8, i1 false)
  %10 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %11 = icmp ne %struct.cmdif* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %160

15:                                               ; preds = %2
  %16 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %17 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %19 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %21 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %23 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %25 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %27 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @RESET_TRIES, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %15
  %30 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %31 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %32 = call i32 @try_to_load_firmware(%struct.cmdif* %30, %struct.snd_riptide* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %160

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %29, label %47

47:                                               ; preds = %45
  %48 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %49 = load i32, i32* @AC97_RESET, align 4
  %50 = call i32 @SEND_SACR(%struct.cmdif* %48, i32 0, i32 %49)
  %51 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %52 = load i32, i32* @AC97_RESET, align 4
  %53 = call i32 @SEND_RACR(%struct.cmdif* %51, i32 %52, %union.cmdret* %6)
  %54 = bitcast %union.cmdret* %6 to i32**
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %union.cmdret* %6 to i32**
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snd_printdd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %64 = call i32 @SEND_PLST(%struct.cmdif* %63, i32 0)
  %65 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %66 = call i32 @SEND_SLST(%struct.cmdif* %65, i32 0)
  %67 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %68 = call i32 @SEND_DLST(%struct.cmdif* %67, i32 0)
  %69 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %70 = call i32 @SEND_ALST(%struct.cmdif* %69, i32 0)
  %71 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %72 = call i32 @SEND_KDMA(%struct.cmdif* %71)
  %73 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %74 = call i32 @writearm(%struct.cmdif* %73, i32 197112, i32 1, i32 1)
  %75 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %76 = call i32 @writearm(%struct.cmdif* %75, i32 197108, i32 1, i32 1)
  %77 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %78 = load i32, i32* @MODEM_CMD, align 4
  %79 = load i32, i32* @MODEM_INTDEC, align 4
  %80 = load i32, i32* @MODEM_MERGER, align 4
  %81 = load i32, i32* @MODEM_SPLITTER, align 4
  %82 = load i32, i32* @MODEM_MIXER, align 4
  %83 = call i32 @SEND_LSEL(%struct.cmdif* %77, i32 %78, i32 0, i32 0, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %85 = load i32, i32* @MODEM_MIXER, align 4
  %86 = call i32 @setmixer(%struct.cmdif* %84, i32 %85, i32 32767, i32 32767)
  %87 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %88 = load i32, i32* @ARM2LBUS_FIFO13, align 4
  %89 = load i32, i32* @lbus_play_modem, align 4
  %90 = call i32 @alloclbuspath(%struct.cmdif* %87, i32 %88, i32 %89, i32* null, i32* null)
  %91 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %92 = load i32, i32* @FM_CMD, align 4
  %93 = load i32, i32* @FM_INTDEC, align 4
  %94 = load i32, i32* @FM_MERGER, align 4
  %95 = load i32, i32* @FM_SPLITTER, align 4
  %96 = load i32, i32* @FM_MIXER, align 4
  %97 = call i32 @SEND_LSEL(%struct.cmdif* %91, i32 %92, i32 0, i32 0, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %99 = load i32, i32* @FM_MIXER, align 4
  %100 = call i32 @setmixer(%struct.cmdif* %98, i32 %99, i32 32767, i32 32767)
  %101 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %102 = load i32, i32* @FM_MIXER, align 4
  %103 = mul nsw i32 %102, 4
  %104 = add nsw i32 198216, %103
  %105 = call i32 @writearm(%struct.cmdif* %101, i32 %104, i32 1, i32 5)
  %106 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %107 = call i32 @writearm(%struct.cmdif* %106, i32 197032, i32 2, i32 2)
  %108 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %109 = call i32 @writearm(%struct.cmdif* %108, i32 197220, i32 8, i32 -1)
  %110 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %111 = load i32, i32* @OPL3_SAMPLE, align 4
  %112 = load i32, i32* @lbus_play_opl3, align 4
  %113 = call i32 @alloclbuspath(%struct.cmdif* %110, i32 %111, i32 %112, i32* null, i32* null)
  %114 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %115 = load i32, i32* @I2S_INTDEC, align 4
  %116 = load i64, i64* @I2S_RATE, align 8
  %117 = trunc i64 %116 to i32
  %118 = mul nsw i32 %117, 65536
  %119 = sdiv i32 %118, 48000
  %120 = load i64, i64* @I2S_RATE, align 8
  %121 = trunc i64 %120 to i32
  %122 = mul nsw i32 %121, 65536
  %123 = srem i32 %122, 48000
  %124 = call i32 @SEND_SSRC(%struct.cmdif* %114, i32 %115, i32 48000, i32 %119, i32 %123)
  %125 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %126 = load i32, i32* @I2S_CMD0, align 4
  %127 = load i32, i32* @I2S_INTDEC, align 4
  %128 = load i32, i32* @I2S_MERGER, align 4
  %129 = load i32, i32* @I2S_SPLITTER, align 4
  %130 = load i32, i32* @I2S_MIXER, align 4
  %131 = call i32 @SEND_LSEL(%struct.cmdif* %125, i32 %126, i32 0, i32 0, i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %133 = call i32 @SEND_SI2S(%struct.cmdif* %132, i32 1)
  %134 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %135 = load i32, i32* @ARM2LBUS_FIFO0, align 4
  %136 = load i32, i32* @lbus_play_i2s, align 4
  %137 = call i32 @alloclbuspath(%struct.cmdif* %134, i32 %135, i32 %136, i32* null, i32* null)
  %138 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %139 = load i32, i32* @DIGITAL_MIXER_OUT0, align 4
  %140 = load i32, i32* @lbus_play_out, align 4
  %141 = call i32 @alloclbuspath(%struct.cmdif* %138, i32 %139, i32 %140, i32* null, i32* null)
  %142 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %143 = load i32, i32* @DIGITAL_MIXER_OUT0, align 4
  %144 = load i32, i32* @lbus_play_outhp, align 4
  %145 = call i32 @alloclbuspath(%struct.cmdif* %142, i32 %143, i32 %144, i32* null, i32* null)
  %146 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %147 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @SET_AIACK(i32 %148)
  %150 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %151 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @SET_AIE(i32 %152)
  %154 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %155 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @SET_AIACK(i32 %156)
  %158 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %159 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %47, %35, %12
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @try_to_load_firmware(%struct.cmdif*, %struct.snd_riptide*) #2

declare dso_local i32 @SEND_SACR(%struct.cmdif*, i32, i32) #2

declare dso_local i32 @SEND_RACR(%struct.cmdif*, i32, %union.cmdret*) #2

declare dso_local i32 @snd_printdd(i8*, i32, i32) #2

declare dso_local i32 @SEND_PLST(%struct.cmdif*, i32) #2

declare dso_local i32 @SEND_SLST(%struct.cmdif*, i32) #2

declare dso_local i32 @SEND_DLST(%struct.cmdif*, i32) #2

declare dso_local i32 @SEND_ALST(%struct.cmdif*, i32) #2

declare dso_local i32 @SEND_KDMA(%struct.cmdif*) #2

declare dso_local i32 @writearm(%struct.cmdif*, i32, i32, i32) #2

declare dso_local i32 @SEND_LSEL(%struct.cmdif*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @setmixer(%struct.cmdif*, i32, i32, i32) #2

declare dso_local i32 @alloclbuspath(%struct.cmdif*, i32, i32, i32*, i32*) #2

declare dso_local i32 @SEND_SSRC(%struct.cmdif*, i32, i32, i32, i32) #2

declare dso_local i32 @SEND_SI2S(%struct.cmdif*, i32) #2

declare dso_local i32 @SET_AIACK(i32) #2

declare dso_local i32 @SET_AIE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
