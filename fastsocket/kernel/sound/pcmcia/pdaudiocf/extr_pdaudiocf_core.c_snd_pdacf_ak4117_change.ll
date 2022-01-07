; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_snd_pdacf_ak4117_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_snd_pdacf_ak4117_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4117 = type { i8, %struct.snd_pdacf* }
%struct.snd_pdacf = type { i32, i32* }

@AK4117_UNLCK = common dso_local global i8 0, align 1
@PDAUDIOCF_REG_SCR = common dso_local global i32 0, align 4
@PDAUDIOCF_BLUE_LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4117*, i8, i8)* @snd_pdacf_ak4117_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pdacf_ak4117_change(%struct.ak4117* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.ak4117*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.snd_pdacf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ak4117* %0, %struct.ak4117** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %10 = load %struct.ak4117*, %struct.ak4117** %4, align 8
  %11 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %10, i32 0, i32 1
  %12 = load %struct.snd_pdacf*, %struct.snd_pdacf** %11, align 8
  store %struct.snd_pdacf* %12, %struct.snd_pdacf** %7, align 8
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @AK4117_UNLCK, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.snd_pdacf*, %struct.snd_pdacf** %7, align 8
  %22 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.snd_pdacf*, %struct.snd_pdacf** %7, align 8
  %26 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %29 = ashr i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ak4117*, %struct.ak4117** %4, align 8
  %34 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @AK4117_UNLCK, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = load i32, i32* @PDAUDIOCF_BLUE_LED_OFF, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %50

45:                                               ; preds = %20
  %46 = load i32, i32* @PDAUDIOCF_BLUE_LED_OFF, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load %struct.snd_pdacf*, %struct.snd_pdacf** %7, align 8
  %52 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %51, i32 %52, i32 %53)
  %55 = load %struct.snd_pdacf*, %struct.snd_pdacf** %7, align 8
  %56 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %55, i32 0, i32 0
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %50, %19
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pdacf_reg_write(%struct.snd_pdacf*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
