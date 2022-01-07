; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_int_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_int_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, %struct.azx_dev* }
%struct.azx_dev = type { i32 }

@SD_CTL = common dso_local global i32 0, align 4
@SD_INT_MASK = common dso_local global i32 0, align 4
@INTCTL = common dso_local global i32 0, align 4
@ICH6_INT_CTRL_EN = common dso_local global i32 0, align 4
@ICH6_INT_GLOBAL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*)* @azx_int_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @azx_int_disable(%struct.azx* %0) #0 {
  %2 = alloca %struct.azx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx_dev*, align 8
  store %struct.azx* %0, %struct.azx** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.azx*, %struct.azx** %2, align 8
  %8 = getelementptr inbounds %struct.azx, %struct.azx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = load %struct.azx*, %struct.azx** %2, align 8
  %13 = getelementptr inbounds %struct.azx, %struct.azx* %12, i32 0, i32 1
  %14 = load %struct.azx_dev*, %struct.azx_dev** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %14, i64 %16
  store %struct.azx_dev* %17, %struct.azx_dev** %4, align 8
  %18 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %19 = load i32, i32* @SD_CTL, align 4
  %20 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %21 = load i32, i32* @SD_CTL, align 4
  %22 = call i32 @azx_sd_readb(%struct.azx_dev* %20, i32 %21)
  %23 = load i32, i32* @SD_INT_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @azx_sd_writeb(%struct.azx_dev* %18, i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5

30:                                               ; preds = %5
  %31 = load %struct.azx*, %struct.azx** %2, align 8
  %32 = load i32, i32* @INTCTL, align 4
  %33 = call i32 @azx_writeb(%struct.azx* %31, i32 %32, i32 0)
  %34 = load %struct.azx*, %struct.azx** %2, align 8
  %35 = load i32, i32* @INTCTL, align 4
  %36 = load %struct.azx*, %struct.azx** %2, align 8
  %37 = load i32, i32* @INTCTL, align 4
  %38 = call i32 @azx_readl(%struct.azx* %36, i32 %37)
  %39 = load i32, i32* @ICH6_INT_CTRL_EN, align 4
  %40 = load i32, i32* @ICH6_INT_GLOBAL_EN, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = call i32 @azx_writel(%struct.azx* %34, i32 %35, i32 %43)
  ret void
}

declare dso_local i32 @azx_sd_writeb(%struct.azx_dev*, i32, i32) #1

declare dso_local i32 @azx_sd_readb(%struct.azx_dev*, i32) #1

declare dso_local i32 @azx_writeb(%struct.azx*, i32, i32) #1

declare dso_local i32 @azx_writel(%struct.azx*, i32, i32) #1

declare dso_local i32 @azx_readl(%struct.azx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
