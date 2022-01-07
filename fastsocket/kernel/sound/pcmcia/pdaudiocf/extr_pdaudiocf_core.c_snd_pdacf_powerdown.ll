; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_snd_pdacf_powerdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_snd_pdacf_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pdacf = type { i32, i64 }

@PDAUDIOCF_REG_SCR = common dso_local global i32 0, align 4
@PDAUDIOCF_RED_LED_OFF = common dso_local global i32 0, align 4
@PDAUDIOCF_BLUE_LED_OFF = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_IER = common dso_local global i64 0, align 8
@PDAUDIOCF_IRQOVREN = common dso_local global i32 0, align 4
@PDAUDIOCF_IRQAKMEN = common dso_local global i32 0, align 4
@PDAUDIOCF_IRQLVLEN0 = common dso_local global i32 0, align 4
@PDAUDIOCF_IRQLVLEN1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pdacf_powerdown(%struct.snd_pdacf* %0) #0 {
  %2 = alloca %struct.snd_pdacf*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_pdacf* %0, %struct.snd_pdacf** %2, align 8
  %4 = load %struct.snd_pdacf*, %struct.snd_pdacf** %2, align 8
  %5 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %6 = call i32 @pdacf_reg_read(%struct.snd_pdacf* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.snd_pdacf*, %struct.snd_pdacf** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @PDAUDIOCF_RED_LED_OFF, align 4
  %11 = load i32, i32* @PDAUDIOCF_BLUE_LED_OFF, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.snd_pdacf*, %struct.snd_pdacf** %2, align 8
  %16 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %15, i32 %16, i32 %17)
  %19 = load %struct.snd_pdacf*, %struct.snd_pdacf** %2, align 8
  %20 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PDAUDIOCF_REG_IER, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inw(i64 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @PDAUDIOCF_IRQOVREN, align 4
  %26 = load i32, i32* @PDAUDIOCF_IRQAKMEN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PDAUDIOCF_IRQLVLEN0, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PDAUDIOCF_IRQLVLEN1, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.snd_pdacf*, %struct.snd_pdacf** %2, align 8
  %37 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PDAUDIOCF_REG_IER, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outw(i32 %35, i64 %40)
  %42 = load %struct.snd_pdacf*, %struct.snd_pdacf** %2, align 8
  %43 = call i32 @pdacf_reset(%struct.snd_pdacf* %42, i32 1)
  ret void
}

declare dso_local i32 @pdacf_reg_read(%struct.snd_pdacf*, i32) #1

declare dso_local i32 @pdacf_reg_write(%struct.snd_pdacf*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @pdacf_reset(%struct.snd_pdacf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
