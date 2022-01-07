; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_RFbAL2230Init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_RFbAL2230Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@MAC_REG_SOFTPWRCTL = common dso_local global i64 0, align 8
@SOFTPWRCTL_SWPECTI = common dso_local global i32 0, align 4
@SOFTPWRCTL_TXPEINV = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE3 = common dso_local global i32 0, align 4
@BY_AL2230_REG_LEN = common dso_local global i32 0, align 4
@IFREGCTL_REGW = common dso_local global i64 0, align 8
@CB_AL2230_INIT_SEQ = common dso_local global i32 0, align 4
@dwAL2230InitTable = common dso_local global i64* null, align 8
@SOFTPWRCTL_SWPE2 = common dso_local global i32 0, align 4
@MAC_REG_PSPWRSIG = common dso_local global i64 0, align 8
@PSSIG_WPE3 = common dso_local global i32 0, align 4
@PSSIG_WPE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RFbAL2230Init(i64 %0) #0 {
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
  %17 = load i64, i64* @MAC_REG_SOFTPWRCTL, align 8
  %18 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %19 = call i32 @MACvWordRegBitsOff(i64 %16, i64 %17, i32 %18)
  %20 = load i64, i64* %2, align 8
  %21 = load i32, i32* @BY_AL2230_REG_LEN, align 4
  %22 = shl i32 %21, 3
  %23 = add nsw i32 118916864, %22
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @IFREGCTL_REGW, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @IFRFbWriteEmbeded(i64 %20, i64 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %42, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @CB_AL2230_INIT_SEQ, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i64, i64* %2, align 8
  %34 = load i64*, i64** @dwAL2230InitTable, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @IFRFbWriteEmbeded(i64 %33, i64 %38)
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load i64, i64* %2, align 8
  %47 = call i32 @MACvTimer0MicroSDelay(i64 %46, i32 30)
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @MAC_REG_SOFTPWRCTL, align 8
  %50 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %51 = call i32 @MACvWordRegBitsOn(i64 %48, i64 %49, i32 %50)
  %52 = load i64, i64* %2, align 8
  %53 = call i32 @MACvTimer0MicroSDelay(i64 %52, i32 150)
  %54 = load i64, i64* %2, align 8
  %55 = load i32, i32* @BY_AL2230_REG_LEN, align 4
  %56 = shl i32 %55, 3
  %57 = add nsw i32 14159616, %56
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
  %67 = load i32, i32* @BY_AL2230_REG_LEN, align 4
  %68 = shl i32 %67, 3
  %69 = add nsw i32 7868160, %68
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @IFREGCTL_REGW, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @IFRFbWriteEmbeded(i64 %66, i64 %72)
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load i64, i64* %2, align 8
  %77 = call i32 @MACvTimer0MicroSDelay(i64 %76, i32 30)
  %78 = load i64, i64* %2, align 8
  %79 = load i64*, i64** @dwAL2230InitTable, align 8
  %80 = load i32, i32* @CB_AL2230_INIT_SEQ, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @IFRFbWriteEmbeded(i64 %78, i64 %84)
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* @MAC_REG_SOFTPWRCTL, align 8
  %90 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %91 = load i32, i32* @SOFTPWRCTL_SWPE2, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @SOFTPWRCTL_SWPECTI, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @SOFTPWRCTL_TXPEINV, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @MACvWordRegBitsOn(i64 %88, i64 %89, i32 %96)
  %98 = load i64, i64* %2, align 8
  %99 = load i64, i64* @MAC_REG_PSPWRSIG, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i32, i32* @PSSIG_WPE3, align 4
  %102 = load i32, i32* @PSSIG_WPE2, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @VNSvOutPortB(i64 %100, i32 %103)
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @MACvWordRegBitsOn(i64, i64, i32) #1

declare dso_local i32 @MACvWordRegBitsOff(i64, i64, i32) #1

declare dso_local i32 @IFRFbWriteEmbeded(i64, i64) #1

declare dso_local i32 @MACvTimer0MicroSDelay(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
