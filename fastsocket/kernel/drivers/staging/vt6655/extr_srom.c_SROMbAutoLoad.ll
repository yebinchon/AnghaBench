; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_srom.c_SROMbAutoLoad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_srom.c_SROMbAutoLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_REG_I2MCFG = common dso_local global i64 0, align 8
@I2MCFG_NORETRY = common dso_local global i32 0, align 4
@MAC_REG_I2MCSR = common dso_local global i64 0, align 8
@I2MCSR_AUTOLD = common dso_local global i32 0, align 4
@EEP_MAX_CONTEXT_SIZE = common dso_local global i32 0, align 4
@CB_EEPROM_READBYTE_WAIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SROMbAutoLoad(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @MAC_REG_I2MCFG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @VNSvInPortB(i64 %9, i32* %6)
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @MAC_REG_I2MCFG, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @I2MCFG_NORETRY, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @VNSvOutPortB(i64 %13, i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @MAC_REG_I2MCSR, align 8
  %20 = load i32, i32* @I2MCSR_AUTOLD, align 4
  %21 = call i32 @MACvRegBitsOn(i64 %18, i64 %19, i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %40, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EEP_MAX_CONTEXT_SIZE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* @CB_EEPROM_READBYTE_WAIT, align 4
  %29 = call i32 @MACvTimer0MicroSDelay(i64 %27, i32 %28)
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @MAC_REG_I2MCSR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @VNSvInPortB(i64 %32, i32* %4)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @I2MCSR_AUTOLD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  br label %43

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %22

43:                                               ; preds = %38, %22
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @MAC_REG_I2MCFG, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @VNSvOutPortB(i64 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @EEP_MAX_CONTEXT_SIZE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @VNSvInPortB(i64, i32*) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @MACvRegBitsOn(i64, i64, i32) #1

declare dso_local i32 @MACvTimer0MicroSDelay(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
