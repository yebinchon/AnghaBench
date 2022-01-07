; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_s_bAL7230Init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_s_bAL7230Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@MAC_REG_SOFTPWRCTL = common dso_local global i64 0, align 8
@SOFTPWRCTL_SWPECTI = common dso_local global i32 0, align 4
@SOFTPWRCTL_TXPEINV = common dso_local global i32 0, align 4
@CB_AL7230_INIT_SEQ = common dso_local global i32 0, align 4
@dwAL7230InitTable = common dso_local global i64* null, align 8
@SOFTPWRCTL_SWPE3 = common dso_local global i32 0, align 4
@BY_AL7230_REG_LEN = common dso_local global i32 0, align 4
@IFREGCTL_REGW = common dso_local global i64 0, align 8
@SOFTPWRCTL_SWPE2 = common dso_local global i32 0, align 4
@MAC_REG_PSPWRSIG = common dso_local global i64 0, align 8
@PSSIG_WPE3 = common dso_local global i32 0, align 4
@PSSIG_WPE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s_bAL7230Init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @TRUE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @MAC_REG_SOFTPWRCTL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @VNSvOutPortB(i64 %8, i32 0)
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @MAC_REG_SOFTPWRCTL, align 8
  %12 = load i32, i32* @SOFTPWRCTL_SWPECTI, align 4
  %13 = load i32, i32* @SOFTPWRCTL_TXPEINV, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @MACvWordRegBitsOn(i64 %10, i64 %11, i32 %14)
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @BBvPowerSaveModeOFF(i64 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %32, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CB_AL7230_INIT_SEQ, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i64, i64* %2, align 8
  %24 = load i64*, i64** @dwAL7230InitTable, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @IFRFbWriteEmbeded(i64 %23, i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @MAC_REG_SOFTPWRCTL, align 8
  %38 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %39 = call i32 @MACvWordRegBitsOn(i64 %36, i64 %37, i32 %38)
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @MACvTimer0MicroSDelay(i64 %40, i32 150)
  %42 = load i64, i64* %2, align 8
  %43 = load i32, i32* @BY_AL7230_REG_LEN, align 4
  %44 = shl i32 %43, 3
  %45 = add i32 -1699049728, %44
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* @IFREGCTL_REGW, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @IFRFbWriteEmbeded(i64 %42, i64 %48)
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i64, i64* %2, align 8
  %53 = call i32 @MACvTimer0MicroSDelay(i64 %52, i32 30)
  %54 = load i64, i64* %2, align 8
  %55 = load i32, i32* @BY_AL7230_REG_LEN, align 4
  %56 = shl i32 %55, 3
  %57 = add nsw i32 985304832, %56
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @IFREGCTL_REGW, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @IFRFbWriteEmbeded(i64 %54, i64 %60)
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i64, i64* %2, align 8
  %65 = call i32 @MACvTimer0MicroSDelay(i64 %64, i32 30)
  %66 = load i64, i64* %2, align 8
  %67 = load i64*, i64** @dwAL7230InitTable, align 8
  %68 = load i32, i32* @CB_AL7230_INIT_SEQ, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @IFRFbWriteEmbeded(i64 %66, i64 %72)
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load i64, i64* %2, align 8
  %77 = load i64, i64* @MAC_REG_SOFTPWRCTL, align 8
  %78 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %79 = load i32, i32* @SOFTPWRCTL_SWPE2, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SOFTPWRCTL_SWPECTI, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SOFTPWRCTL_TXPEINV, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @MACvWordRegBitsOn(i64 %76, i64 %77, i32 %84)
  %86 = load i64, i64* %2, align 8
  %87 = call i32 @BBvPowerSaveModeON(i64 %86)
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* @MAC_REG_PSPWRSIG, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32, i32* @PSSIG_WPE3, align 4
  %92 = load i32, i32* @PSSIG_WPE2, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @VNSvOutPortB(i64 %90, i32 %93)
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @MACvWordRegBitsOn(i64, i64, i32) #1

declare dso_local i32 @BBvPowerSaveModeOFF(i64) #1

declare dso_local i32 @IFRFbWriteEmbeded(i64, i64) #1

declare dso_local i32 @MACvTimer0MicroSDelay(i64, i32) #1

declare dso_local i32 @BBvPowerSaveModeON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
