; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }

@BA1_SPCR = common dso_local global i32 0, align 4
@SPCR_RSTSP = common dso_local global i32 0, align 4
@SPCR_DRQEN = common dso_local global i32 0, align 4
@BA1_DREG = common dso_local global i32 0, align 4
@DREG_REGID_TRAP_SELECT = common dso_local global i32 0, align 4
@BA1_TWPR = common dso_local global i32 0, align 4
@BA1_FRMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*)* @snd_cs46xx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_reset(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.snd_cs46xx*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %2, align 8
  %4 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %5 = load i32, i32* @BA1_SPCR, align 4
  %6 = load i32, i32* @SPCR_RSTSP, align 4
  %7 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %4, i32 %5, i32 %6)
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %9 = load i32, i32* @BA1_SPCR, align 4
  %10 = load i32, i32* @SPCR_DRQEN, align 4
  %11 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %8, i32 %9, i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %17 = load i32, i32* @BA1_DREG, align 4
  %18 = load i32, i32* @DREG_REGID_TRAP_SELECT, align 4
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %16, i32 %17, i32 %20)
  %22 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %23 = load i32, i32* @BA1_TWPR, align 4
  %24 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %22, i32 %23, i32 65535)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %30 = load i32, i32* @BA1_DREG, align 4
  %31 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %29, i32 %30, i32 0)
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %33 = load i32, i32* @BA1_FRMT, align 4
  %34 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %32, i32 %33, i32 2783)
  ret void
}

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
