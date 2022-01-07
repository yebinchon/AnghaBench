; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_srom.c_SROMbWriteEmbedded.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_srom.c_SROMbWriteEmbedded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_REG_I2MCFG = common dso_local global i64 0, align 8
@I2MCFG_NORETRY = common dso_local global i32 0, align 4
@W_MAX_I2CRETRY = common dso_local global i64 0, align 8
@MAC_REG_I2MTGID = common dso_local global i64 0, align 8
@EEP_I2C_DEV_ID = common dso_local global i32 0, align 4
@MAC_REG_I2MTGAD = common dso_local global i64 0, align 8
@MAC_REG_I2MDOPT = common dso_local global i64 0, align 8
@MAC_REG_I2MCSR = common dso_local global i64 0, align 8
@I2MCSR_EEMW = common dso_local global i32 0, align 4
@W_MAX_TIMEOUT = common dso_local global i64 0, align 8
@I2MCSR_DONE = common dso_local global i32 0, align 4
@I2MCSR_NACK = common dso_local global i32 0, align 4
@CB_DELAY_LOOP_WAIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SROMbWriteEmbedded(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MAC_REG_I2MCFG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @VNSvInPortB(i64 %14, i32* %11)
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @MAC_REG_I2MCFG, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @I2MCFG_NORETRY, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @VNSvOutPortB(i64 %18, i32 %22)
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %82, %3
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @W_MAX_I2CRETRY, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @MAC_REG_I2MTGID, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @EEP_I2C_DEV_ID, align 4
  %33 = call i32 @VNSvOutPortB(i64 %31, i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @MAC_REG_I2MTGAD, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @VNSvOutPortB(i64 %36, i32 %37)
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @MAC_REG_I2MDOPT, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @VNSvOutPortB(i64 %41, i32 %42)
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @MAC_REG_I2MCSR, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* @I2MCSR_EEMW, align 4
  %48 = call i32 @VNSvOutPortB(i64 %46, i32 %47)
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %68, %28
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @W_MAX_TIMEOUT, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @MAC_REG_I2MCSR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @VNSvInPortB(i64 %56, i32* %10)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @I2MCSR_DONE, align 4
  %60 = load i32, i32* @I2MCSR_NACK, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %71

65:                                               ; preds = %53
  %66 = load i32, i32* @CB_DELAY_LOOP_WAIT, align 4
  %67 = call i32 @PCAvDelayByIO(i32 %66)
  br label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %49

71:                                               ; preds = %64, %49
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @W_MAX_TIMEOUT, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @I2MCSR_NACK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %85

81:                                               ; preds = %75, %71
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %9, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %24

85:                                               ; preds = %80, %24
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @W_MAX_I2CRETRY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @MAC_REG_I2MCFG, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @VNSvOutPortB(i64 %92, i32 %93)
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %4, align 4
  br label %103

96:                                               ; preds = %85
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* @MAC_REG_I2MCFG, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @VNSvOutPortB(i64 %99, i32 %100)
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %96, %89
  %104 = load i32, i32* %4, align 4
  ret i32 %104
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
