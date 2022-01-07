; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_mcasp_start_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_mcasp_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_audio_dev = type { i64 }

@DAVINCI_MCASP_GBLCTLR_REG = common dso_local global i64 0, align 8
@RXHCLKRST = common dso_local global i32 0, align 4
@RXCLKRST = common dso_local global i32 0, align 4
@RXSERCLR = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RXBUF_REG = common dso_local global i64 0, align 8
@RXSMRST = common dso_local global i32 0, align 4
@RXFSRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_audio_dev*)* @mcasp_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcasp_start_rx(%struct.davinci_audio_dev* %0) #0 {
  %2 = alloca %struct.davinci_audio_dev*, align 8
  store %struct.davinci_audio_dev* %0, %struct.davinci_audio_dev** %2, align 8
  %3 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %4 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DAVINCI_MCASP_GBLCTLR_REG, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i32, i32* @RXHCLKRST, align 4
  %9 = call i32 @mcasp_set_ctl_reg(i64 %7, i32 %8)
  %10 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %11 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DAVINCI_MCASP_GBLCTLR_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @RXCLKRST, align 4
  %16 = call i32 @mcasp_set_ctl_reg(i64 %14, i32 %15)
  %17 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %18 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DAVINCI_MCASP_GBLCTLR_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @RXSERCLR, align 4
  %23 = call i32 @mcasp_set_ctl_reg(i64 %21, i32 %22)
  %24 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %25 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DAVINCI_MCASP_RXBUF_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @mcasp_set_reg(i64 %28, i32 0)
  %30 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %31 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DAVINCI_MCASP_GBLCTLR_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @RXSMRST, align 4
  %36 = call i32 @mcasp_set_ctl_reg(i64 %34, i32 %35)
  %37 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %38 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DAVINCI_MCASP_GBLCTLR_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* @RXFSRST, align 4
  %43 = call i32 @mcasp_set_ctl_reg(i64 %41, i32 %42)
  %44 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %45 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DAVINCI_MCASP_RXBUF_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @mcasp_set_reg(i64 %48, i32 0)
  %50 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %51 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DAVINCI_MCASP_GBLCTLR_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* @RXSMRST, align 4
  %56 = call i32 @mcasp_set_ctl_reg(i64 %54, i32 %55)
  %57 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %58 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DAVINCI_MCASP_GBLCTLR_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* @RXFSRST, align 4
  %63 = call i32 @mcasp_set_ctl_reg(i64 %61, i32 %62)
  ret void
}

declare dso_local i32 @mcasp_set_ctl_reg(i64, i32) #1

declare dso_local i32 @mcasp_set_reg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
