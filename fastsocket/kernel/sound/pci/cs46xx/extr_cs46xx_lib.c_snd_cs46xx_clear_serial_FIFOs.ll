; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_clear_serial_FIFOs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_clear_serial_FIFOs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }

@BA0_CLKCR1 = common dso_local global i32 0, align 4
@CLKCR1_SWCE = common dso_local global i32 0, align 4
@BA0_SERBWP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed waiting for FIFO at addr (%02X)\0A\00", align 1
@BA0_SERBAD = common dso_local global i32 0, align 4
@BA0_SERBCM = common dso_local global i32 0, align 4
@SERBCM_WRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*)* @snd_cs46xx_clear_serial_FIFOs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_clear_serial_FIFOs(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.snd_cs46xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %7 = load i32, i32* @BA0_CLKCR1, align 4
  %8 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CLKCR1_SWCE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %15 = load i32, i32* @BA0_CLKCR1, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CLKCR1_SWCE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %14, i32 %15, i32 %18)
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %22 = load i32, i32* @BA0_SERBWP, align 4
  %23 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %21, i32 %22, i32 0)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %51, %20
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 255
  br i1 %26, label %27, label %54

27:                                               ; preds = %24
  %28 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %29 = call i64 @cs46xx_wait_for_fifo(%struct.snd_cs46xx* %28, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @snd_printdd(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %38 = load i32, i32* @BA0_CLKCR1, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %54

42:                                               ; preds = %27
  %43 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %44 = load i32, i32* @BA0_SERBAD, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %43, i32 %44, i32 %45)
  %47 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %48 = load i32, i32* @BA0_SERBCM, align 4
  %49 = load i32, i32* @SERBCM_WRC, align 4
  %50 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %24

54:                                               ; preds = %41, %24
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %59 = load i32, i32* @BA0_CLKCR1, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  ret void
}

declare dso_local i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i64 @cs46xx_wait_for_fifo(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
