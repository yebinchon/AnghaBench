; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_davinci_hw_dit_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_davinci_hw_dit_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_audio_dev = type { i64 }

@DAVINCI_MCASP_PDIR_REG = common dso_local global i64 0, align 8
@AFSX = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXMASK_REG = common dso_local global i64 0, align 8
@DAVINCI_MCASP_TXFMT_REG = common dso_local global i64 0, align 8
@DAVINCI_MCASP_TXFMCTL_REG = common dso_local global i64 0, align 8
@AFSXE = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXTDM_REG = common dso_local global i64 0, align 8
@DAVINCI_MCASP_ACLKXCTL_REG = common dso_local global i64 0, align 8
@ACLKXE = common dso_local global i32 0, align 4
@TX_ASYNC = common dso_local global i32 0, align 4
@DAVINCI_MCASP_XEVTCTL_REG = common dso_local global i64 0, align 8
@TXDATADMADIS = common dso_local global i32 0, align 4
@DAVINCI_MCASP_AHCLKXCTL_REG = common dso_local global i64 0, align 8
@DAVINCI_MCASP_TXDITCTL_REG = common dso_local global i64 0, align 8
@DITEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_audio_dev*)* @davinci_hw_dit_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_hw_dit_param(%struct.davinci_audio_dev* %0) #0 {
  %2 = alloca %struct.davinci_audio_dev*, align 8
  store %struct.davinci_audio_dev* %0, %struct.davinci_audio_dev** %2, align 8
  %3 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %4 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DAVINCI_MCASP_PDIR_REG, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i32, i32* @AFSX, align 4
  %9 = call i32 @mcasp_set_bits(i64 %7, i32 %8)
  %10 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %11 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DAVINCI_MCASP_TXMASK_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @mcasp_set_reg(i64 %14, i32 16777215)
  %16 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %17 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DAVINCI_MCASP_TXFMT_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @TXROT(i32 6)
  %22 = call i32 @TXSSZ(i32 15)
  %23 = or i32 %21, %22
  %24 = call i32 @mcasp_set_bits(i64 %20, i32 %23)
  %25 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %26 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DAVINCI_MCASP_TXFMCTL_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @AFSXE, align 4
  %31 = call i32 @FSXMOD(i32 384)
  %32 = or i32 %30, %31
  %33 = call i32 @mcasp_set_reg(i64 %29, i32 %32)
  %34 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %35 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DAVINCI_MCASP_TXTDM_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @mcasp_set_reg(i64 %38, i32 -1)
  %40 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %41 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DAVINCI_MCASP_ACLKXCTL_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @ACLKXE, align 4
  %46 = load i32, i32* @TX_ASYNC, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @mcasp_set_bits(i64 %44, i32 %47)
  %49 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %50 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DAVINCI_MCASP_XEVTCTL_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* @TXDATADMADIS, align 4
  %55 = call i32 @mcasp_clr_bits(i64 %53, i32 %54)
  %56 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %57 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DAVINCI_MCASP_AHCLKXCTL_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @AHCLKXDIV(i32 3)
  %62 = call i32 @mcasp_set_bits(i64 %60, i32 %61)
  %63 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %64 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DAVINCI_MCASP_TXDITCTL_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* @DITEN, align 4
  %69 = call i32 @mcasp_set_bits(i64 %67, i32 %68)
  ret void
}

declare dso_local i32 @mcasp_set_bits(i64, i32) #1

declare dso_local i32 @mcasp_set_reg(i64, i32) #1

declare dso_local i32 @TXROT(i32) #1

declare dso_local i32 @TXSSZ(i32) #1

declare dso_local i32 @FSXMOD(i32) #1

declare dso_local i32 @mcasp_clr_bits(i64, i32) #1

declare dso_local i32 @AHCLKXDIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
