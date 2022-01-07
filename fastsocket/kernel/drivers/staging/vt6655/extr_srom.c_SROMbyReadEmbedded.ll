; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_srom.c_SROMbyReadEmbedded.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_srom.c_SROMbyReadEmbedded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_REG_I2MCFG = common dso_local global i64 0, align 8
@I2MCFG_NORETRY = common dso_local global i32 0, align 4
@W_MAX_I2CRETRY = common dso_local global i64 0, align 8
@MAC_REG_I2MTGID = common dso_local global i64 0, align 8
@EEP_I2C_DEV_ID = common dso_local global i32 0, align 4
@MAC_REG_I2MTGAD = common dso_local global i64 0, align 8
@MAC_REG_I2MCSR = common dso_local global i64 0, align 8
@I2MCSR_EEMR = common dso_local global i32 0, align 4
@W_MAX_TIMEOUT = common dso_local global i64 0, align 8
@I2MCSR_DONE = common dso_local global i32 0, align 4
@I2MCSR_NACK = common dso_local global i32 0, align 4
@CB_DELAY_LOOP_WAIT = common dso_local global i32 0, align 4
@MAC_REG_I2MDIPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SROMbyReadEmbedded(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 255, i32* %8, align 4
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MAC_REG_I2MCFG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @VNSvInPortB(i64 %12, i32* %9)
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @MAC_REG_I2MCFG, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @I2MCFG_NORETRY, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call i32 @VNSvOutPortB(i64 %16, i32 %20)
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %75, %2
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @W_MAX_I2CRETRY, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @MAC_REG_I2MTGID, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @EEP_I2C_DEV_ID, align 4
  %31 = call i32 @VNSvOutPortB(i64 %29, i32 %30)
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @MAC_REG_I2MTGAD, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @VNSvOutPortB(i64 %34, i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @MAC_REG_I2MCSR, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @I2MCSR_EEMR, align 4
  %41 = call i32 @VNSvOutPortB(i64 %39, i32 %40)
  store i64 0, i64* %5, align 8
  br label %42

42:                                               ; preds = %61, %26
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @W_MAX_TIMEOUT, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @MAC_REG_I2MCSR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @VNSvInPortB(i64 %49, i32* %7)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @I2MCSR_DONE, align 4
  %53 = load i32, i32* @I2MCSR_NACK, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %64

58:                                               ; preds = %46
  %59 = load i32, i32* @CB_DELAY_LOOP_WAIT, align 4
  %60 = call i32 @PCAvDelayByIO(i32 %59)
  br label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %42

64:                                               ; preds = %57, %42
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @W_MAX_TIMEOUT, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @I2MCSR_NACK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %78

74:                                               ; preds = %68, %64
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %6, align 8
  br label %22

78:                                               ; preds = %73, %22
  %79 = load i64, i64* %3, align 8
  %80 = load i64, i64* @MAC_REG_I2MDIPT, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @VNSvInPortB(i64 %81, i32* %8)
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* @MAC_REG_I2MCFG, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @VNSvOutPortB(i64 %85, i32 %86)
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @VNSvInPortB(i64, i32*) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @PCAvDelayByIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
